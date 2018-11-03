-- phpMyAdmin SQL Dump
-- version 3.5.8.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 18, 2016 at 01:02 AM
-- Server version: 5.5.31
-- PHP Version: 5.3.29

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `demo109_ntl`
--

-- --------------------------------------------------------

--
-- Table structure for table `counter`
--

CREATE TABLE IF NOT EXISTS `counter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tm` int(11) NOT NULL,
  `ip` varchar(16) COLLATE latin1_general_ci NOT NULL DEFAULT '0.0.0.0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=48 ;

--
-- Dumping data for table `counter`
--

INSERT INTO `counter` (`id`, `tm`, `ip`) VALUES
(1, 1471232249, '::1'),
(2, 1471234013, '::1'),
(3, 1471234928, '::1'),
(4, 1471235836, '::1'),
(5, 1471236923, '::1'),
(6, 1471242673, '::1'),
(7, 1471243587, '::1'),
(8, 1471245271, '::1'),
(9, 1471246173, '::1'),
(10, 1471247460, '::1'),
(11, 1471248398, '::1'),
(12, 1471249345, '::1'),
(13, 1471250369, '::1'),
(14, 1471251377, '::1'),
(15, 1471252709, '::1'),
(16, 1471253728, '::1'),
(17, 1471254674, '::1'),
(18, 1471309931, '::1'),
(19, 1471310836, '::1'),
(20, 1471311977, '::1'),
(21, 1471312886, '::1'),
(22, 1471314327, '::1'),
(23, 1471315231, '::1'),
(24, 1471316261, '::1'),
(25, 1471317184, '::1'),
(26, 1471318260, '::1'),
(27, 1471319201, '::1'),
(28, 1471320524, '::1'),
(29, 1471321457, '::1'),
(30, 1471322372, '::1'),
(31, 1471323308, '::1'),
(32, 1471329362, '::1'),
(33, 1471330322, '::1'),
(34, 1471331222, '::1'),
(35, 1471331596, '14.161.46.214'),
(36, 1471331832, '173.252.74.121'),
(37, 1471331846, '173.252.74.123'),
(38, 1471333925, '14.161.46.214'),
(39, 1471336145, '14.161.46.214'),
(40, 1471354704, '116.102.159.127'),
(41, 1471355119, '120.138.68.219'),
(42, 1471357150, '42.112.228.135'),
(43, 1471358071, '42.112.228.135'),
(44, 1471358093, '116.102.159.127'),
(45, 1471384929, '27.75.216.192'),
(46, 1471423944, '103.199.32.133'),
(47, 1471479295, '14.161.46.214');

-- --------------------------------------------------------

--
-- Table structure for table `table_album`
--

CREATE TABLE IF NOT EXISTS `table_album` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_list` int(11) NOT NULL,
  `noibat` int(11) NOT NULL,
  `top_nb` tinyint(2) NOT NULL,
  `type` varchar(100) NOT NULL,
  `photo` varchar(225) NOT NULL,
  `thumb` varchar(225) NOT NULL,
  `ten_vi` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tenkhongdau` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `keywords` varchar(1024) NOT NULL,
  `description` varchar(1024) NOT NULL,
  `mota_vi` text NOT NULL,
  `noidung_vi` text NOT NULL,
  `ten_en` varchar(255) NOT NULL,
  `mota_en` text NOT NULL,
  `noidung_en` text NOT NULL,
  `stt` int(10) unsigned NOT NULL DEFAULT '1',
  `hienthi` tinyint(1) NOT NULL DEFAULT '1',
  `ngaytao` int(11) NOT NULL,
  `ngaysua` int(11) NOT NULL,
  `luotxem` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `table_album`
--

INSERT INTO `table_album` (`id`, `id_list`, `noibat`, `top_nb`, `type`, `photo`, `thumb`, `ten_vi`, `tenkhongdau`, `title`, `keywords`, `description`, `mota_vi`, `noidung_vi`, `ten_en`, `mota_en`, `noidung_en`, `stt`, `hienthi`, `ngaytao`, `ngaysua`, `luotxem`) VALUES
(1, 0, 1, 0, 'album', 'h4-4533.png', 'h4-4533_297x327.png', 'Phòng hội nghị', 'phong-hoi-nghi', '', '', '', '', '', '', '', '', 4, 1, 1471244320, 0, 0),
(2, 0, 1, 0, 'album', 'h3-4155.png', 'h3-4155_297x327.png', 'Sảnh tiệc', 'sanh-tiec', '', '', '', '', '', '', '', '', 3, 1, 1471244331, 0, 0),
(3, 0, 1, 0, 'album', 'h2-2786.png', 'h2-2786_297x327.png', 'Khu vực lễ tân', 'khu-vuc-le-tan', '', '', '', '', '', '', '', '', 2, 1, 1471244345, 0, 0),
(4, 0, 1, 0, 'album', 'h1-6361.png', 'h1-6361_297x327.png', 'Ngoại cảnh', 'ngoai-canh', '', '', '', '', '', '', '', '', 1, 1, 1471244360, 1471323232, 0);

-- --------------------------------------------------------

--
-- Table structure for table `table_albumphongngu`
--

CREATE TABLE IF NOT EXISTS `table_albumphongngu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_list` int(11) NOT NULL,
  `noibat` int(11) NOT NULL,
  `top_nb` tinyint(2) NOT NULL,
  `type` varchar(100) NOT NULL,
  `photo` varchar(225) NOT NULL,
  `thumb` varchar(225) NOT NULL,
  `ten_vi` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tenkhongdau` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `keywords` varchar(1024) NOT NULL,
  `description` varchar(1024) NOT NULL,
  `mota_vi` text NOT NULL,
  `noidung_vi` text NOT NULL,
  `ten_en` varchar(255) NOT NULL,
  `mota_en` text NOT NULL,
  `noidung_en` text NOT NULL,
  `stt` int(10) unsigned NOT NULL DEFAULT '1',
  `hienthi` tinyint(1) NOT NULL DEFAULT '1',
  `ngaytao` int(11) NOT NULL,
  `ngaysua` int(11) NOT NULL,
  `luotxem` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `table_albumphongngu_photo`
--

CREATE TABLE IF NOT EXISTS `table_albumphongngu_photo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_album` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `photo` varchar(225) NOT NULL,
  `thumb` varchar(225) NOT NULL,
  `ten` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mota` varchar(1024) NOT NULL,
  `stt` int(10) unsigned NOT NULL DEFAULT '1',
  `hienthi` tinyint(1) NOT NULL DEFAULT '1',
  `ngaytao` int(11) NOT NULL,
  `ngaysua` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `table_albumproduct`
--

CREATE TABLE IF NOT EXISTS `table_albumproduct` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_list` int(11) NOT NULL,
  `noibat` int(11) NOT NULL,
  `top_nb` tinyint(2) NOT NULL,
  `type` varchar(100) NOT NULL,
  `photo` varchar(225) NOT NULL,
  `thumb` varchar(225) NOT NULL,
  `ten_vi` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tenkhongdau` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `keywords` varchar(1024) NOT NULL,
  `description` varchar(1024) NOT NULL,
  `mota_vi` text NOT NULL,
  `noidung_vi` text NOT NULL,
  `ten_en` varchar(255) NOT NULL,
  `mota_en` text NOT NULL,
  `noidung_en` text NOT NULL,
  `stt` int(10) unsigned NOT NULL DEFAULT '1',
  `hienthi` tinyint(1) NOT NULL DEFAULT '1',
  `ngaytao` int(11) NOT NULL,
  `ngaysua` int(11) NOT NULL,
  `luotxem` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `table_albumproduct_photo`
--

CREATE TABLE IF NOT EXISTS `table_albumproduct_photo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_album` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `photo` varchar(225) NOT NULL,
  `thumb` varchar(225) NOT NULL,
  `ten` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mota` varchar(1024) NOT NULL,
  `stt` int(10) unsigned NOT NULL DEFAULT '1',
  `hienthi` tinyint(1) NOT NULL DEFAULT '1',
  `ngaytao` int(11) NOT NULL,
  `ngaysua` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `table_album_list`
--

CREATE TABLE IF NOT EXISTS `table_album_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) NOT NULL,
  `ten_vi` varchar(255) NOT NULL,
  `ten_en` varchar(255) NOT NULL,
  `name_vi` varchar(255) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `tenkhongdau` varchar(255) NOT NULL,
  `quangcao` varchar(255) NOT NULL,
  `quangcao_thumb` varchar(255) NOT NULL,
  `links` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `keywords` varchar(225) NOT NULL,
  `description` varchar(225) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `stt` int(11) NOT NULL,
  `hienthi` int(11) NOT NULL,
  `ngaytao` int(11) NOT NULL,
  `ngaysua` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `table_album_photo`
--

CREATE TABLE IF NOT EXISTS `table_album_photo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_album` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `photo` varchar(225) NOT NULL,
  `thumb` varchar(225) NOT NULL,
  `ten` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mota` varchar(1024) NOT NULL,
  `stt` int(10) unsigned NOT NULL DEFAULT '1',
  `hienthi` tinyint(1) NOT NULL DEFAULT '1',
  `ngaytao` int(11) NOT NULL,
  `ngaysua` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `table_album_photo`
--

INSERT INTO `table_album_photo` (`id`, `id_album`, `type`, `photo`, `thumb`, `ten`, `mota`, `stt`, `hienthi`, `ngaytao`, `ngaysua`) VALUES
(1, 4, 'album', '6-8940.jpg', '6-8940_297x198.1125.jpg', '', '', 0, 1, 0, 0),
(2, 4, 'album', '7-6269.jpg', '7-6269_297x198.099.jpg', '', '', 0, 1, 0, 0),
(3, 4, 'album', '8-9749.jpg', '8-9749_297x197.92265625.jpg', '', '', 0, 1, 0, 0),
(4, 4, 'album', '9-7364.jpg', '9-7364_297x297.jpg', '', '', 0, 1, 0, 0),
(5, 4, 'album', '10-5734.jpg', '10-5734_297x198.099.jpg', '', '', 0, 1, 0, 0),
(6, 4, 'album', '11-4590.jpg', '11-4590_297x198.1546875.jpg', '', '', 0, 1, 0, 0),
(7, 4, 'album', '12-2162.jpg', '12-2162_297x198.jpg', '', '', 0, 1, 0, 0),
(8, 4, 'album', '13-2748.jpg', '13-2748_297x198.jpg', '', '', 0, 1, 0, 0),
(9, 4, 'album', '14-2742.jpg', '14-2742_297x198.099.jpg', '', '', 0, 1, 0, 0),
(10, 4, 'album', '15-6326.jpg', '15-6326_297x198.099.jpg', '', '', 0, 1, 0, 0),
(11, 4, 'album', '16-7122.jpg', '16-7122_297x198.099.jpg', '', '', 0, 1, 0, 0),
(12, 4, 'album', '17-7010.jpg', '17-7010_297x197.01.jpg', '', '', 0, 1, 0, 0),
(13, 4, 'album', '18-8395.jpg', '18-8395_297x198.099.jpg', '', '', 0, 1, 0, 0),
(14, 4, 'album', '19-1173.jpg', '19-1173_297x198.099.jpg', '', '', 0, 1, 0, 0),
(15, 4, 'album', '20-589.jpg', '20-589_218x327.jpg', '', '', 0, 1, 0, 0),
(16, 4, 'album', '21-7350.jpg', '21-7350_297x297.jpg', '', '', 0, 1, 0, 0),
(17, 4, 'album', '22-6145.png', '22-6145_297x297.png', '', '', 0, 1, 0, 0),
(18, 4, 'album', '23-3806.jpg', '23-3806_297x237.6.jpg', '', '', 0, 1, 0, 0),
(19, 4, 'album', '6-1085.jpg', '6-1085_297x198.1125.jpg', '', '', 0, 1, 0, 0),
(20, 4, 'album', '7-9873.jpg', '7-9873_297x198.099.jpg', '', '', 0, 1, 0, 0),
(21, 4, 'album', '8-1065.jpg', '8-1065_297x197.92265625.jpg', '', '', 0, 1, 0, 0),
(22, 4, 'album', '9-5494.jpg', '9-5494_297x297.jpg', '', '', 0, 1, 0, 0),
(23, 4, 'album', '10-4884.jpg', '10-4884_297x198.099.jpg', '', '', 0, 1, 0, 0),
(24, 4, 'album', '11-2477.jpg', '11-2477_297x198.1546875.jpg', '', '', 0, 1, 0, 0),
(25, 4, 'album', '12-9693.jpg', '12-9693_297x198.jpg', '', '', 0, 1, 0, 0),
(26, 4, 'album', '13-9991.jpg', '13-9991_297x198.jpg', '', '', 0, 1, 0, 0),
(27, 4, 'album', '14-6087.jpg', '14-6087_297x198.099.jpg', '', '', 0, 1, 0, 0),
(28, 4, 'album', '15-1929.jpg', '15-1929_297x198.099.jpg', '', '', 0, 1, 0, 0),
(29, 4, 'album', '16-5579.jpg', '16-5579_297x198.099.jpg', '', '', 0, 1, 0, 0),
(30, 4, 'album', '17-4321.jpg', '17-4321_297x197.01.jpg', '', '', 0, 1, 0, 0),
(31, 4, 'album', '18-8130.jpg', '18-8130_297x198.099.jpg', '', '', 0, 1, 0, 0),
(32, 4, 'album', '19-2923.jpg', '19-2923_297x198.099.jpg', '', '', 0, 1, 0, 0),
(33, 4, 'album', '20-9642.jpg', '20-9642_218x327.jpg', '', '', 0, 1, 0, 0),
(34, 4, 'album', '21-662.jpg', '21-662_297x297.jpg', '', '', 0, 1, 0, 0),
(35, 4, 'album', '22-9451.png', '22-9451_297x297.png', '', '', 0, 1, 0, 0),
(36, 4, 'album', '23-5146.jpg', '23-5146_297x237.6.jpg', '', '', 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `table_baiviet`
--

CREATE TABLE IF NOT EXISTS `table_baiviet` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cat` int(11) NOT NULL,
  `id_list` int(11) NOT NULL,
  `id_item` int(11) NOT NULL,
  `id_sub` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `noibat` int(11) NOT NULL,
  `banchay` int(11) NOT NULL,
  `photo` varchar(225) NOT NULL,
  `thumb` varchar(225) NOT NULL,
  `ten_vi` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `masp` varchar(255) NOT NULL,
  `tenkhongdau` varchar(255) NOT NULL,
  `khuyenmai_vi` text NOT NULL,
  `khuyenmai_en` text NOT NULL,
  `thongtin_vi` text NOT NULL,
  `thongtin_en` text NOT NULL,
  `baohanh_vi` varchar(255) NOT NULL,
  `baohanh_en` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `keywords` varchar(1024) NOT NULL,
  `description` varchar(1024) NOT NULL,
  `des_char` int(11) NOT NULL,
  `is_noindex` int(11) NOT NULL,
  `giaban` int(11) NOT NULL,
  `giacu` int(11) NOT NULL,
  `mota_vi` text NOT NULL,
  `noidung_vi` text NOT NULL,
  `name_vi` varchar(255) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `ten_en` varchar(255) NOT NULL,
  `mota_en` text NOT NULL,
  `noidung_en` text NOT NULL,
  `stt` int(10) unsigned NOT NULL DEFAULT '1',
  `hienthi` tinyint(1) NOT NULL DEFAULT '1',
  `ngaytao` int(11) NOT NULL,
  `ngaysua` int(11) NOT NULL,
  `luotxem` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `table_baiviet`
--

INSERT INTO `table_baiviet` (`id`, `id_cat`, `id_list`, `id_item`, `id_sub`, `type`, `noibat`, `banchay`, `photo`, `thumb`, `ten_vi`, `masp`, `tenkhongdau`, `khuyenmai_vi`, `khuyenmai_en`, `thongtin_vi`, `thongtin_en`, `baohanh_vi`, `baohanh_en`, `title`, `keywords`, `description`, `des_char`, `is_noindex`, `giaban`, `giacu`, `mota_vi`, `noidung_vi`, `name_vi`, `name_en`, `ten_en`, `mota_en`, `noidung_en`, `stt`, `hienthi`, `ngaytao`, `ngaysua`, `luotxem`) VALUES
(1, 0, 0, 0, 0, 'tintuc', 1, 0, '', '', '15 mẫu lọ thủy tinh đẹp mê mẩn mà có giá không quá 150 nghìn đồng', '', '15-mau-lo-thuy-tinh-dep-me-man-ma-co-gia-khong-qua-150-nghin-dong', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 'Trên thị trường hiện nay có rất nhiều những mẫu lọ/ hũ, thố đựng hoa quả, bánh kẹo bằng các chất liệu khác nhau như gốm, sứ tráng men, nhựa cao cấp, gỗ tự nhiên,… Trong vô vàn lựa chọn đó, chất liệu thủy tinh ngày càng được chị em ưa chuộng hơn cả. Với thiết kế đẹp mắt, sang trọng, toát lên sự quý phái, lọ thủy tinh thật sự ghi điểm cho phòng khách hay bàn tiệc của gia đình bạn. ', '<div style="margin: 0px; padding: 0px; font-family: &quot;Times New Roman&quot;; font-size: 16px; line-height: 20px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);"><span style="margin: 0px; padding: 0px; text-align: justify;">Những sản phẩm với kiểu dáng phong phú này được làm từ thủy tinh trong suốt, các mặt cắt và đường nét được mài dũa sắc sảo, dưới ánh mặt trời hay ánh sáng đèn điện trong phòng càng trở nên óng ánh như pha lê. Chúng góp phần giúp cho món ăn cần được trưng bày cũng trở nên hấp dẫn và “ngon mắt” hơn rất nhiều.</span></div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: &quot;Times New Roman&quot;; font-size: 16px; line-height: 20px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);">\r\n<div style="margin: 0px; padding: 0px; text-align: justify;"><br style="margin: 0px; padding: 0px;" />\r\nDưới đây là 15 mẫu sưu tập <span style="margin: 0px; padding: 0px; font-weight: bold;">lọ thủy tinh</span> tuyệt đẹp, mời bạn cùng chúng tôi tham khảo nhé!</div>\r\n\r\n<div style="margin: 0px; padding: 0px; text-align: center;">\r\n<div style="margin: 0px; padding: 0px;"> </div>\r\n\r\n<div style="margin: 0px; padding: 0px;"><img alt="" src="http://afamily1.vcmedia.vn/M8N20d5STCm5E9QXKSmE0TPi2bNc59/Image/2016/01/15-thiet-ke-lo-tho-dung-thuy-tinh-trong-suot-cho-ban-tiec-them-lap-lanh_954af0a8e6.jpg" style="margin: 0px; padding: 0px; border: none; outline: none; -webkit-appearance: none; max-width: 100%; cursor: none;" /></div>\r\n\r\n<div style="margin: 0px; padding: 0px;"> </div>\r\n\r\n<div style="margin: 0px; padding: 0px;"><img alt="" src="http://afamily1.vcmedia.vn/M8N20d5STCm5E9QXKSmE0TPi2bNc59/Image/2016/01/15-thiet-ke-lo-tho-dung-thuy-tinh-trong-suot-cho-ban-tiec-them-lap-lanh_131936457b.jpg" style="margin: 0px; padding: 0px; border: none; outline: none; -webkit-appearance: none; max-width: 100%;" /></div>\r\n\r\n<div style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; font-style: italic;">Mẫu hũ thấp có nắp đậy như chiếc vương miện sang trọng, sắc sảo, kích thước 6.5 x 12.5 cm, đường kính miệng thố 10.5 cm, giá thành khoảng 60.000 đồng/ chiếc.</span></div>\r\n\r\n<div style="margin: 0px; padding: 0px;"> </div>\r\n\r\n<div style="margin: 0px; padding: 0px;"><img alt="" src="http://afamily1.vcmedia.vn/M8N20d5STCm5E9QXKSmE0TPi2bNc59/Image/2016/01/15-thiet-ke-lo-tho-dung-thuy-tinh-trong-suot-cho-ban-tiec-them-lap-lanh_bc4bbdbee5.jpg" style="margin: 0px; padding: 0px; border: none; outline: none; -webkit-appearance: none; max-width: 100%;" /></div>\r\n\r\n<div style="margin: 0px; padding: 0px;"> </div>\r\n\r\n<div style="margin: 0px; padding: 0px;"><img alt="" src="http://afamily1.vcmedia.vn/M8N20d5STCm5E9QXKSmE0TPi2bNc59/Image/2016/01/15-thiet-ke-lo-tho-dung-thuy-tinh-trong-suot-cho-ban-tiec-them-lap-lanh_d88a4f5746.jpg" style="margin: 0px; padding: 0px; border: none; outline: none; -webkit-appearance: none; max-width: 100%;" /></div>\r\n\r\n<div style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; font-style: italic;">Hai mẫu <span style="margin: 0px; padding: 0px; font-weight: bold;">lọ thủy tinh</span> dáng cao dựa theo hình ảnh tòa lâu đài lộng lẫy nguy nga, kích thước 24 x 18 cm và 25.5 x 11.5 cm, giá thành 100.000 - 120.000 đồng/ chiếc.</span></div>\r\n\r\n<div style="margin: 0px; padding: 0px;"> </div>\r\n\r\n<div style="margin: 0px; padding: 0px;"><img alt="" src="http://afamily1.vcmedia.vn/M8N20d5STCm5E9QXKSmE0TPi2bNc59/Image/2016/01/15-thiet-ke-lo-tho-dung-thuy-tinh-trong-suot-cho-ban-tiec-them-lap-lanh_f4b9b6031d.jpg" style="margin: 0px; padding: 0px; border: none; outline: none; -webkit-appearance: none; max-width: 100%;" /></div>\r\n\r\n<div style="margin: 0px; padding: 0px;">\r\n<div style="margin: 0px; padding: 0px;"> </div>\r\n\r\n<div style="margin: 0px; padding: 0px;"><img alt="" src="http://afamily1.vcmedia.vn/M8N20d5STCm5E9QXKSmE0TPi2bNc59/Image/2016/01/15-thiet-ke-lo-tho-dung-thuy-tinh-trong-suot-cho-ban-tiec-them-lap-lanh_ea21742363.jpg" style="margin: 0px; padding: 0px; border: none; outline: none; -webkit-appearance: none; max-width: 100%;" /></div>\r\n\r\n<div style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; font-style: italic;">Bộ sản phẩm gồm 3 thiết kế phù hợp từng nhu cầu sử dụng, có thể đính kèm dây ruy băng để thêm phần điệu đà, giá thành khoảng 150.000 đồng/ bộ.</span></div>\r\n</div>\r\n\r\n<div style="margin: 0px; padding: 0px;"> </div>\r\n\r\n<div style="margin: 0px; padding: 0px;"><img alt="" src="http://afamily1.vcmedia.vn/M8N20d5STCm5E9QXKSmE0TPi2bNc59/Image/2016/01/15-thiet-ke-lo-tho-dung-thuy-tinh-trong-suot-cho-ban-tiec-them-lap-lanh_034f078128.jpg" style="margin: 0px; padding: 0px; border: none; outline: none; -webkit-appearance: none; max-width: 100%;" /></div>\r\n\r\n<div style="margin: 0px; padding: 0px;"> </div>\r\n\r\n<div style="margin: 0px; padding: 0px;"><img alt="" src="http://afamily1.vcmedia.vn/M8N20d5STCm5E9QXKSmE0TPi2bNc59/Image/2016/01/15-thiet-ke-lo-tho-dung-thuy-tinh-trong-suot-cho-ban-tiec-them-lap-lanh_b49aa8f2c2.jpg" style="margin: 0px; padding: 0px; border: none; outline: none; -webkit-appearance: none; max-width: 100%;" /></div>\r\n\r\n<div style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; font-style: italic;">Thiết kế dựa theo hình ảnh chiếc lồng chim quen thuộc với hoa văn in chìm trên thân, kích thước 30 x 18.5 cm, giá thành khoảng 130.000 đồng/ chiếc.</span></div>\r\n\r\n<div style="margin: 0px; padding: 0px;"> </div>\r\n\r\n<div style="margin: 0px; padding: 0px;"><img alt="" src="http://afamily1.vcmedia.vn/M8N20d5STCm5E9QXKSmE0TPi2bNc59/Image/2016/01/15-thiet-ke-lo-tho-dung-thuy-tinh-trong-suot-cho-ban-tiec-them-lap-lanh_e01ef14e47.jpg" style="margin: 0px; padding: 0px; border: none; outline: none; -webkit-appearance: none; max-width: 100%;" /></div>\r\n\r\n<div style="margin: 0px; padding: 0px;"> </div>\r\n\r\n<div style="margin: 0px; padding: 0px;"><img alt="" src="http://afamily1.vcmedia.vn/M8N20d5STCm5E9QXKSmE0TPi2bNc59/Image/2016/01/15-thiet-ke-lo-tho-dung-thuy-tinh-trong-suot-cho-ban-tiec-them-lap-lanh_977b79154c.jpg" style="margin: 0px; padding: 0px; border: none; outline: none; -webkit-appearance: none; max-width: 100%;" /></div>\r\n\r\n<div style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; font-style: italic;">Cá chép tượng trưng cho tài lộc, vì thế hy vọng sẽ mang đến may mắn cho gia đình. Sản phẩm có trọng lượng 1.5 kg, giá thành 150.000 đồng/ chiếc.</span></div>\r\n</div>\r\n</div>\r\n', '', '', '', '', '', 1, 1, 1471252315, 0, 0),
(2, 0, 0, 0, 0, 'tintuc', 1, 0, '', '', 'Ngôi nhà có vẻ đẹp an yên với những bức tường phủ đầy cây xanh giữa lòng Sài Gòn ồn ã', '', 'ngoi-nha-co-ve-dep-an-yen-voi-nhung-buc-tuong-phu-day-cay-xanh-giua-long-sai-gon-on-a', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 'Các không gian thiết kế mở cùng bức tường cây xanh lớn xuyên suốt ở tầng 2, 3 khiến ngôi nhà này dẫu hiện đại nhưng vẫn rất mềm mại, an nhiên.', '<div style="margin: 0px; padding: 0px; font-family: &quot;Times New Roman&quot;; font-size: 16px; line-height: 20px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);">Đối với những cư dân thành thị ngày nay, nhất là ở một thành phố nhộn nhịp và náo nhiệt như Sài Gòn thì một <a href="http://afamily.vn/nha-hay/nha-trong-nha-ngoi-nha-dep-tu-cai-nhin-dau-tien-co-3-the-he-cung-chung-song-o-binh-duong-20160706094258530.chn" style="margin: 0px; padding: 0px; text-decoration: none; outline: none; -webkit-appearance: none;" target="_blank" title="ngôi nhà đẹp">ngôi nhà đẹp</a> không phải là một ngôi nhà kín cổng cao tường, đồ dùng càng xịn càng tốt, mà đi đôi với tiện nghi còn là sự thư thái và gắn kết với không gian xanh. Có như thế, ngôi nhà mới tràn đầy năng lượng và sự tươi mới. Và có như thế, nhà mới thực sự là nơi níu được các thành viên gia đình mau chóng trở về sau những buổi làm việc căng thẳng hay những chuyến công tác dài ngày.</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: &quot;Times New Roman&quot;; font-size: 16px; line-height: 20px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);"> </div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: &quot;Times New Roman&quot;; font-size: 16px; line-height: 20px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);">Nam Thong là một ngôi nhà như thế, nhìn bề ngoài, ngôi nhà rộng<span style="margin: 0px; padding: 0px; text-align: right;">130</span><span style="margin: 0px; padding: 0px; text-align: right;">m² này </span>khá đơn giản với thiết kế hiện đại. Có chăng điều khiến người ta dừng mắt ở đây lâu hơn một chút là những khoảng xanh được bố trí rất hài hòa, khiến tổng thể ngôi nhà trông mềm mại hơn hẳn.</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: &quot;Times New Roman&quot;; font-size: 16px; line-height: 20px; text-align: center; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);"> </div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: &quot;Times New Roman&quot;; font-size: 16px; line-height: 20px; text-align: center; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);">\r\n<div style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; font-style: italic;"><img alt="nam thông" h="1200" src="https://afamily1.mediacdn.vn/k:thumb_w/600/L9AscbailKNM6qlDjYJqDI39UnIrac/Image/2016/08/2/1-4a9eb/nam-thong.JPG" style="margin: 0px; padding: 0px; border: none; outline: none; -webkit-appearance: none; max-width: 620px;" title="nam thông" w="800" /></span></div>\r\n<span style="margin: 0px; padding: 0px; font-style: italic;">Không gian tổng thể của ngôi nhà nhìn từ bên ngoài.</span></div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: &quot;Times New Roman&quot;; font-size: 16px; line-height: 20px; text-align: center; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);"> </div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: &quot;Times New Roman&quot;; font-size: 16px; line-height: 20px; text-align: center; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);"><span style="margin: 0px; padding: 0px; font-style: italic;"><img alt="nam thông" h="1200" src="http://afamily1.mediacdn.vn/k:thumb_w/600/L9AscbailKNM6qlDjYJqDI39UnIrac/Image/2016/08/2/4-4a9eb/nam-thong.JPG" style="margin: 0px; padding: 0px; border: none; outline: none; -webkit-appearance: none; max-width: 620px;" title="nam thông" w="800" /><br style="margin: 0px; padding: 0px;" />\r\nKhông gian nhà nhìn từ mặt sau.</span></div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: &quot;Times New Roman&quot;; font-size: 16px; line-height: 20px; text-align: center; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);"> </div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: &quot;Times New Roman&quot;; font-size: 16px; line-height: 20px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);">Điểm đáng chú ý của Nam Thong House là các không gian đều sở hữu những món nội thất hiện đại với cách bài trí thoáng và đều tiếp cận được với khoảng xanh.</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: &quot;Times New Roman&quot;; font-size: 16px; line-height: 20px; text-align: center; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);"> </div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: &quot;Times New Roman&quot;; font-size: 16px; line-height: 20px; text-align: center; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);"><span style="margin: 0px; padding: 0px; font-style: italic;"><img alt="nam thông" h="533" src="http://afamily1.mediacdn.vn/k:thumb_w/600/L9AscbailKNM6qlDjYJqDI39UnIrac/Image/2016/08/2/8-4a9eb/nam-thong.JPG" style="margin: 0px; padding: 0px; border: none; outline: none; -webkit-appearance: none; max-width: 620px;" title="nam thông" w="800" /><br style="margin: 0px; padding: 0px;" />\r\nKhông gian tầng trệt là phòng khách - bếp - khu vực thư giãn của gia đình với hướng nhìn ra mặt thoáng lớn. </span></div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: &quot;Times New Roman&quot;; font-size: 16px; line-height: 20px; text-align: center; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);"> </div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: &quot;Times New Roman&quot;; font-size: 16px; line-height: 20px; text-align: center; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);"><span style="margin: 0px; padding: 0px; font-style: italic;"><img alt="nam thông" h="533" src="http://afamily1.mediacdn.vn/k:thumb_w/600/L9AscbailKNM6qlDjYJqDI39UnIrac/Image/2016/08/2/10-4a9eb/nam-thong.JPG" style="margin: 0px; padding: 0px; border: none; outline: none; -webkit-appearance: none; max-width: 620px;" title="nam thông" w="800" /><br style="margin: 0px; padding: 0px;" />\r\nNgoài ra ở đây còn được bố trí một bộ sofa cỡ lớn để cả nhà ngồi thư giãn trước hoặc sau giờ cơm.</span></div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: &quot;Times New Roman&quot;; font-size: 16px; line-height: 20px; text-align: center; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);"> </div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: &quot;Times New Roman&quot;; font-size: 16px; line-height: 20px; text-align: center; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);"><span style="margin: 0px; padding: 0px; font-style: italic;"><img alt="nam thông" h="533" src="http://afamily1.mediacdn.vn/k:thumb_w/600/L9AscbailKNM6qlDjYJqDI39UnIrac/Image/2016/08/2/11-4a9eb/nam-thong.JPG" style="margin: 0px; padding: 0px; border: none; outline: none; -webkit-appearance: none; max-width: 620px;" title="nam thông" w="800" /></span></div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: &quot;Times New Roman&quot;; font-size: 16px; line-height: 20px; text-align: center; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);"><span style="margin: 0px; padding: 0px; font-style: italic;">Bức tường kính đóng mở linh hoạt giúp chủ nhân ngôi nhà dễ điều chỉnh việc tiếp cận của không gian với trong nhà với thiên nhiên bên ngoài dựa vào các yếu tố thời tiết.</span></div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: &quot;Times New Roman&quot;; font-size: 16px; line-height: 20px; text-align: center; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);">\r\n<div style="margin: 0px; padding: 0px;"> </div>\r\n\r\n<div style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; font-style: italic;"><img alt="nam thông" h="533" src="http://afamily1.mediacdn.vn/k:thumb_w/600/L9AscbailKNM6qlDjYJqDI39UnIrac/Image/2016/08/2/7-4a9eb/nam-thong.JPG" style="margin: 0px; padding: 0px; border: none; outline: none; -webkit-appearance: none; max-width: 620px;" title="nam thông" w="800" /><br style="margin: 0px; padding: 0px;" />\r\nCác khu vực ăn - bếp - nghỉ ngơi trong phòng nằm trong cùng một căn phòng, dù không có tường ngăn nhưng nhờ cách bài trí thông minh mà vẫn rất tách biệt. Tuy nhiên cách lựa chọn nội thất tone sur tone vẫn đảm bảo sự kết nối đẹp mắt cho không gian nơi đây!</span></div>\r\n\r\n<div style="margin: 0px; padding: 0px;"> </div>\r\n\r\n<div style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; font-style: italic;"><img alt="nam thông" h="533" src="http://afamily1.mediacdn.vn/k:thumb_w/600/L9AscbailKNM6qlDjYJqDI39UnIrac/Image/2016/08/2/9-4a9eb/nam-thong.JPG" style="margin: 0px; padding: 0px; border: none; outline: none; -webkit-appearance: none; max-width: 620px;" title="nam thông" w="800" /><br style="margin: 0px; padding: 0px;" />\r\nKhi màn đêm buông xuống, không gian càng trở nên lung linh, hút mắt.</span></div>\r\n</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: &quot;Times New Roman&quot;; font-size: 16px; line-height: 20px; text-align: center; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);"> </div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: &quot;Times New Roman&quot;; font-size: 16px; line-height: 20px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);">Điểm rất đáng nhắc đến trong ngôi nhà này là một "bức tường xanh" được thiết kế xuyên suốt theo chiều dọc ở tầng 2, 3, giúp các không gian chính trong nhà đều được tiếp cận với cây cỏ và màu xanh. Phòng khách là khu vực đáng chú ý nhất trong nhà khi có một mặt lớn được tiếp cận với "bức tường xanh" này. Điều này vừa giúp căn phòng có sự riêng tư nhất định mà vừa có sự kết nối với thiên nhiên.</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: &quot;Times New Roman&quot;; font-size: 16px; line-height: 20px; text-align: center; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);"> \r\n<div style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; font-style: italic;"><img alt="nam thông" h="1200" src="http://afamily1.mediacdn.vn/k:thumb_w/600/L9AscbailKNM6qlDjYJqDI39UnIrac/Image/2016/08/2/21-4a9eb/nam-thong.JPG" style="margin: 0px; padding: 0px; border: none; outline: none; -webkit-appearance: none; max-width: 620px;" title="nam thông" w="800" /><br style="margin: 0px; padding: 0px;" />\r\nBức tường xanh là điểm nhấn nổi bật trong ngôi nhà.</span></div>\r\n</div>\r\n', '', '', '', '', '', 1, 1, 1471252345, 0, 0),
(3, 0, 0, 0, 0, 'tintuc', 1, 0, '1-117.png', '1-117_166x133.png', 'Thang gỗ cũ – vật dụng “quyền năng” trang trí nhà siêu xinh', '', 'thang-go-cu-vat-dung-quyen-nang-trang-tri-nha-sieu-xinh', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 'Nếu nghĩ rằng những chiếc thang gỗ cũ kỹ là đồ bỏ đi thì bạn đã lầm to, bạn không biết rằng mình đang sở hữu món vật dụng trang trí nhà quý giá và quyền năng đến mức nào đâu!', '<div -webkit-text-stroke:="" 0.1px="" font-size:="" line-height:="" new="" style="margin: 0px; padding: 0px; font-family: " times=""><span style="margin: 0px; padding: 0px; text-align: justify;">Một chiếc thang gỗ xù xì cũ kỹ để trong nhà vừa vô dụng mà lại tốn diện tích? Khoan hãy vội kết luận. Những bức ảnh dưới đây là minh chứng cho “quyền năng” của một chiếc thang cũ – vật dụng <span style="margin: 0px; padding: 0px; font-weight: bold;"><a href="http://afamily.vn/trang-tri-nha.htm" style="margin: 0px; padding: 0px; text-decoration: none; outline: none; -webkit-appearance: none;" target="_blank" title="trang trí nhà">trang trí nhà</a> </span>siêu xinh kiêm giá treo đồ cực tiện lợi trong ngôi nhà thân yêu của bạn.</span></div>\r\n\r\n<div -webkit-text-stroke:="" 0.1px="" font-size:="" line-height:="" new="" style="margin: 0px; padding: 0px; font-family: " times="">\r\n<div style="margin: 0px; padding: 0px; text-align: justify;"> </div>\r\n\r\n<div style="margin: 0px; padding: 0px;">\r\n<div style="margin: 0px; padding: 0px; text-align: center;"><img alt="Chiếc thang gỗ kiêm giá kê chậu cây mang lại không gian xanh cho gia đình bạn" src="http://afamily1.vcmedia.vn/M8N20d5STCm5E9QXKSmE0TPi2bNc59/Image/2016/04/thang-go-cu-vat-dung-quyen-nang-trang-tri-nha-sieu-xinh_59bec641d5.jpg" style="margin: 0px; padding: 0px; border: none; outline: none; -webkit-appearance: none; max-width: 100%; cursor: none;" /></div>\r\n\r\n<div style="margin: 0px; padding: 0px; text-align: center;"><span style="margin: 0px; padding: 0px; font-style: italic;">Trong những căn hộ có diện tích khiêm tốn, chiếc <a href="http://afamily.vn/nha-hay/trang-tri-nha-tiet-kiem-nhung-doc-dao-voi-thang-go-bo-di-20150601081228764.chn" style="margin: 0px; padding: 0px; text-decoration: none; outline: none; -webkit-appearance: none;" target="_blank" title="thang gỗ">thang gỗ</a> hoàn toàn có thể trở thành giá kê các chậu cây. Bạn có thể thỏa thích trồng hoa, rau hay cây xanh, vừa mang lại không gian xanh cho ngôi nhà, vừa đem đến thực phẩm sạch tươi ngon cho gia đình.</span></div>\r\n\r\n<div style="margin: 0px; padding: 0px; text-align: center;"> </div>\r\n\r\n<div style="margin: 0px; padding: 0px; text-align: center;"><img alt="" src="http://afamily1.vcmedia.vn/M8N20d5STCm5E9QXKSmE0TPi2bNc59/Image/2016/04/thang-go-cu-vat-dung-quyen-nang-trang-tri-nha-sieu-xinh_40ca148667.jpg" style="margin: 0px; padding: 0px; border: none; outline: none; -webkit-appearance: none; max-width: 100%; cursor: none;" /></div>\r\n\r\n<div style="margin: 0px; padding: 0px; text-align: center;"><span style="margin: 0px; padding: 0px; font-style: italic;">Nếu sáng tạo một chút, bạn có thể biến tấu các bậc thang thành các hộc đựng đồ và thoải mái để sách hay các vật dụng bằng thủy tinh mà chẳng lo rơi vỡ.</span></div>\r\n\r\n<div style="margin: 0px; padding: 0px; text-align: center;"> </div>\r\n\r\n<div style="margin: 0px; padding: 0px; text-align: center;">\r\n<div style="margin: 0px; padding: 0px;"><img alt="trang trí nhà 1" h="1110" src="https://afamily1.mediacdn.vn/k:thumb_w/600/M8N20d5STCm5E9QXKSmE0TPi2bNc59/Image/2016/08/81/1-32f40/trang-tri-nha-1.jpg" style="margin: 0px; padding: 0px; border: none; outline: none; -webkit-appearance: none; max-width: 620px;" title="trang trí nhà 1" w="850" /></div>\r\n<span style="margin: 0px; padding: 0px; font-style: italic;">Hay đơn giản, dựng một chiếc thang gỗ lên và bức tường phòng ngủ của bạn đã không còn nhàm chán.</span></div>\r\n\r\n<div style="margin: 0px; padding: 0px; text-align: center;"> </div>\r\n\r\n<div style="margin: 0px; padding: 0px; text-align: center;">\r\n<div style="margin: 0px; padding: 0px;"><img alt="trang trí nhà2" h="1049" src="https://afamily1.mediacdn.vn/k:thumb_w/600/M8N20d5STCm5E9QXKSmE0TPi2bNc59/Image/2016/08/81/2-d066e/trang-tri-nha2.jpg" style="margin: 0px; padding: 0px; border: none; outline: none; -webkit-appearance: none; max-width: 620px;" title="trang trí nhà2" w="700" /></div>\r\n<span style="margin: 0px; padding: 0px; font-style: italic;">Chiếc thang kiêm giá treo tạp chí vừa tiết kiệm không gian, vừa như một góc trưng bày nho nhỏ cho gian phòng thêm màu sắc.</span></div>\r\n\r\n<div style="margin: 0px; padding: 0px; text-align: center;"> </div>\r\n\r\n<div style="margin: 0px; padding: 0px; text-align: center;">\r\n<div style="margin: 0px; padding: 0px;"><img alt="trang trí nhà3" h="426" src="https://afamily1.mediacdn.vn/k:thumb_w/600/M8N20d5STCm5E9QXKSmE0TPi2bNc59/Image/2016/08/81/3-6b3cb/trang-tri-nha3.jpg" style="margin: 0px; padding: 0px; border: none; outline: none; -webkit-appearance: none; max-width: 620px;" title="trang trí nhà3" w="640" /></div>\r\n<span style="margin: 0px; padding: 0px; font-style: italic;">Giá để đồ tự chế từ 2 chiếc thang chữ A sẽ là món nội thất độc đáo giúp phòng khách nhà bạn thêm sáng sủa, tinh tươm.</span></div>\r\n\r\n<div style="margin: 0px; padding: 0px; text-align: center;"> </div>\r\n\r\n<div style="margin: 0px; padding: 0px; text-align: center;">\r\n<div style="margin: 0px; padding: 0px;"><img alt="trang trí nhà4" h="982" src="https://afamily1.mediacdn.vn/k:thumb_w/600/M8N20d5STCm5E9QXKSmE0TPi2bNc59/Image/2016/08/81/4-f4ce5/trang-tri-nha4.jpg" style="margin: 0px; padding: 0px; border: none; outline: none; -webkit-appearance: none; max-width: 620px;" title="trang trí nhà4" w="800" /></div>\r\n<span style="margin: 0px; padding: 0px; font-style: italic;">Một chiếc thang nhỏ bỗng chốc biến thành một khung ảnh to lưu giữ những bức ảnh yêu thích, tại sao không nhỉ?</span></div>\r\n\r\n<div style="margin: 0px; padding: 0px; text-align: center;"> </div>\r\n\r\n<div style="margin: 0px; padding: 0px; text-align: center;">\r\n<div style="margin: 0px; padding: 0px;"><img alt="trang trí nhà5" h="600" src="https://afamily1.mediacdn.vn/k:thumb_w/600/M8N20d5STCm5E9QXKSmE0TPi2bNc59/Image/2016/08/81/5-b3801/trang-tri-nha5.jpg" style="margin: 0px; padding: 0px; border: none; outline: none; -webkit-appearance: none; max-width: 620px;" title="trang trí nhà5" w="800" /></div>\r\n<span style="margin: 0px; padding: 0px; font-style: italic;">Thử nghịch ngợm một chút, đặt chiếc thang nằm ngang và gắn lên tường, ngay lập tức bạn đã có một nơi tha hồ để các vật dụng trang trí nhỏ xinh.</span></div>\r\n\r\n<div style="margin: 0px; padding: 0px; text-align: center;"> </div>\r\n\r\n<div style="margin: 0px; padding: 0px; text-align: center;">\r\n<div style="margin: 0px; padding: 0px;"><img alt="trang trí nhà6" h="1500" src="https://afamily1.mediacdn.vn/k:thumb_w/600/M8N20d5STCm5E9QXKSmE0TPi2bNc59/Image/2016/08/81/6-c56ef/trang-tri-nha6.jpg" style="margin: 0px; padding: 0px; border: none; outline: none; -webkit-appearance: none; max-width: 620px;" title="trang trí nhà6" w="1000" /></div>\r\n<span style="margin: 0px; padding: 0px; font-style: italic;">Gian bếp sẽ sạch sẽ và ngăn nắp hơn bao giờ hết với chiếc giá treo xoong nồi siêu tiện lợi này.</span></div>\r\n\r\n<div style="margin: 0px; padding: 0px; text-align: center;"> </div>\r\n\r\n<div style="margin: 0px; padding: 0px; text-align: center;"><img alt="" src="http://afamily1.vcmedia.vn/M8N20d5STCm5E9QXKSmE0TPi2bNc59/Image/2016/04/thang-go-cu-vat-dung-quyen-nang-trang-tri-nha-sieu-xinh_d6bfadec17.jpg" style="margin: 0px; padding: 0px; border: none; outline: none; -webkit-appearance: none; max-width: 100%; cursor: none;" /></div>\r\n\r\n<div style="margin: 0px; padding: 0px; text-align: center;"><span style="margin: 0px; padding: 0px; font-style: italic;">Chiếc thang gỗ kiêm cột đèn ngủ mang lại ánh sáng ấm dịu cho không gian riêng tư của bạn.</span></div>\r\n\r\n<div style="margin: 0px; padding: 0px; text-align: center;"> </div>\r\n\r\n<div style="margin: 0px; padding: 0px; text-align: center;"><img alt="" src="http://afamily1.vcmedia.vn/M8N20d5STCm5E9QXKSmE0TPi2bNc59/Image/2016/04/thang-go-cu-vat-dung-quyen-nang-trang-tri-nha-sieu-xinh_16402959b2.jpg" style="margin: 0px; padding: 0px; border: none; outline: none; -webkit-appearance: none; max-width: 100%; cursor: none;" /></div>\r\n\r\n<div style="margin: 0px; padding: 0px; text-align: center;"><span style="margin: 0px; padding: 0px; font-style: italic;">Một kệ để đồ nho nhỏ sẽ tô điểm thêm cho chiếc cầu thang xoắn ốc trong ngôi nhà.</span></div>\r\n</div>\r\n</div>\r\n', '', '', '', '', '', 1, 1, 1471252688, 1471252734, 0);

-- --------------------------------------------------------

--
-- Table structure for table `table_baiviet_cat`
--

CREATE TABLE IF NOT EXISTS `table_baiviet_cat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_list` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `ten_vi` varchar(255) NOT NULL,
  `ten_en` varchar(255) NOT NULL,
  `tenkhongdau` varchar(255) NOT NULL,
  `mota` text NOT NULL,
  `title` varchar(255) NOT NULL,
  `keywords` varchar(1024) NOT NULL,
  `description` varchar(1024) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `stt` int(11) NOT NULL,
  `hienthi` int(11) NOT NULL,
  `ngaytao` int(11) NOT NULL,
  `ngaysua` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `table_baiviet_item`
--

CREATE TABLE IF NOT EXISTS `table_baiviet_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_list` int(11) NOT NULL,
  `id_cat` int(10) NOT NULL,
  `type` varchar(100) NOT NULL,
  `ten_vi` varchar(255) NOT NULL,
  `ten_en` varchar(255) NOT NULL,
  `tenkhongdau` varchar(255) NOT NULL,
  `mota` text NOT NULL,
  `title` varchar(255) NOT NULL,
  `keywords` varchar(1024) NOT NULL,
  `description` varchar(1024) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `stt` int(11) NOT NULL,
  `hienthi` int(11) NOT NULL,
  `ngaytao` int(11) NOT NULL,
  `ngaysua` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `table_baiviet_list`
--

CREATE TABLE IF NOT EXISTS `table_baiviet_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) NOT NULL,
  `ten_vi` varchar(255) NOT NULL,
  `ten_en` varchar(255) NOT NULL,
  `name_vi` varchar(255) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `tenkhongdau` varchar(255) NOT NULL,
  `quangcao` varchar(255) NOT NULL,
  `quangcao_thumb` varchar(255) NOT NULL,
  `links` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `keywords` varchar(225) NOT NULL,
  `description` varchar(225) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `stt` int(11) NOT NULL,
  `hienthi` int(11) NOT NULL,
  `ngaytao` int(11) NOT NULL,
  `ngaysua` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `table_baiviet_photo`
--

CREATE TABLE IF NOT EXISTS `table_baiviet_photo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_baiviet` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `photo` varchar(225) NOT NULL,
  `thumb` varchar(225) NOT NULL,
  `ten` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mota` varchar(1024) NOT NULL,
  `stt` int(10) unsigned NOT NULL DEFAULT '1',
  `hienthi` tinyint(1) NOT NULL DEFAULT '1',
  `ngaytao` int(11) NOT NULL,
  `ngaysua` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `table_baiviet_photo`
--

INSERT INTO `table_baiviet_photo` (`id`, `id_baiviet`, `type`, `photo`, `thumb`, `ten`, `mota`, `stt`, `hienthi`, `ngaytao`, `ngaysua`) VALUES
(1, 27, 'gioithieu', '14-1721.jpg', '14-1721_1366x420.jpg', '', '', 0, 1, 0, 0),
(2, 27, 'gioithieu', '15-4703.jpg', '15-4703_1366x420.jpg', '', '', 0, 1, 0, 0),
(3, 27, 'gioithieu', '16-3030.jpg', '16-3030_1366x420.jpg', '', '', 0, 1, 0, 0),
(4, 27, 'gioithieu', '17-4102.jpg', '17-4102_1366x420.jpg', '', '', 0, 1, 0, 0),
(5, 27, 'gioithieu', '18-2812.jpg', '18-2812_1366x420.jpg', '', '', 0, 1, 0, 0),
(6, 27, 'gioithieu', '4-5017.jpg', '4-5017_1366x420.jpg', '', '', 0, 1, 0, 0),
(7, 24, 'gioithieu', '56-3862.jpg', '56-3862_1366x420.jpg', '', '', 0, 1, 0, 0),
(8, 24, 'gioithieu', '57-854.jpg', '57-854_1366x420.jpg', '', '', 0, 1, 0, 0),
(9, 24, 'gioithieu', '58-5601.jpg', '58-5601_1366x420.jpg', '', '', 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `table_baiviet_sub`
--

CREATE TABLE IF NOT EXISTS `table_baiviet_sub` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_list` int(11) NOT NULL,
  `id_cat` int(11) NOT NULL,
  `id_item` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `ten_vi` varchar(255) NOT NULL,
  `ten_en` varchar(255) NOT NULL,
  `tenkhongdau` varchar(255) NOT NULL,
  `mota` text NOT NULL,
  `title` varchar(255) NOT NULL,
  `keywords` varchar(1024) NOT NULL,
  `description` varchar(1024) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `stt` int(11) NOT NULL,
  `hienthi` int(11) NOT NULL,
  `ngaytao` int(11) NOT NULL,
  `ngaysua` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `table_bgweb`
--

CREATE TABLE IF NOT EXISTS `table_bgweb` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `re_peat` varchar(20) NOT NULL,
  `tren` varchar(20) NOT NULL,
  `trai` varchar(20) NOT NULL,
  `fix_bg` varchar(20) NOT NULL,
  `mauneen` varchar(20) NOT NULL,
  `type` varchar(50) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `stt` int(10) unsigned NOT NULL DEFAULT '1',
  `hienthi` tinyint(1) NOT NULL DEFAULT '1',
  `ngaytao` int(11) NOT NULL DEFAULT '0',
  `ngaysua` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `table_bgweb`
--

INSERT INTO `table_bgweb` (`id`, `re_peat`, `tren`, `trai`, `fix_bg`, `mauneen`, `type`, `photo`, `stt`, `hienthi`, `ngaytao`, `ngaysua`) VALUES
(4, 'repeat-y', 'top', 'center', '', '#ffffff', 'bgweb', 'bg-4582.png', 1, 1, 1225497589, 1461119460),
(6, 'repeat-x', 'top', 'center', 'fixed', '#ffffff', '', '', 1, 1, 1324275746, 1324356155);

-- --------------------------------------------------------

--
-- Table structure for table `table_booking`
--

CREATE TABLE IF NOT EXISTS `table_booking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ngaydi` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `sotreem` int(10) unsigned NOT NULL,
  `quoctich` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `loaiphong` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `sophong` int(10) NOT NULL,
  `fax` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `diachi` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `noidung` text CHARACTER SET utf8 NOT NULL,
  `ngayden` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `thoigian` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `songuoi` int(11) NOT NULL,
  `ten` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `email` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `dienthoai` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `ngaytao` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `trangthai` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `ghichu` text CHARACTER SET utf8 NOT NULL,
  `view` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `table_booking`
--

INSERT INTO `table_booking` (`id`, `ngaydi`, `sotreem`, `quoctich`, `loaiphong`, `sophong`, `fax`, `diachi`, `noidung`, `ngayden`, `thoigian`, `songuoi`, `ten`, `email`, `dienthoai`, `ngaytao`, `trangthai`, `ghichu`, `view`) VALUES
(9, '07/09/2016', 3, '', '2', 0, '', '', 'đưa đón tận nơi', '31/08/2016', '', 2, 'Diệu anh', 'dieuanh.nina@gmail.com', '0123456789', '1471322271', '', '', 1),
(10, '31/08/2016', 1, '', 'PHÒNG DELUXE', 0, '', '', 'đưa đớn', '24/08/2016', '', 1, 'aaaa', 'dieuanh.nina@gmail.com', '0123456789', '1471322623', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `table_chuyenkhoan`
--

CREATE TABLE IF NOT EXISTS `table_chuyenkhoan` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `noibat` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `photo` varchar(225) NOT NULL,
  `thumb` varchar(225) NOT NULL,
  `ten_vi` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tenkhongdau` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `keywords` varchar(1024) NOT NULL,
  `description` varchar(1024) NOT NULL,
  `mota_vi` text NOT NULL,
  `noidung_vi` text NOT NULL,
  `ten_en` varchar(255) NOT NULL,
  `mota_en` text NOT NULL,
  `noidung_en` text NOT NULL,
  `stt` int(10) unsigned NOT NULL DEFAULT '1',
  `hienthi` tinyint(1) NOT NULL DEFAULT '1',
  `ngaytao` int(11) NOT NULL,
  `ngaysua` int(11) NOT NULL,
  `luotxem` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `table_chuyenkhoan`
--

INSERT INTO `table_chuyenkhoan` (`id`, `noibat`, `type`, `photo`, `thumb`, `ten_vi`, `tenkhongdau`, `title`, `keywords`, `description`, `mota_vi`, `noidung_vi`, `ten_en`, `mota_en`, `noidung_en`, `stt`, `hienthi`, `ngaytao`, `ngaysua`, `luotxem`) VALUES
(1, 0, 'tintuc', 'polarloop-5198.jpg', 'polarloop-5198_295x195.jpg', 'Angela Phương Trinh khoe sắc với váy họa tiết trái tim', 'angela-phuong-trinh-khoe-sac-voi-vay-hoa-tiet-trai-tim', 'Angela Phương Trinh khoe sắc với váy họa tiết trái tim', 'Angela Phương Trinh khoe sắc với váy họa tiết trái tim', 'Angela Phương Trinh khoe sắc với váy họa tiết trái tim ', 'Nữ diễn viên mặc thiết kế của Đỗ Mạnh Cường trong bộ sưu tập Thu Đông 2015 mang tên "Love" khi tới một sự kiện.', '<div class="clear">&nbsp;</div>\r\n\r\n<div class="item_slide_show" style="width: 75.7576%;">\r\n<div class="block_thumb_slide_show"><img alt="" class="left" css="" data-component-caption="&lt;p&gt;\r\n	Lần đầu hợp tác, nhà thiết kế đã ấn tượng với dáng vẻ và thần thái của Angela Phương Trinh khi mặc trang phục của anh.&nbsp;&lt;/p&gt;" data-reference-id="23045148" http:="" icons="" id="vne_slide_image_1" images="" js="" responsive="" slideshow="" src="http://c1.f12.img.vnecdn.net/2015/10/08/DSC-1038-2-1444323381_660x0.jpg" st.f1.vnecdn.net="" utils="" /> <a class="btn_icon_show_slide_show">&nbsp;</a></div>\r\n\r\n<div class="desc_cation">\r\n<p>Lần đầu hợp t&aacute;c, nh&agrave; thiết kế đ&atilde; ấn tượng với d&aacute;ng vẻ v&agrave; thần th&aacute;i của Angela Phương Trinh khi mặc trang phục của anh.&nbsp;</p>\r\n</div>\r\n\r\n<div class="clear">&nbsp;</div>\r\n</div>\r\n\r\n<div class="item_slide_show" style="width: 75.7576%;">\r\n<div class="block_thumb_slide_show"><img alt="" class="left" css="" data-component-caption="&lt;p&gt;\r\n	Kiểu váy có chất liệu vải bóng, in họa tiết tim đỏ, phom dáng ôm cơ thể.&lt;/p&gt;" data-reference-id="23045149" http:="" icons="" id="vne_slide_image_2" images="" js="" responsive="" slideshow="" src="http://c1.f12.img.vnecdn.net/2015/10/08/DSC-0818-2-1444323388_660x0.jpg" st.f1.vnecdn.net="" utils="" /> <a class="btn_icon_show_slide_show">&nbsp;</a></div>\r\n\r\n<div class="desc_cation">\r\n<p>Kiểu v&aacute;y c&oacute; chất liệu vải b&oacute;ng, in họa tiết tim đỏ, phom d&aacute;ng &ocirc;m cơ thể.</p>\r\n</div>\r\n\r\n<div class="clear">&nbsp;</div>\r\n</div>\r\n\r\n<div class="item_slide_show" style="width: 75.7576%;">\r\n<div class="block_thumb_slide_show"><img alt="" class="left" css="" data-component-caption="&lt;p&gt;\r\n	Người đẹp sinh năm 1995 chọn giày có màu sắc hài hòa với họa tiết váy.&lt;/p&gt;" data-reference-id="23045150" http:="" icons="" id="vne_slide_image_3" images="" js="" responsive="" slideshow="" src="http://c1.f10.img.vnecdn.net/2015/10/08/DSC-0822-2-1444323395_660x0.jpg" st.f1.vnecdn.net="" utils="" /> <a class="btn_icon_show_slide_show">&nbsp;</a></div>\r\n\r\n<div class="desc_cation">\r\n<p>Người đẹp sinh năm 1995 chọn gi&agrave;y c&oacute; m&agrave;u sắc h&agrave;i h&ograve;a với họa tiết v&aacute;y.</p>\r\n</div>\r\n\r\n<div class="clear">&nbsp;</div>\r\n</div>\r\n\r\n<div class="item_slide_show" style="width: 75.7576%;">\r\n<div class="block_thumb_slide_show"><img alt="" class="left" css="" data-component-caption="&lt;p&gt;\r\n	Đỗ Mạnh Cường (phải) đến dự buổi họp báo công bố phim để ủng hộ vai diễn mới của Phương Trinh.&lt;/p&gt;" data-reference-id="23045151" http:="" icons="" id="vne_slide_image_4" images="" js="" responsive="" slideshow="" src="http://c1.f10.img.vnecdn.net/2015/10/08/DSC-0923-2-1444323412_660x0.jpg" st.f1.vnecdn.net="" utils="" /> <a class="btn_icon_show_slide_show">&nbsp;</a></div>\r\n\r\n<div class="desc_cation">\r\n<p>Đỗ Mạnh Cường (phải) đến dự buổi họp b&aacute;o c&ocirc;ng bố phim để ủng hộ vai diễn mới của Phương Trinh.</p>\r\n</div>\r\n\r\n<div class="clear">&nbsp;</div>\r\n</div>\r\n\r\n<div class="item_slide_show" style="width: 100%;">\r\n<div class="block_thumb_slide_show"><img a="" alt="" class="left" css="" data-component-caption="&lt;p&gt;\r\n	NSND Hoàng Dũng (trái) tham gia một vai trong phim. Đây là dự án phim chiếu rạp tiếp theo của Angela Phương Trinh từ sau tác phẩm " href="http://giaitri.vnexpress.net/tin-tuc/phim/sau-man-anh/angela-phuong-trinh-ngay-tho-trong-phim-biet-chet-lien-2453815.html" src="null" target="_blank" />Biết chết liền&quot; của đạo diễn L&ecirc; Bảo Trung năm 2013.\r\n<p>&nbsp;</p>\r\n&quot; data-reference-id=&quot;23045152&quot; http:=&quot;&quot; icons=&quot;&quot; id=&quot;vne_slide_image_5&quot; images=&quot;&quot; js=&quot;&quot; responsive=&quot;&quot; slideshow=&quot;&quot; src=&quot;http://c1.f9.img.vnecdn.net/2015/10/08/DSC-1143-2-1444323457_660x0.jpg&quot; st.f1.vnecdn.net=&quot;&quot; utils=&quot;&quot; /&gt; <a class="btn_icon_show_slide_show">&nbsp;</a></div>\r\n\r\n<div class="desc_cation">\r\n<p>NSND Ho&agrave;ng Dũng (tr&aacute;i) tham gia một vai trong phim. Đ&acirc;y l&agrave; dự &aacute;n phim chiếu rạp tiếp theo của Angela Phương Trinh từ sau t&aacute;c phẩm &quot;<a href="http://giaitri.vnexpress.net/tin-tuc/phim/sau-man-anh/angela-phuong-trinh-ngay-tho-trong-phim-biet-chet-lien-2453815.html" target="_blank">Biết chết liền</a>&quot; của đạo diễn L&ecirc; Bảo Trung năm 2013.</p>\r\n</div>\r\n\r\n<div class="clear">&nbsp;</div>\r\n</div>\r\n\r\n<div class="item_slide_show" style="width: 100%;">\r\n<div class="block_thumb_slide_show"><img alt="" class="left" css="" data-component-caption="&lt;p&gt;\r\n	Đỗ Mạnh Cường bên người mẫu Lê Xuân Tiền (phải).&lt;/p&gt;" data-reference-id="23045153" http:="" icons="" id="vne_slide_image_6" images="" js="" responsive="" slideshow="" src="http://c1.f10.img.vnecdn.net/2015/10/08/DSC-0995-2-1444323469_660x0.jpg" st.f1.vnecdn.net="" utils="" /> <a class="btn_icon_show_slide_show">&nbsp;</a></div>\r\n\r\n<div class="desc_cation">\r\n<p>Đỗ Mạnh Cường b&ecirc;n người mẫu L&ecirc; Xu&acirc;n Tiền (phải).</p>\r\n</div>\r\n\r\n<div class="clear">&nbsp;</div>\r\n</div>\r\n\r\n<div class="item_slide_show" style="width: 100%;">\r\n<div class="block_thumb_slide_show"><img alt="" class="left" css="" data-component-caption="&lt;p&gt;\r\n	Diễn viên Việt Anh bên diễn viên Trần Xuân Tiến. Việt Anh giữ vai trò nhà sản xuất kiêm đồng biên kịch và đạo diễn trong dự án phim.&lt;/p&gt;" data-reference-id="23045154" http:="" icons="" id="vne_slide_image_7" images="" js="" responsive="" slideshow="" src="http://c1.f9.img.vnecdn.net/2015/10/08/DSC-0863-2-1444323476_660x0.jpg" st.f1.vnecdn.net="" utils="" /> <a class="btn_icon_show_slide_show">&nbsp;</a></div>\r\n\r\n<div class="desc_cation">\r\n<p>Diễn vi&ecirc;n Việt Anh b&ecirc;n diễn vi&ecirc;n Trần Xu&acirc;n Tiến. Việt Anh giữ vai tr&ograve; nh&agrave; sản xuất ki&ecirc;m đồng bi&ecirc;n kịch v&agrave; đạo diễn trong dự &aacute;n phim.</p>\r\n</div>\r\n\r\n<div class="clear">&nbsp;</div>\r\n</div>\r\n\r\n<div class="item_slide_show" style="width: 75.7576%;">\r\n<div class="block_thumb_slide_show"><img alt="" class="left" css="" data-component-caption="&lt;p&gt;\r\n	Hoa hậu Đại Dương Đặng Thu Thảo tham gia một vai trong phim.&lt;/p&gt;" data-reference-id="23045155" http:="" icons="" id="vne_slide_image_8" images="" js="" responsive="" slideshow="" src="http://c1.f9.img.vnecdn.net/2015/10/08/DSC-0706-2-1444323481_660x0.jpg" st.f1.vnecdn.net="" utils="" /> <a class="btn_icon_show_slide_show">&nbsp;</a></div>\r\n\r\n<div class="desc_cation">\r\n<p>Hoa hậu Đại Dương Đặng Thu Thảo tham gia một vai trong phim.</p>\r\n</div>\r\n\r\n<div class="clear">&nbsp;</div>\r\n</div>\r\n\r\n<div class="item_slide_show" style="width: 75.7576%;">\r\n<div class="block_thumb_slide_show"><img alt="" class="left" css="" data-component-caption="&lt;p&gt;\r\n	Hoa khôi Nguyễn Thị Lệ Nam Em tham dự sự kiện với bộ váy ôm gợi cảm. Ảnh: &lt;em&gt;Maison De Bil&lt;/em&gt;&lt;/p&gt;" data-reference-id="23045156" http:="" icons="" id="vne_slide_image_9" images="" js="" responsive="" slideshow="" src="http://c1.f12.img.vnecdn.net/2015/10/09/IMG-3550-1444325181_660x0.jpg" st.f1.vnecdn.net="" utils="" /> <a class="btn_icon_show_slide_show">&nbsp;</a></div>\r\n\r\n<div class="desc_cation">\r\n<p>Hoa kh&ocirc;i Nguyễn Thị Lệ Nam Em tham dự sự kiện với bộ v&aacute;y &ocirc;m gợi cảm. Ảnh: <em>Maison De Bil</em></p>\r\n</div>\r\n\r\n<div class="clear">&nbsp;</div>\r\n</div>\r\n', '', '', '', 1, 1, 1444356666, 1444875020, 0),
(2, 0, 'dichvu', '-8402.jpg', '-8402_295x195.jpg', 'Dịch vụ làm đẹp', 'dich-vu-lam-dep', 'Angela Phương Trinh khi mặc trang phục của anh', 'Angela Phương Trinh khi mặc trang phục của anh', 'Lần đầu hợp tác, nhà thiết kế đã ấn tượng với dáng vẻ và thần thái của Angela Phương Trinh khi mặc trang phục của anh. ', 'Lần đầu hợp tác, nhà thiết kế đã ấn tượng với dáng vẻ và thần thái của Angela Phương Trinh khi mặc trang phục của anh. ', '<div class="clear">&nbsp;</div>\r\n\r\n<div class="item_slide_show" style="width: 75.7576%;">\r\n<div class="block_thumb_slide_show"><img alt="" class="left" data-component-caption="&amp;lt;p&amp;gt;\r\n	Lần đầu hợp tác, nhà thiết kế đã ấn tượng với dáng vẻ và thần thái của Angela Phương Trinh khi mặc trang phục của anh.&nbsp;&amp;lt;/p&amp;gt;" data-reference-id="23045148" id="vne_slide_image_1" src="http://c1.f12.img.vnecdn.net/2015/10/08/DSC-1038-2-1444323381_660x0.jpg" style="cursor: url(&quot;http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png&quot;), auto;" /> <a class="btn_icon_show_slide_show">&nbsp;</a></div>\r\n\r\n<div class="desc_cation">\r\n<p>Lần đầu hợp t&aacute;c, nh&agrave; thiết kế đ&atilde; ấn tượng với d&aacute;ng vẻ v&agrave; thần th&aacute;i của Angela Phương Trinh khi mặc trang phục của anh.&nbsp;</p>\r\n</div>\r\n\r\n<div class="clear">&nbsp;</div>\r\n</div>\r\n\r\n<div class="item_slide_show" style="width: 75.7576%;">\r\n<div class="block_thumb_slide_show"><img alt="" class="left" data-component-caption="&amp;lt;p&amp;gt;\r\n	Kiểu váy có chất liệu vải bóng, in họa tiết tim đỏ, phom dáng ôm cơ thể.&amp;lt;/p&amp;gt;" data-reference-id="23045149" id="vne_slide_image_2" src="http://c1.f12.img.vnecdn.net/2015/10/08/DSC-0818-2-1444323388_660x0.jpg" style="cursor: url(&quot;http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png&quot;), auto;" /> <a class="btn_icon_show_slide_show">&nbsp;</a></div>\r\n\r\n<div class="desc_cation">\r\n<p>Kiểu v&aacute;y c&oacute; chất liệu vải b&oacute;ng, in họa tiết tim đỏ, phom d&aacute;ng &ocirc;m cơ thể.</p>\r\n</div>\r\n\r\n<div class="clear">&nbsp;</div>\r\n</div>\r\n\r\n<div class="item_slide_show" style="width: 75.7576%;">\r\n<div class="block_thumb_slide_show"><img alt="" class="left" data-component-caption="&amp;lt;p&amp;gt;\r\n	Người đẹp sinh năm 1995 chọn giày có màu sắc hài hòa với họa tiết váy.&amp;lt;/p&amp;gt;" data-reference-id="23045150" id="vne_slide_image_3" src="http://c1.f10.img.vnecdn.net/2015/10/08/DSC-0822-2-1444323395_660x0.jpg" style="cursor: url(&quot;http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png&quot;), auto;" /> <a class="btn_icon_show_slide_show">&nbsp;</a></div>\r\n\r\n<div class="desc_cation">\r\n<p>Người đẹp sinh năm 1995 chọn gi&agrave;y c&oacute; m&agrave;u sắc h&agrave;i h&ograve;a với họa tiết v&aacute;y.</p>\r\n</div>\r\n\r\n<div class="clear">&nbsp;</div>\r\n</div>\r\n\r\n<div class="item_slide_show" style="width: 75.7576%;">\r\n<div class="block_thumb_slide_show"><img alt="" class="left" data-component-caption="&amp;lt;p&amp;gt;\r\n	Đỗ Mạnh Cường (phải) đến dự buổi họp báo công bố phim để ủng hộ vai diễn mới của Phương Trinh.&amp;lt;/p&amp;gt;" data-reference-id="23045151" id="vne_slide_image_4" src="http://c1.f10.img.vnecdn.net/2015/10/08/DSC-0923-2-1444323412_660x0.jpg" style="cursor: url(&quot;http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png&quot;), auto;" /> <a class="btn_icon_show_slide_show">&nbsp;</a></div>\r\n\r\n<div class="desc_cation">\r\n<p>Đỗ Mạnh Cường (phải) đến dự buổi họp b&aacute;o c&ocirc;ng bố phim để ủng hộ vai diễn mới của Phương Trinh.</p>\r\n</div>\r\n\r\n<div class="clear">&nbsp;</div>\r\n</div>\r\n\r\n<div class="item_slide_show" style="width: 100%;">\r\n<div class="block_thumb_slide_show"><img alt="" class="left" data-component-caption="&amp;lt;p&amp;gt;\r\n	NSND Hoàng Dũng (trái) tham gia một vai trong phim. Đây là dự án phim chiếu rạp tiếp theo của Angela Phương Trinh từ sau tác phẩm &amp;quot;&amp;lt;a href=&amp;quot;http://giaitri.vnexpress.net/tin-tuc/phim/sau-man-anh/angela-phuong-trinh-ngay-tho-trong-phim-biet-chet-lien-2453815.html&amp;quot; target=&amp;quot;_blank&amp;quot;&amp;gt;Biết chết liền&amp;lt;/a&amp;gt;&amp;quot; của đạo diễn Lê Bảo Trung năm 2013.&amp;lt;/p&amp;gt;" data-reference-id="23045152" id="vne_slide_image_5" src="http://c1.f9.img.vnecdn.net/2015/10/08/DSC-1143-2-1444323457_660x0.jpg" style="cursor: url(&quot;http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png&quot;), auto;" /> <a class="btn_icon_show_slide_show">&nbsp;</a></div>\r\n\r\n<div class="desc_cation">\r\n<p>NSND Ho&agrave;ng Dũng (tr&aacute;i) tham gia một vai trong phim. Đ&acirc;y l&agrave; dự &aacute;n phim chiếu rạp tiếp theo của Angela Phương Trinh từ sau t&aacute;c phẩm &quot;<a href="http://giaitri.vnexpress.net/tin-tuc/phim/sau-man-anh/angela-phuong-trinh-ngay-tho-trong-phim-biet-chet-lien-2453815.html" target="_blank">Biết chết liền</a>&quot; của đạo diễn L&ecirc; Bảo Trung năm 2013.</p>\r\n</div>\r\n\r\n<div class="clear">&nbsp;</div>\r\n</div>\r\n\r\n<div class="item_slide_show" style="width: 100%;">\r\n<div class="block_thumb_slide_show"><img alt="" class="left" data-component-caption="&amp;lt;p&amp;gt;\r\n	Đỗ Mạnh Cường bên người mẫu Lê Xuân Tiền (phải).&amp;lt;/p&amp;gt;" data-reference-id="23045153" id="vne_slide_image_6" src="http://c1.f10.img.vnecdn.net/2015/10/08/DSC-0995-2-1444323469_660x0.jpg" style="cursor: url(&quot;http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png&quot;), auto;" /> <a class="btn_icon_show_slide_show">&nbsp;</a></div>\r\n\r\n<div class="desc_cation">\r\n<p>Đỗ Mạnh Cường b&ecirc;n người mẫu L&ecirc; Xu&acirc;n Tiền (phải).</p>\r\n</div>\r\n\r\n<div class="clear">&nbsp;</div>\r\n</div>\r\n\r\n<div class="item_slide_show" style="width: 100%;">\r\n<div class="block_thumb_slide_show"><img alt="" class="left" data-component-caption="&amp;lt;p&amp;gt;\r\n	Diễn viên Việt Anh bên diễn viên Trần Xuân Tiến. Việt Anh giữ vai trò nhà sản xuất kiêm đồng biên kịch và đạo diễn trong dự án phim.&amp;lt;/p&amp;gt;" data-reference-id="23045154" id="vne_slide_image_7" src="http://c1.f9.img.vnecdn.net/2015/10/08/DSC-0863-2-1444323476_660x0.jpg" style="cursor: url(&quot;http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png&quot;), auto;" /> <a class="btn_icon_show_slide_show">&nbsp;</a></div>\r\n\r\n<div class="desc_cation">\r\n<p>Diễn vi&ecirc;n Việt Anh b&ecirc;n diễn vi&ecirc;n Trần Xu&acirc;n Tiến. Việt Anh giữ vai tr&ograve; nh&agrave; sản xuất ki&ecirc;m đồng bi&ecirc;n kịch v&agrave; đạo diễn trong dự &aacute;n phim.</p>\r\n</div>\r\n\r\n<div class="clear">&nbsp;</div>\r\n</div>\r\n\r\n<div class="item_slide_show" style="width: 75.7576%;">\r\n<div class="block_thumb_slide_show"><img alt="" class="left" data-component-caption="&amp;lt;p&amp;gt;\r\n	Hoa hậu Đại Dương Đặng Thu Thảo tham gia một vai trong phim.&amp;lt;/p&amp;gt;" data-reference-id="23045155" id="vne_slide_image_8" src="http://c1.f9.img.vnecdn.net/2015/10/08/DSC-0706-2-1444323481_660x0.jpg" style="cursor: url(&quot;http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png&quot;), auto;" /> <a class="btn_icon_show_slide_show">&nbsp;</a></div>\r\n\r\n<div class="desc_cation">\r\n<p>Hoa hậu Đại Dương Đặng Thu Thảo tham gia một vai trong phim.</p>\r\n</div>\r\n\r\n<div class="clear">&nbsp;</div>\r\n</div>\r\n\r\n<div class="item_slide_show" style="width: 75.7576%;">\r\n<div class="block_thumb_slide_show"><img alt="" class="left" data-component-caption="&amp;lt;p&amp;gt;\r\n	Hoa khôi Nguyễn Thị Lệ Nam Em tham dự sự kiện với bộ váy ôm gợi cảm. Ảnh: &amp;lt;em&amp;gt;Maison De Bil&amp;lt;/em&amp;gt;&amp;lt;/p&amp;gt;" data-reference-id="23045156" id="vne_slide_image_9" src="http://c1.f12.img.vnecdn.net/2015/10/09/IMG-3550-1444325181_660x0.jpg" style="cursor: url(&quot;http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png&quot;), auto;" /> <a class="btn_icon_show_slide_show">&nbsp;</a></div>\r\n\r\n<div class="desc_cation">\r\n<p>Hoa kh&ocirc;i Nguyễn Thị Lệ Nam Em tham dự sự kiện với bộ v&aacute;y &ocirc;m gợi cảm. Ảnh: <em>Maison De Bil</em></p>\r\n</div>\r\n\r\n<div class="clear">&nbsp;</div>\r\n</div>\r\n', '', '', '', 1, 1, 1444356998, 0, 0),
(3, 0, 'banner', '', '', '', '', '', '', '', '', '', '', '', '', 1, 1, 1444383645, 0, 0),
(4, 0, 'tintuc', '251861-3183.png', '251861-3183_295x195.png', 'Kịch bản đối mặt Mỹ - Trung gần đảo nhân tạo ở Biển Đông', 'kich-ban-doi-mat-my-trung-gan-dao-nhan-tao-o-bien-dong', 'Kịch bản đối mặt Mỹ - Trung gần đảo nhân tạo ở Biển Đông', 'Kịch bản đối mặt Mỹ - Trung gần đảo nhân tạo ở Biển Đông', 'Kịch bản đối mặt Mỹ - Trung gần đảo nhân tạo ở Biển Đông', 'Khi tàu của Mỹ vào phạm vi 12 hải lý quanh các đảo nhân tạo ở Trường Sa, Trung Quốc có thể sẽ cảnh báo bằng lời và sau đó điều tàu chiến và máy bay không người lái ngăn cản, đó là một trong các kịch bản dự đoán.', '<p class="Normal">Mỹ đ&atilde; th&ocirc;ng b&aacute;o cho c&aacute;c đồng minh như Philippines v&agrave; Australia về kế hoạch điều t&agrave;u tuần tra đến gần c&aacute;c b&atilde;i đ&aacute; ngầm ở Trường Sa, nơi Trung Quốc cải tạo phi ph&aacute;p th&agrave;nh đảo nh&acirc;n tạo. Bắc Kinh phản ứng rất tức giận, cho rằng Mỹ v&agrave; đồng minh &quot;đổ dầu v&agrave;o lửa&quot; tranh chấp khu vực, v&agrave; &quot;kh&ocirc;ng bao giờ cho ph&eacute;p bất cứ nước n&agrave;o vi phạm&quot; v&ugrave;ng m&agrave; họ tự cho l&agrave; thuộc chủ quyền của m&igrave;nh.</p>\r\n\r\n<p class="Normal">Theo đ&aacute;nh gi&aacute; của giới quan s&aacute;t, chuyện điều t&agrave;u hiện nay kh&ocirc;ng phải l&agrave; c&oacute; hay kh&ocirc;ng nữa, m&agrave; l&agrave; khi n&agrave;o, như thế n&agrave;o v&agrave; mức độ nghi&ecirc;m trọng của hệ quả đến đ&acirc;u.</p>\r\n\r\n<p class="subtitle">Tự do H&agrave;ng hải</p>\r\n\r\n<p class="Normal">Hoạt động đưa t&agrave;u đến gần c&aacute;c b&atilde;i đ&aacute;, khi diễn ra, sẽ được Mỹ thực hiện theo <span>Chương tr&igrave;nh Tự do H&agrave;ng hải của hải qu&acirc;n Mỹ. N&oacute; được h&igrave;nh th&agrave;nh từ năm 1979, dưới thời Tổng thống Jimmy Carter, nhằm đảm bảo quyền tự do đi lại tr&ecirc;n biển, tr&ecirc;n kh&ocirc;ng theo c&aacute;c điều khoản của C&ocirc;ng ước Li&ecirc;n Hợp Quốc về Luật Biển (UNCLOS). </span></p>\r\n\r\n<p class="Normal">Mục ti&ecirc;u của FONOPS l&agrave; th&aacute;ch thức những &quot;tuy&ecirc;n bố qu&aacute; đ&aacute;ng&quot; m&agrave; c&aacute;c quốc gia đưa ra về hải phận v&agrave; kh&ocirc;ng phận kh&ocirc;ng tu&acirc;n theo quy định của UNCLOS, chứ kh&ocirc;ng h&agrave;m &yacute; nghĩa c&ocirc;ng nhận hay b&aacute;c bỏ chủ quyền của b&ecirc;n n&agrave;o.</p>\r\n\r\n<table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" style="width: 100%;">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="kich-ban-doi-mat-my-trung-gan-dao-nhan-tao-o-bien-dong-1" data-natural-width="500" data-pwidth="470.4" data-width="500" src="http://m.f29.img.vnecdn.net/2015/10/14/2-3719-1444814421.jpg" style="width: 100%;" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p class="Image">Một đảo nh&acirc;n tạo Trung Quốc x&acirc;y dựng phi ph&aacute;p tr&ecirc;n Biển Đ&ocirc;ng. Ảnh: <em>Telegraph</em></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p class="Normal">Trong giai đoạn 2013-2014, hải qu&acirc;n Mỹ đ&atilde; thực hiện tổng cộng 54 FONOPS, trong đ&oacute; chủ yếu l&agrave; thuộc khu vực phụ tr&aacute;ch của Bộ Tư lệnh Th&aacute;i B&igrave;nh Dương. Chỉ huy cơ quan n&agrave;y cho biết họ đ&atilde; sẵn s&agrave;ng thực hiện kế hoạch tuần tra ở Biển Đ&ocirc;ng sau khi c&oacute; lệnh.</p>\r\n\r\n<p class="subtitle">Khi n&agrave;o v&agrave; ở đ&acirc;u</p>\r\n\r\n<p class="Normal">Trang News10 của Australia dẫn lời c&aacute;c chuy&ecirc;n gia ph&acirc;n t&iacute;ch cho biết quyết định đ&atilde; được đưa ra, v&agrave; việc thực hiện sẽ diễn ra cuối tuần n&agrave;y hoặc v&agrave;o tuần tới. Dự đo&aacute;n n&agrave;y được đưa ra sau cuộc gặp của c&aacute;c bộ trưởng ngoại giao v&agrave; quốc ph&ograve;ng Mỹ - Australia ở Boston.</p>\r\n\r\n<p class="Normal">Trước đ&oacute;, tờ Financial Times dẫn nguồn qu&acirc;n sự Mỹ cho biết việc thực hiện tuần tra s&aacute;t đảo nh&acirc;n tạo c&oacute; thể diễn ra &quot;trong những ng&agrave;y tới&quot;. Theo SCMP, đề xuất kế hoạch n&agrave;y đ&atilde; được tr&igrave;nh l&ecirc;n ch&iacute;nh phủ Mỹ từ m&ugrave;a h&egrave;, nhưng quyết định được tr&igrave; ho&atilde;n cho đến sau chuyến thăm của Chủ tịch Trung Quốc Tập Cận B&igrave;nh th&aacute;ng 9 vừa rồi.</p>\r\n\r\n<p class="Normal">Chuy&ecirc;n gia Greg Poling, thuộc Chương tr&igrave;nh minh bạch H&agrave;ng hải ch&acirc;u &Aacute; của Viện Chiến lược v&agrave; Quốc tế Mỹ (CSIS) đự do&aacute;n việc tuần tra sẽ &quot;chỉ diễn ra ở c&aacute;c thực thể ch&igrave;m khi thủy triều l&ecirc;n trước khi việc bồi đắp diễn ra, v&agrave; đủ c&aacute;ch xa c&aacute;c đ&aacute; kh&aacute;c để tr&aacute;nh nguy cơ&quot; về ph&aacute;p l&yacute; v&ugrave;ng nước. Như vậy &ocirc;ng cho rằng c&aacute;c t&agrave;u của Mỹ sẽ tiến đến gần b&atilde;i Subi v&agrave; V&agrave;nh Khăn. (C&aacute;c đ&aacute; n&agrave;y đều nằm trong quần đảo Trường Sa thuộc chủ quyền Việt Nam).</p>\r\n\r\n<p class="Normal">C&aacute;c t&agrave;u Mỹ cũng c&oacute; thể sẽ đi gần c&aacute;c thực thể kh&aacute;c trong quần đảo Trường Sa, theo <span>tiến sĩ Mira Rapp-Hooper, th&agrave;nh vi&ecirc;n Chương tr&igrave;nh An ninh ch&acirc;u &Aacute;-Th&aacute;i B&igrave;nh Dương thuộc <span>Trung t&acirc;m An ninh Mỹ Mới (CNAS). Mục đ&iacute;ch của việc n&agrave;y l&agrave; để tỏ ra Mỹ kh&ocirc;ng &quot;thi&ecirc;n vị&quot; bất cứ b&ecirc;n n&agrave;o đang c&oacute; tuy&ecirc;n bố chồng lấn về chủ quyền ở đ&acirc;y. </span></span></p>\r\n\r\n<p class="subtitle"><span><span>Như thế n&agrave;o</span></span></p>\r\n\r\n<p class="Normal"><span><span>C&aacute;c chuy&ecirc;n gia qu&acirc;n sự của Trung Quốc được dự đo&aacute;n sẽ ra cảnh b&aacute;o đối với c&aacute;c t&agrave;u Mỹ, v&agrave; kh&ocirc;ng để xảy ra đụng độ nếu ph&iacute;a Mỹ &quot;kh&ocirc;ng đi qu&aacute; giới hạn&quot;, b&aacute;o Hong Kong dẫn lời giới ph&acirc;n t&iacute;ch dự đo&aacute;n. </span></span></p>\r\n\r\n<p class="Normal"><span><span>&quot;Hải qu&acirc;n Trung Quốc sẽ y&ecirc;u cầu c&aacute;c t&agrave;u Mỹ rời đi bằng c&aacute;ch ra cảnh b&aacute;o miệng&quot;, chuy&ecirc;n gia hải qu&acirc;n </span></span>Ni Lexiong n&oacute;i.</p>\r\n\r\n<p class="Normal">Li Jie, chuy&ecirc;n gia Hải qu&acirc;n l&agrave;m việc ở Bắc Kinh, cho rằng ph&iacute;a Trung Quốc sẽ điều t&agrave;u chiến ngăn chặn t&agrave;u Mỹ, nếu t&agrave;u Mỹ kh&ocirc;ng rời đi sau c&aacute;c cảnh b&aacute;o n&ecirc;u tr&ecirc;n.</p>\r\n\r\n<p class="Normal">Một nguồn tin th&acirc;n cận với qu&acirc;n đội Giải ph&oacute;ng Nh&acirc;n d&acirc;n Trung Quốc tiết lộ rằng Bắc Kinh c&oacute; &quot;c&aacute;c giải ph&aacute;p hiệu quả hơn&quot; cho kịch bản đối mặt ở Trường Sa. &quot;Ch&uacute;ng t&ocirc;i c&oacute; thể d&ugrave;ng m&aacute;y bay kh&ocirc;ng người l&aacute;i, hoặc đơn giản l&agrave; d&ugrave;ng đến Qu&acirc;n đo&agrave;n ph&aacute;o binh số hai&quot;. Qu&acirc;n đo&agrave;n ph&aacute;o 2 l&agrave; t&ecirc;n gọi lực lượng t&ecirc;n lửa chiến lược của Trung Quốc.</p>\r\n\r\n<p class="Normal"><span>B&agrave;y tỏ th&aacute;i độ cứng rắn trước kế hoạch của Mỹ, người ph&aacute;t ng&ocirc;n Bộ Ngoại giao Trung Quốc Hoa Xu&acirc;n Doanh cũng tuy&ecirc;n bố &quot;</span><span>kh&ocirc;ng bao giờ cho ph&eacute;p bất cứ nước n&agrave;o vi phạm l&atilde;nh hải v&agrave; kh&ocirc;ng phận&quot; nước n&agrave;y tự nhận ở Trường Sa.</span></p>\r\n\r\n<p class="Normal"><span>Tuy nhi&ecirc;n, trong một b&agrave;i ph&acirc;n t&iacute;ch đăng tr&ecirc;n website của Trung t&acirc;m An ninh Mỹ Mới (CNAS), tiến sĩ Mira Rapp-Hooper, chỉ ra rằng Trung Quốc sẽ kh&ocirc;ng c&oacute; l&yacute; n&agrave;o để phản ứng mạnh đếnn th&aacute;i qu&aacute; khi Mỹ thực hiện c&aacute;c hoạt động tuần tra trong phạm vi 12 hải l&yacute; quanh những đảo nh&acirc;n tạo phi ph&aacute;p m&agrave; Trung Quốc x&acirc;y dựng tr&aacute;i ph&eacute;p ở Biển Đ&ocirc;ng.</span></p>\r\n\r\n<p class="Normal"><span>Hồi đầu th&aacute;ng 9, năm t&agrave;u chiến của Trung Quốc đ&atilde; đi qua khu vực 12 hải l&yacute; ngo&agrave;i khơi một đảo thuộc quần đảo Aleut tr&ecirc;n biển Bering của Mỹ m&agrave; kh&ocirc;ng hề xin ph&eacute;p nh&agrave; chức tr&aacute;ch Mỹ, với l&yacute; do những con t&agrave;u n&agrave;y đang thực thi quyền &quot;đi qua v&ocirc; hại&quot; theo quy định của UNCLOS. Sẽ l&agrave; &quot;đạo đức giả v&agrave; cả ngạo mạn&quot; nếu Bắc Kinh cho rằng họ c&oacute; quyền đi qua l&atilde;nh hải của Mỹ, trong khi t&agrave;u chiến Mỹ kh&ocirc;ng được ph&eacute;p đi v&agrave;o v&ugrave;ng biển quốc tế gần những đảo họ bồi đắp phi ph&aacute;p.</span> Ngo&agrave;i ra, c&aacute;c đảo nh&acirc;n tạo m&agrave; Trung Quốc đang x&acirc;y, theo UNCLOS, đều kh&ocirc;ng c&oacute; quyền c&oacute; l&atilde;nh hải hay kh&ocirc;ng phận bao quanh.</p>\r\n\r\n<table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" style="width: 100%;">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="kich-ban-doi-mat-my-trung-gan-dao-nhan-tao-o-bien-dong-2" data-natural-width="500" data-pwidth="470.4" data-width="500" src="http://m.f29.img.vnecdn.net/2015/10/14/3-7160-1444814422.jpg" style="width: 100%;" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p class="Image">T&agrave;u chiến Trung Quốc diễn tập ph&oacute;ng t&ecirc;n lửa tr&ecirc;n biển. Ảnh: <em>ChinaMil</em></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p class="subtitle">Hệ quả</p>\r\n\r\n<p class="Normal">Điều th&uacute;c đẩy ph&iacute;a Mỹ đi đến kế hoạch n&agrave;y, theo Orville Schell, gi&aacute;m đốc Trung t&acirc;m nghi&ecirc;n cứu quan hệ Mỹ - Trung, l&agrave; bởi ch&iacute;nh quyền Obama đ&atilde; hết ki&ecirc;n nhẫn trước th&aacute;i độ &quot;rất &eacute;p buộc, thậm ch&iacute; đ&ocirc;i khi g&acirc;y hấn&quot; của Trung Quốc.</p>\r\n\r\n<p class="Normal">&quot;T&ocirc;i nghĩ rằng Washington c&oacute; lẽ đang dần tiến đến điểm b&ugrave;ng nổ với Bắc Kinh&quot;, Schell nhận x&eacute;t. &quot;T&ocirc;i cho l&agrave; Mỹ đ&atilde; quyết định chơi rắn hơn&quot;.</p>\r\n\r\n<p class="Normal">&quot;Hệ quả của việc n&agrave;y l&agrave; g&igrave;? T&ocirc;i kh&ocirc;ng biết. T&ocirc;i cho rằng c&aacute;c b&ecirc;n đều hiểu cần c&oacute; c&aacute;ch n&agrave;o đ&oacute; sống chung với Trung Quốc. Nhưng c&oacute; thể Washington đang tự hỏi liệu cả qu&aacute; tr&igrave;nh đối thoại d&agrave;i dằng dặc đ&oacute; c&oacute; thực sự mang lại điều g&igrave; hay kh&ocirc;ng&quot;, Schell tiếp.</p>\r\n\r\n<p class="Normal">&quot;Điều t&agrave;u đến ngay sau cuộc gặp thượng đỉnh Obama - Tập&quot;, &ocirc;ng Bill Bishop, chuy&ecirc;n gia về Trung Quốc, n&oacute;i, &quot;l&agrave; một dấu hiệu cho thấy mối quan hệ xấu đi đến mức n&agrave;o. Rất kh&oacute; đo&aacute;n kết quả của kế hoạch n&agrave;y, nhưng nếu kh&ocirc;ng l&agrave;m, Mỹ sẽ bị cho l&agrave; yếu đi v&agrave; Trung Quốc sẽ ng&agrave;y c&agrave;ng quả quyết hơn ở ch&acirc;u &Aacute;&quot;.</p>\r\n', '', '', '', 1, 1, 1444875203, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `table_com`
--

CREATE TABLE IF NOT EXISTS `table_com` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ten_com` varchar(100) CHARACTER SET utf8 NOT NULL,
  `act_com` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `danhmuc` int(10) NOT NULL,
  `type` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `act` varchar(225) COLLATE latin1_general_ci NOT NULL,
  `hienthi` tinyint(1) NOT NULL DEFAULT '1',
  `stt` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=23 ;

--
-- Dumping data for table `table_com`
--

INSERT INTO `table_com` (`id`, `ten`, `ten_com`, `act_com`, `danhmuc`, `type`, `act`, `hienthi`, `stt`) VALUES
(1, 'Danh mục cấp 1', 'product', '', 1, 'product', 'list', 1, 1),
(2, 'Danh mục cấp 2', 'product', '', 1, 'product', 'cat', 1, 1),
(3, 'Danh mục cấp 3', 'product', '', 1, 'product', 'item', 1, 1),
(18, 'Giao hàng nhận tiền', 'info', '', 0, 'nhantien', '', 1, 1),
(8, 'Quản lý sản phẩm', 'product', '', 0, 'product', '', 1, 1),
(9, 'Quản lý giá bán', 'gia', '', 0, 'giaban', '', 1, 1),
(11, 'Quản lý tin tức', 'baiviet', '', 0, 'tintuc', '', 1, 1),
(17, 'Giao hàng toàn quốc', 'info', '', 0, 'giaohang', '', 1, 1),
(14, 'Quản lý dịch vụ', 'baiviet', '', 0, 'dichvu', '', 1, 1),
(15, 'Chăm sóc khách hàng', 'baiviet', '', 0, 'chamsoc', '', 1, 1),
(16, 'Xuất nhập khẩu hoàng quân', 'baiviet', '', 0, 'hoangquan', '', 1, 1),
(19, 'Đổi trả hàng', 'info', '', 0, 'doitra', '', 1, 1),
(20, 'Hướng dẩn mua hàng', 'info', '', 0, 'huongdan', '', 1, 1),
(21, 'Banner', 'bannerqc', '', 0, 'banner', '', 1, 1),
(22, 'Quản lý bài viết', 'baiviet', 'man', 1, 'baiviet', '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `table_comment`
--

CREATE TABLE IF NOT EXISTS `table_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stt` int(10) unsigned NOT NULL DEFAULT '1',
  `id_cat` int(10) NOT NULL,
  `com` varchar(225) NOT NULL,
  `tieude` varchar(200) NOT NULL,
  `gianhang` varchar(225) NOT NULL,
  `quantri` int(10) NOT NULL,
  `noidung` text NOT NULL,
  `nguoidang` varchar(50) NOT NULL,
  `sanpham` int(10) NOT NULL,
  `hienthi` tinyint(1) NOT NULL DEFAULT '1',
  `ngaytao` int(11) NOT NULL DEFAULT '0',
  `ngaysua` int(11) NOT NULL DEFAULT '0',
  `hoten` varchar(225) NOT NULL,
  `dienthoai` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `diachi` varchar(225) NOT NULL,
  `view` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=68 ;

--
-- Dumping data for table `table_comment`
--

INSERT INTO `table_comment` (`id`, `stt`, `id_cat`, `com`, `tieude`, `gianhang`, `quantri`, `noidung`, `nguoidang`, `sanpham`, `hienthi`, `ngaytao`, `ngaysua`, `hoten`, `dienthoai`, `email`, `diachi`, `view`) VALUES
(66, 1, 0, 'dich-vu', '', '', 0, 'Minh Thụy 1', '', 30, 1, 1459958804, 1459958804, 'Minh Thụy 1', '', 'ss', '', 1),
(65, 1, 0, 'dich-vu', '', '', 0, 'ss', '', 30, 1, 1459958535, 1459958535, 'ss', '', 'ss', '', 1),
(52, 1, 0, 'dich-vu', '', 'home_admin', 0, 'ui gioi', 'nguyen-dinh-hieu', 30, 1, 1439977419, 1439977419, 'Nguyễn Đình Hiếu', '0939.145.415', 'nguyenhieunina@gmail.com', 'địa chỉ nak con', 1),
(53, 1, 0, 'dich-vu', '', 'home_admin', 0, 'bvnv', 'nguyen-dinh-hieu', 30, 1, 1439977536, 1439977536, 'Nguyễn Đình Hiếu', '0939.145.415', 'nguyenhieunina@gmail.com', 'địa chỉ nak con', 1),
(54, 1, 53, 'bai-thuoc', '', 'home_admin', 0, 'ssddđ', '', 50, 1, 1440560939, 1440560939, 's', '01666470449', 'phamthao.nina@gmail.com', 'Tầng Trệt E25, Căn hộ Belleza, Khu dân cư Phú Mỹ, P.Phú Mỹ, Quận 7.', 1),
(55, 1, 0, 'bai-thuoc', '', 'home_admin', 0, 'Hay', '', 50, 1, 1459690702, 1459690702, '', '', '', '', 1),
(56, 1, 0, 'bai-thuoc', '', '', 0, 'Hay nhất', '', 43, 1, 1459694810, 1459694810, 'Nguyễn Minh Thụy', '', 'minhthuy.nina@gmail.com', '', 1),
(57, 1, 0, 'bai-thuoc', '', '', 0, 'ss', '', 56, 1, 1459695266, 1459695266, 'Minh thụy', '', 'dd', '', 1),
(58, 1, 0, 'bai-thuoc', '', '', 0, 'gg', '', 56, 1, 1459695338, 1459695338, 'ss', '', 'ss', '', 1),
(59, 1, 0, 'bai-thuoc', '', '', 0, 'sssss', '', 56, 1, 1459695397, 1459695397, 'ggg', '', 'đ', '', 1),
(60, 1, 59, 'bai-thuoc', '', '', 0, 'dd', '', 56, 1, 1459695461, 1459695461, 'gg', '', 'gg', '', 1),
(61, 1, 59, 'bai-thuoc', '', '', 0, 'gggg', '', 56, 1, 1459695566, 1459695566, 'Minh Thụy', '', 'minhthuy.nina@gmail.com', '', 1),
(62, 1, 62, 'bai-thuoc', '', '', 0, 'aaaaaa', '', 56, 1, 1459695592, 1459695592, 'Minh Thụy', '', 'minhthuy.nina@gmail.com', '', 1),
(63, 1, 62, 'bai-thuoc', '', '', 0, 'Hay', '', 56, 1, 1459764012, 1459764012, 'Nam', '', 'ssssssss', '', 1),
(67, 1, 0, 'tin-tuc', '', '', 0, 'Gỗ óc chó\r\n', '', 56, 1, 1460612969, 1460612969, 'Minh Thụy', '', 'minhthuy.nina@gmail.com', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `table_comment_like`
--

CREATE TABLE IF NOT EXISTS `table_comment_like` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stt` int(10) unsigned NOT NULL DEFAULT '1',
  `ip_nguoilike` varchar(225) NOT NULL,
  `id_comment` int(10) NOT NULL,
  `hienthi` tinyint(1) NOT NULL DEFAULT '1',
  `ngaytao` int(11) NOT NULL DEFAULT '0',
  `ngaysua` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `table_comment_like`
--

INSERT INTO `table_comment_like` (`id`, `stt`, `ip_nguoilike`, `id_comment`, `hienthi`, `ngaytao`, `ngaysua`) VALUES
(1, 1, '14.161.47.91', 12, 0, 1438137121, 0),
(2, 1, '127.0.0.1', 38, 0, 1439974977, 0),
(3, 1, '127.0.0.1', 29, 0, 1439974981, 0),
(4, 1, '127.0.0.1', 51, 0, 1440401755, 0),
(5, 1, '127.0.0.1', 43, 0, 1440401763, 0),
(6, 1, '127.0.0.1', 52, 0, 1440401765, 0),
(7, 1, '127.0.0.1', 42, 0, 1459689627, 0),
(8, 1, '127.0.0.1', 41, 0, 1459689631, 0),
(9, 1, '127.0.0.1', 0, 0, 1459784695, 0),
(10, 1, '14.161.46.214', 0, 0, 1460613227, 0);

-- --------------------------------------------------------

--
-- Table structure for table `table_company`
--

CREATE TABLE IF NOT EXISTS `table_company` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cat` varchar(2) NOT NULL,
  `type` varchar(100) NOT NULL,
  `ten_vi` varchar(225) NOT NULL,
  `tenkhongdau` varchar(255) NOT NULL,
  `mota_vi` text NOT NULL,
  `noidung_vi` text NOT NULL,
  `ten_en` varchar(225) NOT NULL,
  `mota_en` text NOT NULL,
  `noidung_en` text NOT NULL,
  `title` varchar(255) NOT NULL,
  `keywords` varchar(1024) NOT NULL,
  `description` varchar(1024) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `stt` int(10) unsigned NOT NULL DEFAULT '1',
  `hienthi` tinyint(1) NOT NULL DEFAULT '1',
  `ngaytao` int(10) unsigned NOT NULL DEFAULT '0',
  `ngaysua` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `table_company`
--

INSERT INTO `table_company` (`id`, `id_cat`, `type`, `ten_vi`, `tenkhongdau`, `mota_vi`, `noidung_vi`, `ten_en`, `mota_en`, `noidung_en`, `title`, `keywords`, `description`, `photo`, `thumb`, `stt`, `hienthi`, `ngaytao`, `ngaysua`) VALUES
(1, '', '', '', '', '', '<table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" style="width: 100%;">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="thua-soc-truoc-ireland-duc-lo-co-hoi-gianh-ve-som-du-euro" data-natural-width="500" data-pwidth="470.4" data-width="500" src="http://c1.f1.img.vnecdn.net/2015/10/09/duc-9716-1444345590.jpg" style="width: 100%;" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p class="Image">Ireland buộc Đức phải chờ đến lượt đấu cuối mới c&oacute; thể gi&agrave;nh v&eacute; tới Ph&aacute;p. Ảnh: <em>Reuters</em></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p class="Normal">Kết quả: Ireland 1-0 Đức</p>\r\n\r\n<p class="Normal">B&agrave;n thắng: Shane Long 70&#39;</p>\r\n\r\n<div style="text-align:center;">\r\n<div class="embed-container">&nbsp;</div>\r\n</div>\r\n\r\n<p class="Normal">V&agrave;o s&acirc;n với đội h&igrave;nh gần như mạnh nhất, Đức thoải m&aacute;i chiếm ưu thế trước chủ nh&agrave; Ireland. Nhưng điều g&acirc;y thất vọng l&agrave; c&aacute;c cầu thủ mang danh đương kim v&ocirc; địch World Cup li&ecirc;n tục bỏ lỡ cơ hội.</p>\r\n\r\n<p class="Normal">Ozil, Gundogan v&agrave; Reus c&oacute; ba t&igrave;nh huống dứt điểm từ vị tr&iacute; trống trải trước khung th&agrave;nh thủ m&ocirc;n Shay Given, nhưng đều kh&ocirc;ng ho&agrave;n th&agrave;nh nhiệm vụ. Ng&ocirc;i sao của CLB Arsenal cũng c&oacute; một lần đưa b&oacute;ng v&agrave;o lưới Ireland, nhưng kh&ocirc;ng được c&ocirc;ng nhận b&agrave;n thắng do lỗi việt vị.</p>\r\n\r\n<p class="Normal">Kh&ocirc;ng cụ thể h&oacute;a được ưu thế, Đức phải trả gi&aacute; đắt ở ph&uacute;t 70. Trong t&igrave;nh huống tấn c&ocirc;ng s&aacute;ng sủa gần như duy nhất của Ireland, tiền đạo Shane Long tho&aacute;t xuống s&uacute;t ch&eacute;o v&agrave;o g&oacute;c cao, đ&aacute;nh bại thủ m&ocirc;n Neuer.</p>\r\n\r\n<p class="Normal">Với chiến thắng bất ngờ trước Đức, Ireland hồi sinh hy vọng tại v&ograve;ng loại Euro 2016. Đội n&agrave;y hiện xếp thứ ba bảng D với 18 điểm, bằng th&agrave;nh t&iacute;ch với Ba Lan v&agrave; k&eacute;m Đức một điểm. Trong lượt đấu cuối, Ireland cần thắng tr&ecirc;n s&acirc;n của Ba Lan để gi&agrave;nh v&eacute; trực tiếp tới v&ograve;ng chung kết.</p>\r\n\r\n<p class="Normal">Trong khi đ&oacute;, thất bại trước Ireland đ&atilde; l&agrave;m Đức lỡ cơ hội gi&agrave;nh v&eacute; sớm một lượt đấu. Nhưng khi gặp Gruzia giữa tuần sau, thầy tr&ograve; HLV Joachim Low chỉ cần gi&agrave;nh &iacute;t nhất một kết quả h&ograve;a l&agrave; c&oacute; v&eacute; đi Ph&aacute;p dự ng&agrave;y hội lớn h&egrave; năm sau.</p>\r\n', '', '', '', '', '', '', '', '', 1, 0, 1444360406, 0),
(2, '', 'gioithieu', '', '', '', '<p class="Normal">V&agrave;o s&acirc;n với đội h&igrave;nh gần như mạnh nhất, Đức thoải m&aacute;i chiếm ưu thế trước chủ nh&agrave; Ireland. Nhưng điều g&acirc;y thất vọng l&agrave; c&aacute;c cầu thủ mang danh đương kim v&ocirc; địch World Cup li&ecirc;n tục bỏ lỡ cơ hội.</p>\r\n\r\n<p class="Normal">Ozil, Gundogan v&agrave; Reus c&oacute; ba t&igrave;nh huống dứt điểm từ vị tr&iacute; trống trải trước khung th&agrave;nh thủ m&ocirc;n Shay Given, nhưng đều kh&ocirc;ng ho&agrave;n th&agrave;nh nhiệm vụ. Ng&ocirc;i sao của CLB Arsenal cũng c&oacute; một lần đưa b&oacute;ng v&agrave;o lưới Ireland, nhưng kh&ocirc;ng được c&ocirc;ng nhận b&agrave;n thắng do lỗi việt vị.</p>\r\n\r\n<p class="Normal">Kh&ocirc;ng cụ thể h&oacute;a được ưu thế, Đức phải trả gi&aacute; đắt ở ph&uacute;t 70. Trong t&igrave;nh huống tấn c&ocirc;ng s&aacute;ng sủa gần như duy nhất của Ireland, tiền đạo Shane Long tho&aacute;t xuống s&uacute;t ch&eacute;o v&agrave;o g&oacute;c cao, đ&aacute;nh bại thủ m&ocirc;n Neuer.</p>\r\n\r\n<p class="Normal">Với chiến thắng bất ngờ trước Đức, Ireland hồi sinh hy vọng tại v&ograve;ng loại Euro 2016. Đội n&agrave;y hiện xếp thứ ba bảng D với 18 điểm, bằng th&agrave;nh t&iacute;ch với Ba Lan v&agrave; k&eacute;m Đức một điểm. Trong lượt đấu cuối, Ireland cần thắng tr&ecirc;n s&acirc;n của Ba Lan để gi&agrave;nh v&eacute; trực tiếp tới v&ograve;ng chung kết.</p>\r\n\r\n<p class="Normal">Trong khi đ&oacute;, thất bại trước Ireland đ&atilde; l&agrave;m Đức lỡ cơ hội gi&agrave;nh v&eacute; sớm một lượt đấu. Nhưng khi gặp Gruzia giữa tuần sau, thầy tr&ograve; HLV Joachim Low chỉ cần gi&agrave;nh &iacute;t nhất một kết quả h&ograve;a l&agrave; c&oacute; v&eacute; đi Ph&aacute;p dự ng&agrave;y hội lớn h&egrave; năm sau.</p>\r\n', '', '', '', 'Đức phải trả giá đắt ở phút 70', 'Đức phải trả giá đắt ở phút 70', 'Đức phải trả giá đắt ở phút 70', '', '', 0, 0, 1444361037, 1444361100),
(3, '', 'tuyendung', '', '', '', '<p class="Normal">V&agrave;o s&acirc;n với đội h&igrave;nh gần như mạnh nhất, Đức thoải m&aacute;i chiếm ưu thế trước chủ nh&agrave; Ireland. Nhưng điều g&acirc;y thất vọng l&agrave; c&aacute;c cầu thủ mang danh đương kim v&ocirc; địch World Cup li&ecirc;n tục bỏ lỡ cơ hội.</p>\r\n\r\n<p class="Normal">Ozil, Gundogan v&agrave; Reus c&oacute; ba t&igrave;nh huống dứt điểm từ vị tr&iacute; trống trải trước khung th&agrave;nh thủ m&ocirc;n Shay Given, nhưng đều kh&ocirc;ng ho&agrave;n th&agrave;nh nhiệm vụ. Ng&ocirc;i sao của CLB Arsenal cũng c&oacute; một lần đưa b&oacute;ng v&agrave;o lưới Ireland, nhưng kh&ocirc;ng được c&ocirc;ng nhận b&agrave;n thắng do lỗi việt vị.</p>\r\n', '', '', '', 'Tuyển nhân viên', 'Tuyển nhân viên,Tuyển nhân viên,Tuyển nhân viên', 'Tuyển nhân viên,Tuyển nhân viên,Tuyển nhân viên,Tuyển nhân viên', '', '', 1, 0, 1444362420, 0),
(4, '', 'lienhe', '', '', '', '<h2><strong>PETRO HOTEL COMPANY LIMITED</strong></h2>\r\n\r\n<p> </p>\r\n\r\n<p> </p>\r\n\r\n<p><em style="line-height: 1.6;">Address</em><span style="line-height: 1.6;">: 9-11 Hoang Dieu Street, Ward 1, Vung Tau City, Vietnam </span></p>\r\n\r\n<p><em>Phone</em>: 84.64. 3588 588 - <em>Fax</em>: 84. 64. 3588 589 - <em>Email</em>: petrohotel@ptsc.com.vn  </p>\r\n\r\n<p><em>Website</em>: www.petrohotel.vn</p>\r\n\r\n<p> </p>\r\n\r\n<p><strong>Mr. Huynh Ho Chi Tam - Commercial Manager  </strong></p>\r\n\r\n<p><em>Tel</em>: 84.64. 588 588 - <em>Cellphone</em>: 84.906. 358 639 - <em>Email</em>: tamhuynh@ptsc.com.vn</p>\r\n\r\n<p> </p>\r\n\r\n<p><strong>Mr. Vo Thanh Phuong - Travel Division Manager   </strong> </p>\r\n\r\n<p><em>Tel</em>: 84.64. 588 585 - <em>Cellphone</em>: 84.983.050 053 - <em>Email</em>: phuongvt@ptsc.com.vn</p>\r\n', '', '', '<p style="line-height: 20.8px;"><strong>PETRO HOTEL COMPANY LIMITED</strong></p>\r\n\r\n<p style="line-height: 20.8px;"><em style="line-height: 1.6;">Address</em><span style="line-height: 1.6;">: 9-11 Hoang Dieu Street, Ward 1, Vung Tau City, Vietnam </span></p>\r\n\r\n<p style="line-height: 20.8px;"><em>Phone</em>: 84.64. 3588 588 - <em>Fax</em>: 84. 64. 3588 589 - <em>Email</em>: petrohotel@ptsc.com.vn  </p>\r\n\r\n<p style="line-height: 20.8px;"><em>Website</em>: www.petrohotel.vn</p>\r\n\r\n<p style="line-height: 20.8px;"><strong>Mr. Huynh Ho Chi Tam - Commercial Manager  </strong></p>\r\n\r\n<p style="line-height: 20.8px;"><em>Tel</em>: 84.64. 588 588 - <em>Cellphone</em>: 84.906. 358 639 - <em>Email</em>: tamhuynh@ptsc.com.vn</p>\r\n\r\n<p style="line-height: 20.8px;"><strong>Mr. Vo Thanh Phuong - Travel Division Manager   </strong> </p>\r\n\r\n<p style="line-height: 20.8px;"><em>Tel</em>: 84.64. 588 585 - <em>Cellphone</em>: 84.983.050 053 - <em>Email</em>: phuongvt@ptsc.com.vn</p>\r\n', '', '', '', '', '', 0, 0, 1444374706, 1468895553),
(5, '', 'footer', '', '', '', '<h2>Khách Sạn Nhi Nhi</h2>\r\n\r\n<p>Địa chỉ: 57 - 59 KDC Trung Sơn, H. Bình Chánh, Tp Hồ Chí Minh</p>\r\n\r\n<p>Số điện thoại:<strong> 0917 220 676</strong></p>\r\n\r\n<p>Email: hotelnhinhi@gmail.com</p>\r\n\r\n<p>Copyright © 2016 <strong>Khách Sạn Nhi Nhi</strong>. Design by Nina.vn</p>\r\n\r\n<p> </p>\r\n', '', '', '<h2>CÔNG TY TNHH KHÁCH SẠN DẦU KHÍ PTSC</h2>\r\n\r\n<p style="line-height: 20.8px;">Địa chỉ:  Số 9-11 Hoàng Diệu, F1, TP Vũng Tàu, Tỉnh Bà rịa- Vũng Tàu </p>\r\n\r\n<p style="line-height: 20.8px;">Điện thoại: 0643 588 588 </p>\r\n\r\n<p style="line-height: 20.8px;">Fax :   064-3 588 589</p>\r\n\r\n<p style="line-height: 20.8px;">Email: petrohotel@ptsc.com.vn </p>\r\n\r\n<p style="line-height: 20.8px;">Website: http://petrohotel.vn</p>\r\n', '', '', '', '', '', 0, 0, 1444374721, 1471253844),
(6, '', 'giolam', '', '', '', '<p>HCM <strong>(08) 66847566</strong><br />\r\nThứ 2 - thứ 6: 7h - 20h<br />\r\nThứ 7: 7h - 18h<br />\r\nCN & ngày lễ: 8h - 17h<br />\r\nHoặc gửi yêu cầu tại đây<br />\r\nThông báo hàng giả (08) 6296 6976</p>\r\n', '', '', '', '', '', '', '', '', 0, 0, 1445392227, 1445394193);

-- --------------------------------------------------------

--
-- Table structure for table `table_contact`
--

CREATE TABLE IF NOT EXISTS `table_contact` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stt` int(10) unsigned NOT NULL DEFAULT '1',
  `ten` varchar(255) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `dienthoai` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `tieude` varchar(255) NOT NULL,
  `noidung` text NOT NULL,
  `ghichu` text NOT NULL,
  `view` int(10) NOT NULL,
  `hienthi` tinyint(1) NOT NULL DEFAULT '1',
  `ngaytao` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `table_contact`
--

INSERT INTO `table_contact` (`id`, `stt`, `ten`, `diachi`, `dienthoai`, `photo`, `thumb`, `email`, `tieude`, `noidung`, `ghichu`, `view`, `hienthi`, `ngaytao`) VALUES
(27, 0, 'Facebook', 'aa', '0909990990', '', '', 'longtu1432005@yahoo.com', 'hgfhgfhgfh', 'ggg', '', 0, 1, 1459411180);

-- --------------------------------------------------------

--
-- Table structure for table `table_counter`
--

CREATE TABLE IF NOT EXISTS `table_counter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tm` int(11) NOT NULL,
  `ip` varchar(16) NOT NULL DEFAULT '0.0.0.0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=165 ;

--
-- Dumping data for table `table_counter`
--

INSERT INTO `table_counter` (`id`, `tm`, `ip`) VALUES
(1, 1359686133, '127.0.0.1'),
(2, 1359687053, '127.0.0.1'),
(3, 1359728025, '127.0.0.1'),
(4, 1359729858, '127.0.0.1'),
(5, 1359730874, '127.0.0.1'),
(6, 1359731807, '127.0.0.1'),
(7, 1359732782, '127.0.0.1'),
(8, 1359768867, '127.0.0.1'),
(9, 1361950583, '127.0.0.1'),
(10, 1361953904, '127.0.0.1'),
(11, 1362224573, '127.0.0.1'),
(12, 1362225479, '127.0.0.1'),
(13, 1362232155, '127.0.0.1'),
(14, 1362233937, '127.0.0.1'),
(15, 1362234841, '127.0.0.1'),
(16, 1362235835, '127.0.0.1'),
(17, 1362236916, '127.0.0.1'),
(18, 1362237903, '127.0.0.1'),
(19, 1362238829, '127.0.0.1'),
(20, 1362239777, '127.0.0.1'),
(21, 1362240712, '127.0.0.1'),
(22, 1362364410, '127.0.0.1'),
(23, 1362382242, '127.0.0.1'),
(24, 1362383175, '127.0.0.1'),
(25, 1362384257, '127.0.0.1'),
(26, 1362447262, '127.0.0.1'),
(27, 1362451213, '127.0.0.1'),
(28, 1362467933, '127.0.0.1'),
(29, 1364916799, '127.0.0.1'),
(30, 1364917833, '127.0.0.1'),
(31, 1364918825, '127.0.0.1'),
(32, 1364919786, '127.0.0.1'),
(33, 1364920715, '127.0.0.1'),
(34, 1364921653, '127.0.0.1'),
(35, 1364953496, '127.0.0.1'),
(36, 1364955036, '127.0.0.1'),
(37, 1364958291, '127.0.0.1'),
(38, 1364959764, '127.0.0.1'),
(39, 1364960672, '127.0.0.1'),
(40, 1364971599, '127.0.0.1'),
(41, 1364972526, '127.0.0.1'),
(42, 1364975090, '127.0.0.1'),
(43, 1364977289, '127.0.0.1'),
(44, 1364996762, '127.0.0.1'),
(45, 1364997778, '127.0.0.1'),
(46, 1364998679, '127.0.0.1'),
(47, 1364999632, '127.0.0.1'),
(48, 1365000544, '127.0.0.1'),
(49, 1365001447, '127.0.0.1'),
(50, 1365002368, '127.0.0.1'),
(51, 1365038106, '127.0.0.1'),
(52, 1365039066, '127.0.0.1'),
(53, 1365039995, '127.0.0.1'),
(54, 1365043971, '127.0.0.1'),
(55, 1365131089, '127.0.0.1'),
(56, 1365135368, '127.0.0.1'),
(57, 1365152472, '127.0.0.1'),
(58, 1365153396, '127.0.0.1'),
(59, 1365217259, '127.0.0.1'),
(60, 1365218204, '127.0.0.1'),
(61, 1365385578, '127.0.0.1'),
(62, 1365403968, '127.0.0.1'),
(63, 1365602808, '127.0.0.1'),
(64, 1365603802, '127.0.0.1'),
(65, 1365604708, '127.0.0.1'),
(66, 1365605633, '127.0.0.1'),
(67, 1365606538, '127.0.0.1'),
(68, 1365650338, '127.0.0.1'),
(69, 1365687574, '127.0.0.1'),
(70, 1365780168, '127.0.0.1'),
(71, 1365781096, '127.0.0.1'),
(72, 1365784981, '127.0.0.1'),
(73, 1367661201, '127.0.0.1'),
(74, 1367662143, '127.0.0.1'),
(75, 1367677632, '127.0.0.1'),
(76, 1367678624, '127.0.0.1'),
(77, 1367679613, '127.0.0.1'),
(78, 1367680526, '127.0.0.1'),
(79, 1367681454, '127.0.0.1'),
(80, 1367722809, '127.0.0.1'),
(81, 1367723734, '127.0.0.1'),
(82, 1367724634, '127.0.0.1'),
(83, 1367725559, '127.0.0.1'),
(84, 1368115461, '127.0.0.1'),
(85, 1368116373, '127.0.0.1'),
(86, 1368117342, '127.0.0.1'),
(87, 1368118258, '127.0.0.1'),
(88, 1368119420, '127.0.0.1'),
(89, 1368187368, '127.0.0.1'),
(90, 1368194400, '127.0.0.1'),
(91, 1368195304, '127.0.0.1'),
(92, 1368196331, '127.0.0.1'),
(93, 1368197310, '127.0.0.1'),
(94, 1368198215, '127.0.0.1'),
(95, 1368199385, '127.0.0.1'),
(96, 1368201432, '127.0.0.1'),
(97, 1368202364, '127.0.0.1'),
(98, 1368203269, '127.0.0.1'),
(99, 1368204179, '127.0.0.1'),
(100, 1368205091, '127.0.0.1'),
(101, 1368205992, '127.0.0.1'),
(102, 1368235499, '127.0.0.1'),
(103, 1368243455, '127.0.0.1'),
(104, 1368361034, '127.0.0.1'),
(105, 1368363917, '127.0.0.1'),
(106, 1368364842, '127.0.0.1'),
(107, 1368432637, '127.0.0.1'),
(108, 1368434162, '127.0.0.1'),
(109, 1368583800, '127.0.0.1'),
(110, 1368599935, '127.0.0.1'),
(111, 1368601099, '127.0.0.1'),
(112, 1368603133, '127.0.0.1'),
(113, 1368754213, '127.0.0.1'),
(114, 1368841439, '127.0.0.1'),
(115, 1369145018, '127.0.0.1'),
(116, 1369147012, '127.0.0.1'),
(117, 1369148022, '127.0.0.1'),
(118, 1369148956, '127.0.0.1'),
(119, 1369233688, '127.0.0.1'),
(120, 1369234596, '127.0.0.1'),
(121, 1369235804, '127.0.0.1'),
(122, 1369236842, '127.0.0.1'),
(123, 1370961818, '127.0.0.1'),
(124, 1370962780, '127.0.0.1'),
(125, 1370963680, '127.0.0.1'),
(126, 1370964625, '127.0.0.1'),
(127, 1370965562, '127.0.0.1'),
(128, 1370966584, '127.0.0.1'),
(129, 1371478614, '127.0.0.1'),
(130, 1371479537, '127.0.0.1'),
(131, 1371480595, '127.0.0.1'),
(132, 1371481509, '127.0.0.1'),
(133, 1371482469, '127.0.0.1'),
(134, 1371483373, '127.0.0.1'),
(135, 1371484288, '127.0.0.1'),
(136, 1371485192, '127.0.0.1'),
(137, 1371486152, '127.0.0.1'),
(138, 1371487184, '127.0.0.1'),
(139, 1371538481, '127.0.0.1'),
(140, 1371539385, '127.0.0.1'),
(141, 1371540500, '127.0.0.1'),
(142, 1371541425, '127.0.0.1'),
(143, 1371542325, '127.0.0.1'),
(144, 1371543636, '127.0.0.1'),
(145, 1371544631, '127.0.0.1'),
(146, 1371546015, '127.0.0.1'),
(147, 1371546964, '127.0.0.1'),
(148, 1371548076, '127.0.0.1'),
(149, 1371548995, '127.0.0.1'),
(150, 1371609566, '127.0.0.1'),
(151, 1371610655, '127.0.0.1'),
(152, 1371627518, '127.0.0.1'),
(153, 1371634425, '127.0.0.1'),
(154, 1371806929, '127.0.0.1'),
(155, 1371865003, '127.0.0.1'),
(156, 1371865957, '127.0.0.1'),
(157, 1373271855, '127.0.0.1'),
(158, 1373277474, '127.0.0.1'),
(159, 1373618926, '127.0.0.1'),
(160, 1373619912, '127.0.0.1'),
(161, 1373620857, '127.0.0.1'),
(162, 1373621934, '127.0.0.1'),
(163, 1374198858, '127.0.0.1'),
(164, 1374199780, '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `table_dientich`
--

CREATE TABLE IF NOT EXISTS `table_dientich` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ten_vi` varchar(225) NOT NULL,
  `ten_en` varchar(255) NOT NULL,
  `tenkhongdau` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `dientichtu` int(20) NOT NULL,
  `dientichden` int(20) NOT NULL,
  `stt` int(10) unsigned NOT NULL DEFAULT '1',
  `hienthi` tinyint(1) NOT NULL DEFAULT '1',
  `ngaytao` int(10) unsigned NOT NULL DEFAULT '0',
  `ngaysua` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `table_dientich`
--

INSERT INTO `table_dientich` (`id`, `ten_vi`, `ten_en`, `tenkhongdau`, `type`, `dientichtu`, `dientichden`, `stt`, `hienthi`, `ngaytao`, `ngaysua`) VALUES
(1, 'từ 100 - 150 m2', '', 'tu-100-150-m2', '', 100, 150, 1, 1, 1445588921, 1457596633),
(2, 'Từ 50 - 100 m2', '', 'tu-50-100-m2', '', 50, 100, 1, 1, 1445589039, 1457596608),
(3, 'Dưới 50 m2', '', 'duoi-50-m2', '', 0, 50, 1, 1, 1445589072, 1457596584);

-- --------------------------------------------------------

--
-- Table structure for table `table_download`
--

CREATE TABLE IF NOT EXISTS `table_download` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ten` varchar(225) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `file` varchar(200) NOT NULL,
  `type` varchar(100) NOT NULL,
  `stt` int(10) unsigned NOT NULL DEFAULT '1',
  `hienthi` tinyint(1) NOT NULL DEFAULT '1',
  `url` varchar(250) NOT NULL,
  `image` varchar(100) NOT NULL,
  `ngaytao` int(11) NOT NULL,
  `ngaysua` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `table_gia`
--

CREATE TABLE IF NOT EXISTS `table_gia` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ten_vi` varchar(225) NOT NULL,
  `ten_en` varchar(255) NOT NULL,
  `tenkhongdau` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `giatu` int(20) NOT NULL,
  `giaden` int(20) NOT NULL,
  `stt` int(10) unsigned NOT NULL DEFAULT '1',
  `hienthi` tinyint(1) NOT NULL DEFAULT '1',
  `ngaytao` int(10) unsigned NOT NULL DEFAULT '0',
  `ngaysua` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `table_gia`
--

INSERT INTO `table_gia` (`id`, `ten_vi`, `ten_en`, `tenkhongdau`, `type`, `giatu`, `giaden`, `stt`, `hienthi`, `ngaytao`, `ngaysua`) VALUES
(1, 'Dưới 500k', '', 'duoi-500k', '', 0, 500000, 1, 1, 1445588921, 0),
(2, 'Từ 500 - 1 Triệu', '', 'tu-500-1-trieu', '', 500000, 1000000, 1, 1, 1445589039, 0),
(3, 'Từ 1 Triệu - 2 Triệu', '', 'tu-1-trieu-2-trieu', '', 1000000, 2000000, 1, 1, 1445589072, 0);

-- --------------------------------------------------------

--
-- Table structure for table `table_giasearch`
--

CREATE TABLE IF NOT EXISTS `table_giasearch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `giatu` int(11) NOT NULL,
  `giaden` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `table_giasearch`
--

INSERT INTO `table_giasearch` (`id`, `ten`, `giatu`, `giaden`) VALUES
(1, 'Dưới 500 ngàn', 0, 500000),
(2, 'Từ 500 đến 1 triệu', 500000, 1000000),
(3, 'Từ 1 triệu đến 2 triệu', 1000000, 2000000),
(4, 'Từ 2 triệu đến 4 triệu', 2000000, 4000000),
(5, 'Từ 2 triệu đến 4 triệu', 2000000, 4000000),
(6, 'Từ 4 triệu đến 8 triệu', 4000000, 8000000),
(7, 'Từ 8 triệu đến 10 triệu', 8000000, 10000000),
(8, 'Trên 10 triệu', 10000000, 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `table_httt`
--

CREATE TABLE IF NOT EXISTS `table_httt` (
  `id` int(11) NOT NULL,
  `ten` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_httt`
--

INSERT INTO `table_httt` (`id`, `ten`) VALUES
(1, 'Tiền Mặt'),
(2, 'Chuyển Khoản'),
(3, 'Ngân Lượng'),
(3, 'Onepay'),
(4, 'Bảo Kim');

-- --------------------------------------------------------

--
-- Table structure for table `table_info`
--

CREATE TABLE IF NOT EXISTS `table_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cat` varchar(2) NOT NULL,
  `type` varchar(100) NOT NULL,
  `ten_vi` varchar(225) NOT NULL,
  `tenkhongdau` varchar(255) NOT NULL,
  `mota_vi` text NOT NULL,
  `noidung_vi` text NOT NULL,
  `ten_en` varchar(225) NOT NULL,
  `mota_en` text NOT NULL,
  `noidung_en` text NOT NULL,
  `title` varchar(255) NOT NULL,
  `keywords` varchar(1024) NOT NULL,
  `description` varchar(1024) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `stt` int(10) unsigned NOT NULL DEFAULT '1',
  `hienthi` tinyint(1) NOT NULL DEFAULT '1',
  `ngaytao` int(10) unsigned NOT NULL DEFAULT '0',
  `ngaysua` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `table_info`
--

INSERT INTO `table_info` (`id`, `id_cat`, `type`, `ten_vi`, `tenkhongdau`, `mota_vi`, `noidung_vi`, `ten_en`, `mota_en`, `noidung_en`, `title`, `keywords`, `description`, `photo`, `thumb`, `stt`, `hienthi`, `ngaytao`, `ngaysua`) VALUES
(1, '', 'gioithieu', 'Giới thiệu về chúng tôi', 'gioi-thieu-ve-chung-toi', '<p>Hơn thế nữa, nhà hàng còn trang bị phòng riêng, bàn gia tiên... dành riêng cho hai họ tổ chức các nghi lễ truyền thống. Tân lang tân nương sẽ trải qua đêm tân hôn lãng mạn, ngập tràn hạnh phúc tại phòng Honeymoon được khách sạn chu đáo dành tặng. Sáng hôm sau, cặp đôi sẽ được cùng nhau thưởng thức</p>\r\n\r\n<p>Buffet sáng với thực đơn phong phú trong không khí trong lành đầy hoa, nắng và gió tại vườn <strong>Khách Sạn Nhi Nhi</strong>. </p>\r\n\r\n<p>Khách hàng cũng có thể lựa chọn giữa một ly cốc-tai cạnh hồ bơi, hay một ly cà phê trong một cuộc gặp gỡ tại quầy Bar Yen’s. Các dịch vụ thư giãn, giải trí của chúng tôi như massage, spa, xông hơi khô, hơi nước, và 1 bể bơi trong nhà sẽ mang đến sự hài lòng và thư giãn cho quý khách. Ngoài ra, phòng</p>\r\n\r\n<p>Karaoke với sức chứa 30 khách và hệ thống âm thanh ánh sáng hoàn hảo sẽ đáp ứng yêu cầu của những khách hàng khó tính nhất.</p>\r\n\r\n<p> </p>\r\n', '<p style="line-height: 20.8px;">Hơn thế nữa, nhà hàng còn trang bị phòng riêng, bàn gia tiên... dành riêng cho hai họ tổ chức các nghi lễ truyền thống. Tân lang tân nương sẽ trải qua đêm tân hôn lãng mạn, ngập tràn hạnh phúc tại phòng Honeymoon được khách sạn chu đáo dành tặng. Sáng hôm sau, cặp đôi sẽ được cùng nhau thưởng thức</p>\r\n\r\n<p style="line-height: 20.8px;">Buffet sáng với thực đơn phong phú trong không khí trong lành đầy hoa, nắng và gió tại vườn <strong>Khách Sạn Nhi Nhi</strong>. </p>\r\n\r\n<p style="line-height: 20.8px;">Khách hàng cũng có thể lựa chọn giữa một ly cốc-tai cạnh hồ bơi, hay một ly cà phê trong một cuộc gặp gỡ tại quầy Bar Yen’s. Các dịch vụ thư giãn, giải trí của chúng tôi như massage, spa, xông hơi khô, hơi nước, và 1 bể bơi trong nhà sẽ mang đến sự hài lòng và thư giãn cho quý khách. Ngoài ra, phòng</p>\r\n\r\n<p style="line-height: 20.8px;">Karaoke với sức chứa 30 khách và hệ thống âm thanh ánh sáng hoàn hảo sẽ đáp ứng yêu cầu của những khách hàng khó tính nhất.</p>\r\n', 'Biogarten', '<p>Phasellus ac laoreet nisl. Quisque quam justo, suscipit id bibendum tempor, scelerisque sed felis. Nullam tristique dapibus risus, eu lacinia turpis cursus ac. Maecenas sollicitudin hendrerit nisl quis molestie. Sed pellentesque erat ante. Cras massa mauris, pulvinar et tempor in, mollis id elit. Duis facilisis finibus dolor. Pellentesque euismod consectetur massa, sit amet interdum lacus dictum ac. Proin vel convallis dolor.</p>\r\n\r\n<p>Cras nibh tortor, lobortis in justo nec, tincidunt tempor elit. Cras commodo nulla dui, vitae fringilla justo volutpat ut. Etiam consequat vehicula condimentum. Phasellus non lacinia sem. Pellentesque urna metus, convallis ultrices viverra ut, sollicitudin quis turpis. Cras felis dui, elementum vel gravida ultricies, rutrum vitae tortor. In consequat lacinia leo, vel maximus neque convallis a. Phasellus viverra scelerisque elit, at gravida eros rutrum nec. Proin magna dolor, consectetur ut faucibus at, tincidunt quis ipsum. Nulla in diam turpis.</p>\r\n', '', '', '', '', '', '', 0, 0, 1464902854, 1471322955);

-- --------------------------------------------------------

--
-- Table structure for table `table_lkweb`
--

CREATE TABLE IF NOT EXISTS `table_lkweb` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ten` varchar(225) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `type` varchar(100) NOT NULL,
  `stt` int(10) unsigned NOT NULL DEFAULT '1',
  `hienthi` tinyint(1) NOT NULL DEFAULT '1',
  `url` varchar(250) NOT NULL,
  `image` varchar(100) NOT NULL,
  `ngaytao` int(11) NOT NULL,
  `ngaysua` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `table_lkweb`
--

INSERT INTO `table_lkweb` (`id`, `ten`, `photo`, `thumb`, `type`, `stt`, `hienthi`, `url`, `image`, `ngaytao`, `ngaysua`) VALUES
(7, 'Facebook', 's1-7698.png', 's1-7698_36x35.png', 'lkweb', 1, 1, 'http://facebook.com', '', 1458720616, 1471253755),
(8, 'G+', 's3-8020.png', 's3-8020_36x35.png', 'lkweb', 3, 1, 'https://www.google.com/', '', 1459496292, 1471253773),
(9, 'twitter', 's2-7067.png', 's2-7067_36x35.png', 'lkweb', 2, 1, 'https://twitter.com/', '', 1459496408, 1471253763),
(10, 'Youtube', 's4-4942.png', 's4-4942_36x35.png', 'lkweb', 4, 1, 'http://youtobe.com', '', 1459496420, 1471253783);

-- --------------------------------------------------------

--
-- Table structure for table `table_newsletter`
--

CREATE TABLE IF NOT EXISTS `table_newsletter` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stt` int(10) unsigned NOT NULL DEFAULT '1',
  `ten` varchar(225) NOT NULL,
  `gioitinh` varchar(255) NOT NULL,
  `sanpham` varchar(50) NOT NULL,
  `tieude` varchar(200) NOT NULL,
  `noidung` longtext NOT NULL,
  `hienthi` tinyint(1) NOT NULL DEFAULT '1',
  `ngaytao` int(10) unsigned NOT NULL DEFAULT '0',
  `ngaysua` int(10) unsigned NOT NULL DEFAULT '0',
  `email` varchar(225) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=157 ;

--
-- Dumping data for table `table_newsletter`
--

INSERT INTO `table_newsletter` (`id`, `stt`, `ten`, `gioitinh`, `sanpham`, `tieude`, `noidung`, `hienthi`, `ngaytao`, `ngaysua`, `email`) VALUES
(155, 1, '', '', '', '', '', 1, 1461171760, 0, 'quoctrung.nina@gmail.com'),
(156, 1, '', '', '', '', '', 1, 1465206396, 0, 'example@example.vn');

-- --------------------------------------------------------

--
-- Table structure for table `table_online`
--

CREATE TABLE IF NOT EXISTS `table_online` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `session_id` varchar(255) NOT NULL,
  `time` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=66822 ;

--
-- Dumping data for table `table_online`
--

INSERT INTO `table_online` (`id`, `session_id`, `time`) VALUES
(66821, 'srtn3nhfqahefk976hb5lv2in6', 1471479297);

-- --------------------------------------------------------

--
-- Table structure for table `table_order`
--

CREATE TABLE IF NOT EXISTS `table_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `madonhang` varchar(20) NOT NULL,
  `tinhthanh` varchar(100) NOT NULL,
  `quanhuyen` varchar(100) NOT NULL,
  `phivanchuyen` int(10) NOT NULL,
  `view` int(10) NOT NULL,
  `hoten` varchar(255) NOT NULL,
  `dienthoai` varchar(255) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `httt` int(11) NOT NULL,
  `tonggia` int(11) NOT NULL,
  `noidung` text NOT NULL,
  `ghichu` text NOT NULL,
  `ngaytao` int(11) NOT NULL,
  `trangthai` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=66 ;

--
-- Dumping data for table `table_order`
--

INSERT INTO `table_order` (`id`, `madonhang`, `tinhthanh`, `quanhuyen`, `phivanchuyen`, `view`, `hoten`, `dienthoai`, `diachi`, `email`, `httt`, `tonggia`, `noidung`, `ghichu`, `ngaytao`, `trangthai`) VALUES
(61, 'E7BVCW', '', '', 0, 1, 'Nguyễn Đình Hiếu', '01212901191', 'Quang Trung , Gò Vấp', 'nguyenhieunina@gmail.com', 0, 0, 'Giao Ngay và liền nhé bạn . ', '', 1458788491, 1),
(62, 'PO4JMP', '', '', 0, 0, 'test', '0932012346', 'nina', 'dinhthithuthuy.nina@gmail.com', 0, 0, 'sđ', '', 1460511181, 1),
(63, 'LG8L3P', '', '', 0, 0, 'test', '0932012346', 'nina', 'dinhthithuthuy.nina@gmail.com', 0, 0, 'sđ', '', 1460511187, 1),
(64, 'KWUFBS', '', '', 0, 0, '', '', '', '', 0, 0, '', '', 1460522827, 1),
(65, 'AQER4B', '', '', 0, 0, 'Facebook', '018773465783', 'jshdfghj', 'dieuanh.nina@gmail.com', 0, 0, '', '', 1463456649, 1);

-- --------------------------------------------------------

--
-- Table structure for table `table_order_detail`
--

CREATE TABLE IF NOT EXISTS `table_order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_product` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `gia` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=76 ;

--
-- Dumping data for table `table_order_detail`
--

INSERT INTO `table_order_detail` (`id`, `id_product`, `id_order`, `ten`, `gia`, `soluong`) VALUES
(69, 53, 61, 'GỖ CAO SU', 0, 12),
(70, 43, 61, 'GỖ SỒI', 0, 12),
(71, 47, 61, 'GỖ XOAN ĐÀO', 0, 13),
(72, 53, 62, 'Gổ mun cao cấp', 0, 1),
(73, 53, 63, 'Gổ mun cao cấp', 0, 1),
(74, 53, 64, 'Gổ mun cao cấp', 0, 1),
(75, 22, 65, '1kg', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `table_phanquyen`
--

CREATE TABLE IF NOT EXISTS `table_phanquyen` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_list` varchar(255) NOT NULL,
  `id_cat` varchar(255) NOT NULL,
  `id_item` varchar(255) NOT NULL,
  `stt` int(10) unsigned NOT NULL DEFAULT '1',
  `ten` varchar(200) NOT NULL,
  `com` text NOT NULL,
  `table_vitri` varchar(225) NOT NULL,
  `xem` varchar(225) NOT NULL,
  `them` varchar(225) NOT NULL,
  `sua` varchar(225) NOT NULL,
  `xoa` varchar(225) NOT NULL,
  `soluong` varchar(200) NOT NULL,
  `mausac` varchar(50) NOT NULL,
  `hienthi` tinyint(1) NOT NULL DEFAULT '1',
  `ngaytao` int(11) NOT NULL DEFAULT '0',
  `ngaysua` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `table_phanquyen`
--

INSERT INTO `table_phanquyen` (`id`, `id_list`, `id_cat`, `id_item`, `stt`, `ten`, `com`, `table_vitri`, `xem`, `them`, `sua`, `xoa`, `soluong`, `mausac`, `hienthi`, `ngaytao`, `ngaysua`) VALUES
(21, '["5"]', '["6","5"]', '["5"]', 1, 'Quản lý bigmart 1', 'null', 'null', '["1|1","8|1"]', '["1|1","8|1"]', '["1|1","8|1"]', '["8|1"]', '', '#37cd30', 1, 1436943747, 1446189435);

-- --------------------------------------------------------

--
-- Table structure for table `table_photo`
--

CREATE TABLE IF NOT EXISTS `table_photo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_vitri` int(11) NOT NULL,
  `photo_vi` varchar(225) NOT NULL,
  `photo_en` varchar(225) NOT NULL,
  `thumb_vi` varchar(150) NOT NULL,
  `thumb_en` varchar(150) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `ten_vi` varchar(100) NOT NULL,
  `ten_en` varchar(255) NOT NULL,
  `noidung_vi` text NOT NULL,
  `noidung_en` text NOT NULL,
  `link` varchar(255) NOT NULL,
  `mota` text NOT NULL,
  `stt` int(10) unsigned NOT NULL DEFAULT '1',
  `hienthi` tinyint(1) NOT NULL DEFAULT '1',
  `type` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `table_photo`
--

INSERT INTO `table_photo` (`id`, `id_vitri`, `photo_vi`, `photo_en`, `thumb_vi`, `thumb_en`, `thumb`, `ten_vi`, `ten_en`, `noidung_vi`, `noidung_en`, `link`, `mota`, `stt`, `hienthi`, `type`) VALUES
(1, 0, 'banner-8695.png', '', '-6277_299x51.png', '', '', '', '', '', '', '', '', 1, 0, 'logo'),
(2, 0, '2842344261554840.png', '', '284234426155484_1366x530.png', '', '', 'Slider 1', '', '', '', 'http://facebook.com', '', 1, 1, 'slider'),
(3, 0, '9795165531113830.png', '', '979516553111383_1366x530.png', '', '', 'Slider 2', '', '', '', 'http://facebook.com', '', 1, 1, 'slider');

-- --------------------------------------------------------

--
-- Table structure for table `table_product`
--

CREATE TABLE IF NOT EXISTS `table_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cat` int(11) NOT NULL,
  `id_list` int(11) NOT NULL,
  `id_item` int(11) NOT NULL,
  `id_sub` int(11) NOT NULL,
  `phi_hcm` int(10) NOT NULL,
  `phi_khac` int(10) NOT NULL,
  `tags` varchar(2000) NOT NULL,
  `rate` int(10) NOT NULL,
  `type` varchar(100) NOT NULL,
  `noibat` int(11) NOT NULL,
  `thongdung` int(11) NOT NULL,
  `banchay` int(11) NOT NULL,
  `photo` varchar(225) NOT NULL,
  `thumb` varchar(225) NOT NULL,
  `ten_vi` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `masp` varchar(255) NOT NULL,
  `soluong` int(10) NOT NULL,
  `dientich` varchar(1000) NOT NULL,
  `tenkhongdau` varchar(255) NOT NULL,
  `khuyenmai_vi` text NOT NULL,
  `khuyenmai_en` text NOT NULL,
  `thongtin_vi` text NOT NULL,
  `thongtin_en` text NOT NULL,
  `baohanh_vi` varchar(255) NOT NULL,
  `baohanh_en` varchar(255) NOT NULL,
  `thongso_vi` text NOT NULL,
  `thongso_en` text NOT NULL,
  `title` varchar(255) NOT NULL,
  `keywords` varchar(1024) NOT NULL,
  `description` varchar(1024) NOT NULL,
  `des_char` int(11) NOT NULL,
  `is_noindex` int(11) NOT NULL,
  `giaban` int(11) NOT NULL,
  `giacu` int(11) NOT NULL,
  `mota_vi` text NOT NULL,
  `noidung_vi` text NOT NULL,
  `name_vi` varchar(255) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `ten_en` varchar(255) NOT NULL,
  `mota_en` text NOT NULL,
  `noidung_en` text NOT NULL,
  `stt` int(10) unsigned NOT NULL DEFAULT '1',
  `hienthi` tinyint(1) NOT NULL DEFAULT '1',
  `ngaytao` int(11) NOT NULL,
  `ngaysua` int(11) NOT NULL,
  `luotxem` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `table_product`
--

INSERT INTO `table_product` (`id`, `id_cat`, `id_list`, `id_item`, `id_sub`, `phi_hcm`, `phi_khac`, `tags`, `rate`, `type`, `noibat`, `thongdung`, `banchay`, `photo`, `thumb`, `ten_vi`, `masp`, `soluong`, `dientich`, `tenkhongdau`, `khuyenmai_vi`, `khuyenmai_en`, `thongtin_vi`, `thongtin_en`, `baohanh_vi`, `baohanh_en`, `thongso_vi`, `thongso_en`, `title`, `keywords`, `description`, `des_char`, `is_noindex`, `giaban`, `giacu`, `mota_vi`, `noidung_vi`, `name_vi`, `name_en`, `ten_en`, `mota_en`, `noidung_en`, `stt`, `hienthi`, `ngaytao`, `ngaysua`, `luotxem`) VALUES
(1, 0, 4, 0, 0, 0, 0, '', 0, 'product', 0, 0, 0, '1-3600.png', '1-3600_285x232.png', 'PHÒNG SUPERIOR', '', 0, '20m2', 'phong-superior', '', '', '<p> </p>\r\n\r\n<p><img alt="" height="667" src="http://localhost/linhha/upload/images/7.jpg" width="1000" /></p>\r\n\r\n<p style="margin: 0px 0px 0px 40px; padding: 5px 0px; color: rgb(58, 58, 58); font-family: Arial; font-size: 12px; line-height: 18px;"><strong>Đặc điểm phòng</strong></p>\r\n\r\n<ul style="color: rgb(58, 58, 58); font-family: Arial; font-size: 12px; line-height: 18px;">\r\n	<li style="margin-left: 40px;">\r\n	<p style="margin: 0px; padding: 5px 0px;">Kích thước phòng: 28 mét vuông</p>\r\n	</li>\r\n	<li style="margin-left: 40px;">\r\n	<p style="margin: 0px; padding: 5px 0px;">Cảnh quan: sân vườn</p>\r\n	</li>\r\n	<li style="margin-left: 40px;">\r\n	<p style="margin: 0px; padding: 5px 0px;">Giường: Queen hoặc Twin</p>\r\n	</li>\r\n	<li style="margin-left: 40px;">\r\n	<p style="margin: 0px; padding: 5px 0px;">Tuỳ chọn: Phòng Không hút thuốc</p>\r\n	</li>\r\n	<li style="margin-left: 40px;">\r\n	<p style="margin: 0px; padding: 5px 0px;">Phòng Superior dành cho tối đa 2 khách</p>\r\n	</li>\r\n</ul>\r\n\r\n<p> </p>\r\n', '', '', '', '', '', '', '', '', 0, 0, 200000, 0, 'Tất cả phòng Superior có diện tích 28 mét vuông, nhìn ra sân vườn. Mỗi phòng đều được thiết kế nội thất ấn tượng, sàn gỗ, tiện nghi hiện đại và bầu không khí dễ chịu.', '<p style="margin: 0px; padding: 5px 0px; color: rgb(58, 58, 58); font-family: Arial; font-size: 12px; line-height: 18px;">Tất cả phòng Superior có diện tích 28 mét vuông, nhìn ra sân vườn. Mỗi phòng đều được thiết kế nội thất ấn tượng, sàn gỗ, tiện nghi hiện đại và bầu không khí dễ chịu.</p>\r\n\r\n<p style="margin: 0px 0px 0px 40px; padding: 5px 0px; color: rgb(58, 58, 58); font-family: Arial; font-size: 12px; line-height: 18px;"><strong>Đặc điểm phòng</strong></p>\r\n\r\n<ul style="color: rgb(58, 58, 58); font-family: Arial; font-size: 12px; line-height: 18px;">\r\n	<li style="margin-left: 40px;">\r\n	<p style="margin: 0px; padding: 5px 0px;">Kích thước phòng: 28 mét vuông</p>\r\n	</li>\r\n	<li style="margin-left: 40px;">\r\n	<p style="margin: 0px; padding: 5px 0px;">Cảnh quan: sân vườn</p>\r\n	</li>\r\n	<li style="margin-left: 40px;">\r\n	<p style="margin: 0px; padding: 5px 0px;">Giường: Queen hoặc Twin</p>\r\n	</li>\r\n	<li style="margin-left: 40px;">\r\n	<p style="margin: 0px; padding: 5px 0px;">Tuỳ chọn: Phòng Không hút thuốc</p>\r\n	</li>\r\n	<li style="margin-left: 40px;">\r\n	<p style="margin: 0px; padding: 5px 0px;">Phòng Superior dành cho tối đa 2 khách</p>\r\n	</li>\r\n</ul>\r\n\r\n<p style="margin: 0px 0px 0px 40px; padding: 5px 0px; color: rgb(58, 58, 58); font-family: Arial; font-size: 12px; line-height: 18px;"><strong>Phòng tắm:</strong> bồn tắm / tắm đứng, máy sấy tóc, tiện nghi phòng tắm, khăn tắm và dép.</p>\r\n\r\n<p style="margin: 0px 0px 0px 40px; padding: 5px 0px; color: rgb(58, 58, 58); font-family: Arial; font-size: 12px; line-height: 18px;"><strong>Dịch vụ ăn uống :</strong></p>\r\n\r\n<ul style="color: rgb(58, 58, 58); font-family: Arial; font-size: 12px; line-height: 18px;">\r\n	<li style="margin-left: 40px;">\r\n	<p style="margin: 0px; padding: 5px 0px;">Bữa ăn sáng Buffet hàng ngày</p>\r\n	</li>\r\n	<li style="margin-left: 40px;">\r\n	<p style="margin: 0px; padding: 5px 0px;">Dịch vụ phục vụ tại phòng 24 giờ</p>\r\n	</li>\r\n	<li style="margin-left: 40px;">\r\n	<p style="margin: 0px; padding: 5px 0px;">Miễn phí 01 nước đóng chai / người</p>\r\n	</li>\r\n</ul>\r\n\r\n<p style="margin: 0px 0px 0px 40px; padding: 5px 0px; color: rgb(58, 58, 58); font-family: Arial; font-size: 12px; line-height: 18px;"><strong>Điện năng :</strong> 220/240 AV</p>\r\n\r\n<ul style="color: rgb(58, 58, 58); font-family: Arial; font-size: 12px; line-height: 18px;">\r\n	<li style="margin-left: 40px;">\r\n	<p style="margin: 0px; padding: 5px 0px;">Ỗ cắm điện: ổ cắm 2 chấu.</p>\r\n	</li>\r\n	<li style="margin-left: 40px;">\r\n	<p style="margin: 0px; padding: 5px 0px;">Ỗ cắm 3 chấu được cung cấp theo yêu cầu</p>\r\n	</li>\r\n</ul>\r\n\r\n<p style="margin: 0px 0px 0px 40px; padding: 5px 0px; color: rgb(58, 58, 58); font-family: Arial; font-size: 12px; line-height: 18px;"><strong>Thời gian nhận phòng: </strong>14h00, thời gian trả phòng: 12h00.</p>\r\n', '', '', '', '', '', 1, 1, 1471313686, 1471316949, 0),
(2, 0, 1, 0, 0, 0, 0, '', 0, 'product', 0, 0, 0, '1-3734.png', '1-3734_285x232.png', 'PHÒNG DELUXE', '', 0, '', 'phong-deluxe', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 'Tất cả phòng với diện tích 32 mét vuông và đều là phòng sàn gỗ với nhiều sự lựa chọn cho những người yêu thích một căn phòng nhìn ra sân vườn, hoặc từ ban công nhìn ra thành phố.', '<p style="margin: 0px; padding: 5px 0px; color: rgb(58, 58, 58); font-family: Arial; font-size: 12px; line-height: 18px;">Tất cả phòng với diện tích 32 mét vuông và đều là phòng sàn gỗ với nhiều sự lựa chọn cho những người yêu thích một căn phòng nhìn ra sân vườn, hoặc từ ban công nhìn ra thành phố.</p>\r\n\r\n<p style="margin: 0px; padding: 5px 0px; color: rgb(58, 58, 58); font-family: Arial; font-size: 12px; line-height: 18px;"> </p>\r\n\r\n<p style="margin: 0px 0px 0px 40px; padding: 5px 0px; color: rgb(58, 58, 58); font-family: Arial; font-size: 12px; line-height: 18px;"><strong>Đặc điểm phòng:</strong></p>\r\n\r\n<ul style="color: rgb(58, 58, 58); font-family: Arial; font-size: 12px; line-height: 18px; margin-left: 40px;">\r\n	<li>\r\n	<p style="margin: 0px; padding: 5px 0px;">Kích thước phòng: 32 mét vuông</p>\r\n	</li>\r\n	<li>\r\n	<p style="margin: 0px; padding: 5px 0px;">Cảnh quan: Thành phố hoặc sân vườn</p>\r\n	</li>\r\n	<li>\r\n	<p style="margin: 0px; padding: 5px 0px;">Giường: Queen hoặc Twin</p>\r\n	</li>\r\n	<li>\r\n	<p style="margin: 0px; padding: 5px 0px;">Tuỳ chọn: Phòng không hút thuốc</p>\r\n	</li>\r\n	<li>\r\n	<p style="margin: 0px; padding: 5px 0px;">Phòng Deluxe dành cho tối đa 2 khách.</p>\r\n	</li>\r\n	<li>\r\n	<p style="margin: 0px; padding: 5px 0px;">Giường phụ được cung cấp theo yêu cầu</p>\r\n	</li>\r\n</ul>\r\n\r\n<p style="margin: 0px; padding: 5px 0px; color: rgb(58, 58, 58); font-family: Arial; font-size: 12px; line-height: 18px;">             <strong>Phòng tắm:</strong> bồn tắm / tắm đứng, máy sấy tóc, tiện nghi phòng tắm, khăn tắm và dép.</p>\r\n\r\n<p style="margin: 0px 0px 0px 40px; padding: 5px 0px; color: rgb(58, 58, 58); font-family: Arial; font-size: 12px; line-height: 18px;"><strong>Dịch vụ ăn uống:</strong></p>\r\n\r\n<ul style="color: rgb(58, 58, 58); font-family: Arial; font-size: 12px; line-height: 18px;">\r\n	<li style="margin-left: 40px;">\r\n	<p style="margin: 0px; padding: 5px 0px;">Bữa ăn sáng Buffet hàng ngày</p>\r\n	</li>\r\n	<li style="margin-left: 40px;">\r\n	<p style="margin: 0px; padding: 5px 0px;">Dịch vụ phục vụ tại phòng 24 giờ</p>\r\n	</li>\r\n	<li style="margin-left: 40px;">\r\n	<p style="margin: 0px; padding: 5px 0px;">Miễn phí 01 nước đóng chai / người</p>\r\n	</li>\r\n</ul>\r\n\r\n<p style="margin: 0px 0px 0px 40px; padding: 5px 0px; color: rgb(58, 58, 58); font-family: Arial; font-size: 12px; line-height: 18px;"><strong>Điện năng:</strong> 220/240 AV</p>\r\n\r\n<ul style="color: rgb(58, 58, 58); font-family: Arial; font-size: 12px; line-height: 18px;">\r\n	<li style="margin-left: 40px;">\r\n	<p style="margin: 0px; padding: 5px 0px;">Ỗ cắm điện: ổ cắm 2 chấu.</p>\r\n	</li>\r\n	<li style="margin-left: 40px;">\r\n	<p style="margin: 0px; padding: 5px 0px;">Ỗ cắm 3 chấu được cung cấp theo yêu cầu</p>\r\n	</li>\r\n</ul>\r\n\r\n<p style="margin: 0px 0px 0px 40px; padding: 5px 0px; color: rgb(58, 58, 58); font-family: Arial; font-size: 12px; line-height: 18px;"><strong>Thời gian nhận phòng: </strong>14h00, thời gian trả phòng: 12h00.</p>\r\n', '', '', '', '', '', 1, 1, 1471313818, 1471321453, 0);

-- --------------------------------------------------------

--
-- Table structure for table `table_product_cat`
--

CREATE TABLE IF NOT EXISTS `table_product_cat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_list` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `ten_vi` varchar(255) NOT NULL,
  `ten_en` varchar(255) NOT NULL,
  `tenkhongdau` varchar(255) NOT NULL,
  `mota` text NOT NULL,
  `title` varchar(255) NOT NULL,
  `keywords` varchar(1024) NOT NULL,
  `description` varchar(1024) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `stt` int(11) NOT NULL,
  `hienthi` int(11) NOT NULL,
  `ngaytao` int(11) NOT NULL,
  `ngaysua` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `table_product_item`
--

CREATE TABLE IF NOT EXISTS `table_product_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_list` int(11) NOT NULL,
  `id_cat` int(10) NOT NULL,
  `type` varchar(100) NOT NULL,
  `ten_vi` varchar(255) NOT NULL,
  `ten_en` varchar(255) NOT NULL,
  `tenkhongdau` varchar(255) NOT NULL,
  `mota` text NOT NULL,
  `title` varchar(255) NOT NULL,
  `keywords` varchar(1024) NOT NULL,
  `description` varchar(1024) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `stt` int(11) NOT NULL,
  `hienthi` int(11) NOT NULL,
  `ngaytao` int(11) NOT NULL,
  `ngaysua` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `table_product_list`
--

CREATE TABLE IF NOT EXISTS `table_product_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) NOT NULL,
  `noibat` int(10) NOT NULL,
  `ten_vi` varchar(255) NOT NULL,
  `ten_en` varchar(255) NOT NULL,
  `mota_vi` text NOT NULL,
  `mota_en` text NOT NULL,
  `name_vi` varchar(255) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `tenkhongdau` varchar(255) NOT NULL,
  `quangcao` varchar(255) NOT NULL,
  `quangcao_thumb` varchar(255) NOT NULL,
  `links` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `keywords` varchar(225) NOT NULL,
  `description` varchar(225) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `stt` int(11) NOT NULL,
  `hienthi` int(11) NOT NULL,
  `ngaytao` int(11) NOT NULL,
  `ngaysua` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `table_product_list`
--

INSERT INTO `table_product_list` (`id`, `type`, `noibat`, `ten_vi`, `ten_en`, `mota_vi`, `mota_en`, `name_vi`, `name_en`, `tenkhongdau`, `quangcao`, `quangcao_thumb`, `links`, `title`, `keywords`, `description`, `photo`, `thumb`, `stt`, `hienthi`, `ngaytao`, `ngaysua`) VALUES
(1, 'product', 1, 'Premier Deluxe', '', 'Mổi phòng được trang  trí hài hòa, hiện đại nhưng không kém phần sang trọng.', '', '', '', 'premier-deluxe', '', '', '', '', '', '', 'h1-1741.png', 'h1-1741_285x232.png', 4, 1, 1471235672, 0),
(2, 'product', 1, 'Phòng vip', '', 'Mổi phòng được trang  trí hài hòa, hiện đại nhưng không kém phần sang trọng.', '', '', '', 'phong-vip', '', '', '', '', '', '', '1-7140.png', '1-7140_285x232.png', 3, 1, 1471235693, 0),
(3, 'product', 1, 'Phòng đôi', '', 'Mổi phòng được trang  trí hài hòa, hiện đại nhưng không kém phần sang trọng.\r\n', '', '', '', 'phong-doi', '', '', '', '', '', '', '1-8066.png', '1-8066_285x232.png', 2, 1, 1471235707, 0),
(4, 'product', 1, 'Phòng đơn', '', 'Mổi phòng được trang  trí hài hòa, hiện đại nhưng không kém phần sang trọng.', '', '', '', 'phong-don', '', '', '', '', '', '', '', '', 1, 1, 1471235719, 0);

-- --------------------------------------------------------

--
-- Table structure for table `table_product_photo`
--

CREATE TABLE IF NOT EXISTS `table_product_photo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `photo` varchar(225) NOT NULL,
  `thumb` varchar(225) NOT NULL,
  `ten` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mota` varchar(1024) NOT NULL,
  `stt` int(10) unsigned NOT NULL DEFAULT '1',
  `hienthi` tinyint(1) NOT NULL DEFAULT '1',
  `ngaytao` int(11) NOT NULL,
  `ngaysua` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `table_product_photo`
--

INSERT INTO `table_product_photo` (`id`, `id_product`, `type`, `photo`, `thumb`, `ten`, `mota`, `stt`, `hienthi`, `ngaytao`, `ngaysua`) VALUES
(1, 1, 'product', '6-1937.jpg', '6-1937_285x232.jpg', '', '', 0, 1, 0, 0),
(2, 1, 'product', '7-2631.jpg', '7-2631_285x232.jpg', '', '', 0, 1, 0, 0),
(3, 1, 'product', '8-3841.jpg', '8-3841_285x232.jpg', '', '', 0, 1, 0, 0),
(4, 1, 'product', '9-1962.jpg', '9-1962_285x232.jpg', '', '', 0, 1, 0, 0),
(5, 1, 'product', '10-1174.jpg', '10-1174_285x232.jpg', '', '', 0, 1, 0, 0),
(6, 1, 'product', '11-5093.jpg', '11-5093_285x232.jpg', '', '', 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `table_product_sub`
--

CREATE TABLE IF NOT EXISTS `table_product_sub` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_list` int(11) NOT NULL,
  `id_cat` int(11) NOT NULL,
  `id_item` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `ten_vi` varchar(255) NOT NULL,
  `ten_en` varchar(255) NOT NULL,
  `tenkhongdau` varchar(255) NOT NULL,
  `mota` text NOT NULL,
  `title` varchar(255) NOT NULL,
  `keywords` varchar(1024) NOT NULL,
  `description` varchar(1024) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `stt` int(11) NOT NULL,
  `hienthi` int(11) NOT NULL,
  `ngaytao` int(11) NOT NULL,
  `ngaysua` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `table_quan`
--

CREATE TABLE IF NOT EXISTS `table_quan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `id_cat` int(11) NOT NULL DEFAULT '0',
  `stt` int(10) NOT NULL DEFAULT '1',
  `hienthi` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_province` (`id_cat`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=684 ;

--
-- Dumping data for table `table_quan`
--

INSERT INTO `table_quan` (`id`, `ten`, `id_cat`, `stt`, `hienthi`) VALUES
(2, 'Quận Ba Đình', 17, 1, 1),
(3, 'Quận Tây Hồ', 17, 1, 1),
(4, 'Quận Hoàn Kiếm', 17, 1, 1),
(5, 'Quận Hai Bà Trưng', 17, 1, 1),
(6, 'Quận Đống Đa', 17, 1, 1),
(7, 'Quận Thanh Xuân', 17, 1, 1),
(8, 'Quận Cầu Giấy', 17, 1, 1),
(9, 'Huyện Sóc Sơn', 17, 1, 1),
(10, 'Huyện Đông Anh', 17, 1, 1),
(11, 'Huyện Gia Lâm', 17, 1, 1),
(12, 'Huyện Từ Liêm', 17, 1, 1),
(13, 'Huyện Thanh Trì', 17, 1, 1),
(15, 'Quận Hồng Bàng', 23, 1, 1),
(16, 'Quận Ngô Quyền', 23, 1, 1),
(17, 'Quận Lê Chân', 23, 1, 1),
(18, 'Quận Kiến An', 23, 1, 1),
(19, 'Thị xã Đồ Sơn', 23, 1, 1),
(20, 'Huyện Thuỷ Nguyên', 23, 1, 1),
(21, 'Huyện An Hải', 23, 1, 1),
(22, 'Huyện An Lão', 23, 1, 1),
(23, 'Huyện Kiến Thuỵ', 23, 1, 1),
(24, 'Huyện Tiên Lãng', 23, 1, 1),
(25, 'Huyện Vĩnh Bảo', 23, 1, 1),
(26, 'Huyện Cát Hải', 23, 1, 1),
(27, 'Huyện Bạch Long Vĩ', 23, 1, 1),
(29, 'Thị xã Vĩnh Yên', 55, 1, 1),
(30, 'Huyện Lập Thạch', 55, 1, 1),
(31, 'Huyện Tam Dương', 55, 1, 1),
(32, 'Huyện Vĩnh Tường', 55, 1, 1),
(33, 'Huyện Yên Lạc', 55, 1, 1),
(34, 'Huyện Mê Linh', 55, 1, 1),
(35, 'Huyện Bình Xuyên', 55, 1, 1),
(37, 'Thị xã Hà Đông', 18, 1, 1),
(38, 'Thị xã Sơn Tây', 18, 1, 1),
(39, 'Huyện Ba Vì', 18, 1, 1),
(40, 'Huyện Phúc Thọ', 18, 1, 1),
(41, 'Huyện Đan Phượng', 18, 1, 1),
(42, 'Huyện Thạch Thất', 18, 1, 1),
(43, 'Huyện Hoài Đức', 18, 1, 1),
(44, 'Huyện Quốc Oai', 18, 1, 1),
(45, 'Huyện Chương Mỹ', 18, 1, 1),
(46, 'Huyện Thanh Oai', 18, 1, 1),
(47, 'Huyện Thường Tín', 18, 1, 1),
(48, 'Huyện Mỹ Đức', 18, 1, 1),
(49, 'Huyện ứng Hòa', 18, 1, 1),
(50, 'Huyện Phú Xuyên', 18, 1, 1),
(52, 'Thị xã Bắc Ninh', 9, 1, 1),
(53, 'Huyện Yên Phong', 9, 1, 1),
(54, 'Huyện Quế Võ', 9, 1, 1),
(55, 'Huyện Tiên Du', 9, 1, 1),
(56, 'Huyện Từ Sơn', 9, 1, 1),
(57, 'Huyện Thuận Thành', 9, 1, 1),
(58, 'Huyện Lương Tài', 9, 1, 1),
(59, 'Huyện Gia Bình', 9, 1, 1),
(61, 'Thành phố Hải Dương', 22, 1, 1),
(62, 'Huyện Chí Linh', 22, 1, 1),
(63, 'Huyện Nam Sách', 22, 1, 1),
(64, 'Huyện Thanh Hà', 22, 1, 1),
(65, 'Huyện Kinh Môn', 22, 1, 1),
(66, 'Huyện Kim Thành', 22, 1, 1),
(67, 'Huyện Gia Lộc', 22, 1, 1),
(68, 'Huyện Tứ Kỳ', 22, 1, 1),
(69, 'Huyện Cẩm Giàng', 22, 1, 1),
(70, 'Huyện Bình Giang', 22, 1, 1),
(71, 'Huyện Thanh Miện', 22, 1, 1),
(72, 'Huyện Ninh Giang', 22, 1, 1),
(74, 'Thị xã Hưng Yên', 21, 1, 1),
(75, 'Huyện Văn Lâm', 21, 1, 1),
(76, 'Huyện Mỹ Văn', 21, 1, 1),
(77, 'Huyện Yên Mỹ', 21, 1, 1),
(78, 'Huyện Châu Giang', 21, 1, 1),
(79, 'Huyện Khoái Châu', 21, 1, 1),
(80, 'Huyện Ân Thi', 21, 1, 1),
(81, 'Huyện Kim Động', 21, 1, 1),
(82, 'Huyện Phù Cừ', 21, 1, 1),
(83, 'Huyện Tiên Lữ', 21, 1, 1),
(85, 'Thị xã Phủ Lý', 16, 1, 1),
(86, 'Huyện Duy Tiên', 16, 1, 1),
(87, 'Huyện Kim Bảng', 16, 1, 1),
(88, 'Huyện Lý Nhân', 16, 1, 1),
(89, 'Huyện Thanh Liêm', 16, 1, 1),
(90, 'Huyện Bình Lục', 16, 1, 1),
(92, 'Thành phố Nam Định', 34, 1, 1),
(93, 'Huyện Vụ Bản', 34, 1, 1),
(94, 'Huyện Mỹ Lộc', 34, 1, 1),
(95, 'Huyện ý Yên', 34, 1, 1),
(96, 'Huyện Nam Trực', 34, 1, 1),
(97, 'Huyện Trực Ninh', 34, 1, 1),
(98, 'Huyện Xuân Trường', 34, 1, 1),
(99, 'Huyện Giao Thủy', 34, 1, 1),
(100, 'Huyện Nghĩa Hưng', 34, 1, 1),
(101, 'Huyện Hải Hậu', 34, 1, 1),
(103, 'Thị xã Thái Bình', 47, 1, 1),
(104, 'Huyện Quỳnh Phụ', 47, 1, 1),
(105, 'Huyện Hưng Hà', 47, 1, 1),
(106, 'Huyện Thái Thụy', 47, 1, 1),
(107, 'Huyện Đông Hưng', 47, 1, 1),
(108, 'Huyện Vũ Thư', 47, 1, 1),
(109, 'Huyện Kiến Xương', 47, 1, 1),
(110, 'Huyện Tiền Hải', 47, 1, 1),
(112, 'Thị xã Ninh Bình', 36, 1, 1),
(113, 'Thị xã Tam Điệp', 36, 1, 1),
(114, 'Huyện Nho Quan', 36, 1, 1),
(115, 'Huyện Gia Viễn', 36, 1, 1),
(116, 'Huyện Hoa Lư', 36, 1, 1),
(117, 'Huyện Yên Mô', 36, 1, 1),
(118, 'Huyện Yên Khánh', 36, 1, 1),
(119, 'Huyện Kim Sơn', 36, 1, 1),
(121, 'Thị xã Hà Giang', 15, 1, 1),
(122, 'Huyện Đồng Văn', 15, 1, 1),
(123, 'Huyện Mèo Vạc', 15, 1, 1),
(124, 'Huyện Yên Minh', 15, 1, 1),
(125, 'Huyện Quản Bạ', 15, 1, 1),
(126, 'Huyện Bắc Mê', 15, 1, 1),
(127, 'Huyện Hoàng Su Phì', 15, 1, 1),
(128, 'Huyện Vị Xuyên', 15, 1, 1),
(129, 'Huyện Xín Mần', 15, 1, 1),
(130, 'Huyện Bắc Quang', 15, 1, 1),
(132, 'Thị xã Cao Bằng', 11, 1, 1),
(133, 'Huyện Bảo Lạc', 11, 1, 1),
(134, 'Huyện Hà Quảng', 11, 1, 1),
(135, 'Huyện Thông Nông', 11, 1, 1),
(136, 'Huyện Trà Lĩnh', 11, 1, 1),
(137, 'Huyện Trùng Khánh', 11, 1, 1),
(138, 'Huyện Nguyên Bình', 11, 1, 1),
(139, 'Huyện Hoà An', 11, 1, 1),
(140, 'Huyện Quảng Hoà', 11, 1, 1),
(141, 'Huyện Hạ Lang', 11, 1, 1),
(142, 'Huyện Thạch An', 11, 1, 1),
(144, 'Thị xã Lào Cai', 31, 1, 1),
(145, 'Thị xã Cam Đường', 31, 1, 1),
(146, 'Huyện Mường Khương', 31, 1, 1),
(147, 'Huyện Bát Xát', 31, 1, 1),
(148, 'Huyện Bắc Hà', 31, 1, 1),
(149, 'Huyện Bảo Thắng', 31, 1, 1),
(150, 'Huyện Sa Pa', 31, 1, 1),
(151, 'Huyện Bảo Yên', 31, 1, 1),
(152, 'Huyện Than Uyên', 31, 1, 1),
(153, 'Huyện Văn Bàn', 31, 1, 1),
(155, 'Thị xã Bắc Kạn', 8, 1, 1),
(156, 'Huyện Ba Bể', 8, 1, 1),
(157, 'Huyện Ngân Sơn', 8, 1, 1),
(158, 'Huyện Chợ Đồn', 8, 1, 1),
(159, 'Huyện Na Rì', 8, 1, 1),
(160, 'Huyện Bạch Thông', 8, 1, 1),
(161, 'Huyện Chợ Mới', 8, 1, 1),
(163, 'Thị xã Lạng Sơn', 33, 1, 1),
(164, 'Huyện Tràng Định', 33, 1, 1),
(165, 'Huyện Văn Lãng', 33, 1, 1),
(166, 'Huyện Bình Gia', 33, 1, 1),
(167, 'Huyện Bắc Sơn', 33, 1, 1),
(168, 'Huyện Văn Quan', 33, 1, 1),
(169, 'Huyện Cao Lộc', 33, 1, 1),
(170, 'Huyện Lộc Bình', 33, 1, 1),
(171, 'Huyện Chi Lăng', 33, 1, 1),
(172, 'Huyện Đình Lập', 33, 1, 1),
(173, 'Huyện Hữu Lũng', 33, 1, 1),
(175, 'Thị xã Tuyên Quang', 52, 1, 1),
(176, 'Huyện Nà Hang', 52, 1, 1),
(177, 'Huyện Chiêm Hóa', 52, 1, 1),
(178, 'Huyện Hàm Yên', 52, 1, 1),
(179, 'Huyện Yên Sơn', 52, 1, 1),
(180, 'Huyện Sơn Dương', 52, 1, 1),
(182, 'Thị xã Yên Bái', 56, 1, 1),
(183, 'Thị xã Nghĩa Lộ', 56, 1, 1),
(184, 'Huyện Lục Yên', 56, 1, 1),
(185, 'Huyện Văn Yên', 56, 1, 1),
(186, 'Huyện Mù Căng Chải', 56, 1, 1),
(187, 'Huyện Trấn Yên', 56, 1, 1),
(188, 'Huyện Yên Bình', 56, 1, 1),
(189, 'Huyện Văn Chấn', 56, 1, 1),
(190, 'Huyện Trạm Tấu', 56, 1, 1),
(192, 'Thành phố Thái Nguyên', 48, 1, 1),
(193, 'Thị xã Sông Công', 48, 1, 1),
(194, 'Huyện Định Hóa', 48, 1, 1),
(195, 'Huyện Võ Nhai', 48, 1, 1),
(196, 'Huyện Phú Lương', 48, 1, 1),
(197, 'Huyện Đồng Hỷ', 48, 1, 1),
(198, 'Huyện Đại Từ', 48, 1, 1),
(199, 'Huyện Phú Bình', 48, 1, 1),
(200, 'Huyện Phổ Yên', 48, 1, 1),
(202, 'Thành phố Việt Trì', 38, 1, 1),
(203, 'Thị xã Phú Thọ', 38, 1, 1),
(204, 'Huyện Đoan Hùng', 38, 1, 1),
(205, 'Huyện Hạ Hoà', 38, 1, 1),
(206, 'Huyện Thanh Ba', 38, 1, 1),
(207, 'Huyện Phong Châu', 38, 1, 1),
(208, 'Huyện Lâm Thao', 38, 1, 1),
(209, 'Huyện Sông Thao', 38, 1, 1),
(210, 'Huyện Yên Lập', 38, 1, 1),
(211, 'Huyện Tam Thanh', 38, 1, 1),
(212, 'Huyện Thanh Thuỷ', 38, 1, 1),
(213, 'Huyện Thanh Sơn', 38, 1, 1),
(215, 'Thị xã Bắc Giang', 7, 1, 1),
(216, 'Huyện Yên Thế', 7, 1, 1),
(217, 'Huyện Tân Yên', 7, 1, 1),
(218, 'Huyện Lục Ngạn', 7, 1, 1),
(219, 'Huyện Hiệp Hòa', 7, 1, 1),
(220, 'Huyện Lạng Giang', 7, 1, 1),
(221, 'Huyện Sơn Động', 7, 1, 1),
(222, 'Huyện Lục Nam', 7, 1, 1),
(223, 'Huyện Việt Yên', 7, 1, 1),
(224, 'Huyện Yên Dũng', 7, 1, 1),
(226, 'Thành phố Hạ Long', 43, 1, 1),
(227, 'Thị xã Cẩm Phả', 43, 1, 1),
(228, 'Thị xã Uông Bí', 43, 1, 1),
(229, 'Huyện Bình Liêu', 43, 1, 1),
(230, 'Thị Xã Móng Cái', 43, 1, 1),
(231, 'Huyện Quảng Hà', 43, 1, 1),
(232, 'Huyện Tiên Yên', 43, 1, 1),
(233, 'Huyện Ba Chẽ', 43, 1, 1),
(234, 'Huyện Vân Đồn', 43, 1, 1),
(235, 'Huyện Hoành Bồ', 43, 1, 1),
(236, 'Huyện Đông Triều', 43, 1, 1),
(237, 'Huyện Cô Tô', 43, 1, 1),
(238, 'Huyện Yên Hưng', 43, 1, 1),
(240, 'Thị xã Điện Biên Phủ', 29, 1, 1),
(241, 'Thị xã Lai Châu', 29, 1, 1),
(242, 'Huyện Mường Tè', 29, 1, 1),
(243, 'Huyện Phong Thổ', 29, 1, 1),
(244, 'Huyện Sìn Hồ', 29, 1, 1),
(245, 'Huyện Mường Lay', 29, 1, 1),
(246, 'Huyện Tủa Chùa', 29, 1, 1),
(247, 'Huyện Tuần Giáo', 29, 1, 1),
(248, 'Huyện Điện Biên', 29, 1, 1),
(249, 'Huyện Điện Biên Đông', 29, 1, 1),
(251, 'Thị xã Sơn La', 45, 1, 1),
(252, 'Huyện Quỳnh Nhai', 45, 1, 1),
(253, 'Huyện Mường La', 45, 1, 1),
(254, 'Huyện Thuận Châu', 45, 1, 1),
(255, 'Huyện Bắc Yên', 45, 1, 1),
(256, 'Huyện Phù Yên', 45, 1, 1),
(257, 'Huyện Mai Sơn', 45, 1, 1),
(258, 'Huyện Sông Mã', 45, 1, 1),
(259, 'Huyện Yên Châu', 45, 1, 1),
(260, 'Huyện Mộc Châu', 45, 1, 1),
(262, 'Thị xã Hòa Bình', 20, 1, 1),
(263, 'Huyện Đà Bắc', 20, 1, 1),
(264, 'Huyện Mai Châu', 20, 1, 1),
(265, 'Huyện Kỳ Sơn', 20, 1, 1),
(266, 'Huyện Lương Sơn', 20, 1, 1),
(267, 'Huyện Kim Bôi', 20, 1, 1),
(268, 'Huyện Tân Lạc', 20, 1, 1),
(269, 'Huyện Lạc Sơn', 20, 1, 1),
(270, 'Huyện Lạc Thủy', 20, 1, 1),
(271, 'Huyện Yên Thủy', 20, 1, 1),
(273, 'Thành phố Thanh Hóa', 46, 1, 1),
(274, 'Thị xã Bỉm Sơn', 46, 1, 1),
(275, 'Thị xã Sầm Sơn', 46, 1, 1),
(276, 'Huyện Mường Lát', 46, 1, 1),
(277, 'Huyện Quan Hóa', 46, 1, 1),
(278, 'Huyện Quan Sơn', 46, 1, 1),
(279, 'Huyện Bá Thước', 46, 1, 1),
(280, 'Huyện Cẩm Thủy', 46, 1, 1),
(281, 'Huyện Lang Chánh', 46, 1, 1),
(282, 'Huyện Thạch Thành', 46, 1, 1),
(283, 'Huyện Ngọc Lạc', 46, 1, 1),
(284, 'Huyện Thường Xuân', 46, 1, 1),
(285, 'Huyện Như Xuân', 46, 1, 1),
(286, 'Huyện Như Thanh', 46, 1, 1),
(287, 'Huyện Vĩnh Lộc', 46, 1, 1),
(288, 'Huyện Hà Trung', 46, 1, 1),
(289, 'Huyện Nga Sơn', 46, 1, 1),
(290, 'Huyện Yên Định', 46, 1, 1),
(291, 'Huyện Thọ Xuân', 46, 1, 1),
(292, 'Huyện Hậu Lộc', 46, 1, 1),
(293, 'Huyện Thiệu Hoá', 46, 1, 1),
(294, 'Huyện Hoằng Hóa', 46, 1, 1),
(295, 'Huyện Đông Sơn', 46, 1, 1),
(296, 'Huyện Triệu Sơn', 46, 1, 1),
(297, 'Huyện Quảng Xương', 46, 1, 1),
(298, 'Huyện Nông Cống', 46, 1, 1),
(299, 'Huyện Tĩnh Gia', 46, 1, 1),
(301, 'Thành phố Vinh', 35, 1, 1),
(302, 'Thị xã Cửa Lò', 35, 1, 1),
(303, 'Huyện Quế Phong', 35, 1, 1),
(304, 'Huyện Quỳ Châu', 35, 1, 1),
(305, 'Huyện Kỳ Sơn', 35, 1, 1),
(306, 'Huyện Quỳ Hợp', 35, 1, 1),
(307, 'Huyện Nghĩa Đàn', 35, 1, 1),
(308, 'Huyện Tương Dương', 35, 1, 1),
(309, 'Huyện Quỳnh Lưu', 35, 1, 1),
(310, 'Huyện Tân Kỳ', 35, 1, 1),
(311, 'Huyện Con Cuông', 35, 1, 1),
(312, 'Huyện Yên Thành', 35, 1, 1),
(313, 'Huyện Diễn Châu', 35, 1, 1),
(314, 'Huyện Anh Sơn', 35, 1, 1),
(315, 'Huyện Đô Lương', 35, 1, 1),
(316, 'Huyện Thanh Chương', 35, 1, 1),
(317, 'Huyện Nghi Lộc', 35, 1, 1),
(318, 'Huyện Nam Đàn', 35, 1, 1),
(319, 'Huyện Hưng Nguyên', 35, 1, 1),
(321, 'Thị xã Hà Tĩnh', 19, 1, 1),
(322, 'Thị xã Hồng Lĩnh', 19, 1, 1),
(323, 'Huyện Nghi Xuân', 19, 1, 1),
(324, 'Huyện Đức Thọ', 19, 1, 1),
(325, 'Huyện Hương Sơn', 19, 1, 1),
(326, 'Huyện Can Lộc', 19, 1, 1),
(327, 'Huyện Thạch Hà', 19, 1, 1),
(328, 'Huyện Cẩm Xuyên', 19, 1, 1),
(329, 'Huyện Hương Khê', 19, 1, 1),
(330, 'Huyện Kỳ Anh', 19, 1, 1),
(332, 'Thị xã Đồng Hới', 40, 1, 1),
(333, 'Huyện Tuyên Hóa', 40, 1, 1),
(334, 'Huyện Minh Hóa', 40, 1, 1),
(335, 'Huyện Quảng Trạch', 40, 1, 1),
(336, 'Huyện Bố Trạch', 40, 1, 1),
(337, 'Huyện Quảng Ninh', 40, 1, 1),
(338, 'Huyện Lệ Thủy', 40, 1, 1),
(340, 'Thị xã Đông Hà', 44, 1, 1),
(341, 'Thị xã Quảng Trị', 44, 1, 1),
(342, 'Huyện Vĩnh Linh', 44, 1, 1),
(343, 'Huyện Gio Linh', 44, 1, 1),
(344, 'Huyện Cam Lộ', 44, 1, 1),
(345, 'Huyện Triệu Phong', 44, 1, 1),
(346, 'Huyện Hải Lăng', 44, 1, 1),
(347, 'Huyện Hướng Hóa', 44, 1, 1),
(348, 'Huyện Đa Krông', 44, 1, 1),
(350, 'Thành phố Huế', 49, 1, 1),
(351, 'Huyện Phong Điền', 49, 1, 1),
(352, 'Huyện Quảng Điền', 49, 1, 1),
(353, 'Huyện Hương Trà', 49, 1, 1),
(354, 'Huyện Phú Vang', 49, 1, 1),
(355, 'Huyện Hương Thủy', 49, 1, 1),
(356, 'Huyện Phú Lộc', 49, 1, 1),
(357, 'Huyện A Lưới', 49, 1, 1),
(358, 'Huyện Nam Đông', 49, 1, 1),
(360, 'Quận Hải Châu', 57, 1, 1),
(361, 'Quận Thanh Khê', 57, 1, 1),
(362, 'Quận Sơn Trà', 57, 1, 1),
(363, 'Quận Ngũ Hành Sơn', 57, 1, 1),
(364, 'Quận Liên Chiểu', 57, 1, 1),
(365, 'Huyện Hoà Vang', 57, 1, 1),
(366, 'Huyện Đảo Hoàng Sa', 57, 1, 1),
(368, 'Thị xã Tam Kỳ', 41, 1, 1),
(369, 'Thị xã Hội An', 41, 1, 1),
(370, 'Huyện Hiên', 41, 1, 1),
(371, 'Huyện Đại Lộc', 41, 1, 1),
(372, 'Huyện Điện Bàn', 41, 1, 1),
(373, 'Huyện Duy Xuyên', 41, 1, 1),
(374, 'Huyện Giằng', 41, 1, 1),
(375, 'Huyện Thăng Bình', 41, 1, 1),
(376, 'Huyện Quế Sơn', 41, 1, 1),
(377, 'Huyện Hiệp Đức', 41, 1, 1),
(378, 'Huyện Tiên Phước', 41, 1, 1),
(379, 'Huyện Phước Sơn', 41, 1, 1),
(380, 'Huyện Núi Thành', 41, 1, 1),
(381, 'Huyện Trà My', 41, 1, 1),
(383, 'Thị xã Quảng Ngãi', 42, 1, 1),
(384, 'Huyện Lý Sơn', 42, 1, 1),
(385, 'Huyện Bình Sơn', 42, 1, 1),
(386, 'Huyện Trà Bồng', 42, 1, 1),
(387, 'Huyện Sơn Tịnh', 42, 1, 1),
(388, 'Huyện Sơn Tây', 42, 1, 1),
(389, 'Huyện Sơn Hà', 42, 1, 1),
(390, 'Huyện Tư Nghĩa', 42, 1, 1),
(391, 'Huyện Nghĩa Hành', 42, 1, 1),
(392, 'Huyện Minh Long', 42, 1, 1),
(393, 'Huyện Mộ Đức', 42, 1, 1),
(394, 'Huyện Đức Phổ', 42, 1, 1),
(395, 'Huyện Ba Tơ', 42, 1, 1),
(397, 'Thành phố Qui Nhơn', 6, 1, 1),
(398, 'Huyện An Lão', 6, 1, 1),
(399, 'Huyện Hoài Nhơn', 6, 1, 1),
(400, 'Huyện Hoài Ân', 6, 1, 1),
(401, 'Huyện Phù Mỹ', 6, 1, 1),
(402, 'Huyện Vĩnh Thạnh', 6, 1, 1),
(403, 'Huyện Phù Cát', 6, 1, 1),
(404, 'Huyện Tây Sơn', 6, 1, 1),
(405, 'Huyện An Nhơn', 6, 1, 1),
(406, 'Huyện Tuy Phước', 6, 1, 1),
(407, 'Huyện Vân Canh', 6, 1, 1),
(409, 'Thành phố Tuy Hòa', 39, 1, 1),
(410, 'Huyện Đồng Xuân', 39, 1, 1),
(411, 'Huyện Sông Cầu', 39, 1, 1),
(412, 'Huyện Tuy An', 39, 1, 1),
(413, 'Huyện Sơn Hòa', 39, 1, 1),
(414, 'Huyện Đông Hòa', 39, 1, 1),
(415, 'Huyện Sông Hinh', 39, 1, 1),
(417, 'Thành phố Nha Trang', 25, 1, 1),
(418, 'Huyện Vạn Ninh', 25, 1, 1),
(419, 'Huyện Ninh Hòa', 25, 1, 1),
(420, 'Huyện Diên Khánh', 25, 1, 1),
(421, 'Huyện Cam Ranh', 25, 1, 1),
(422, 'Huyện Khánh Vĩnh', 25, 1, 1),
(423, 'Huyện Khánh Sơn', 25, 1, 1),
(424, 'Huyện Trường Sa', 25, 1, 1),
(426, 'Thị xã Kon Tum', 28, 1, 1),
(427, 'Huyện Đắk Glei', 28, 1, 1),
(428, 'Huyện Ngọc Hồi', 28, 1, 1),
(429, 'Huyện Đắk Tô', 28, 1, 1),
(430, 'Huyện Kon Plông', 28, 1, 1),
(431, 'Huyện Đak Hà', 28, 1, 1),
(432, 'Huyện Sa Thầy', 28, 1, 1),
(434, 'Thị xã Pleiku', 14, 1, 1),
(435, 'Huyện KBang', 14, 1, 1),
(436, 'Huyện Mang Yang', 14, 1, 1),
(437, 'Huyện Chư Păh', 14, 1, 1),
(438, 'Huyện Ia Grai', 14, 1, 1),
(439, 'Huyện An Khê', 14, 1, 1),
(440, 'Huyện Kông Chro', 14, 1, 1),
(441, 'Huyện Đức Cơ', 14, 1, 1),
(442, 'Huyện Chư Prông', 14, 1, 1),
(443, 'Huyện Chư Sê', 14, 1, 1),
(444, 'Huyện Ayun Pa', 14, 1, 1),
(445, 'Huyện Krông Pa', 14, 1, 1),
(447, 'Thành phố Buôn Ma Thuột', 58, 1, 1),
(448, 'Huyện Ea H''leo', 58, 1, 1),
(449, 'Huyện Ea Súp', 58, 1, 1),
(450, 'Huyện Krông Năng', 58, 1, 1),
(451, 'Huyện Krông Búk', 58, 1, 1),
(452, 'Huyện Buôn Đôn', 58, 1, 1),
(453, 'Huyện Cư M''gar', 58, 1, 1),
(454, 'Huyện Ea Kar', 58, 1, 1),
(455, 'Huyện M''Đrắk', 58, 1, 1),
(456, 'Huyện Krông Pắc', 58, 1, 1),
(457, 'Huyện Cư Jút', 64, 1, 1),
(458, 'Huyện Krông A Na', 58, 1, 1),
(459, 'Huyện Krông Bông', 58, 1, 1),
(460, 'Huyện Đắk Mil', 64, 1, 1),
(461, 'Huyện Krông Nô', 64, 1, 1),
(462, 'Huyện Lắk', 58, 1, 1),
(463, 'Huyện Đắk R''Lấp', 58, 1, 1),
(464, 'Huyện Đăk Glong', 64, 1, 1),
(466, 'Quận 1', 24, 1, 1),
(467, 'Quận 2', 24, 2, 1),
(468, 'Quận 3', 24, 1, 1),
(469, 'Quận 4', 24, 1, 1),
(470, 'Quận 5', 24, 1, 1),
(471, 'Quận 6', 24, 1, 1),
(472, 'Quận 7', 24, 1, 1),
(473, 'Quận 8', 24, 1, 1),
(474, 'Quận 9', 24, 1, 1),
(475, 'Quận 10', 24, 1, 1),
(476, 'Quận 11', 24, 1, 1),
(477, 'Quận 12', 24, 1, 1),
(478, 'Quận Gò Vấp', 24, 1, 1),
(479, 'Quận Tân Bình', 24, 1, 1),
(480, 'Quận Bình Thạnh', 24, 1, 1),
(481, 'Quận Phú Nhuận', 24, 1, 1),
(482, 'Quận Thủ Đức', 24, 1, 1),
(483, 'Huyện Củ Chi', 24, 1, 1),
(484, 'Huyện Hóc Môn', 24, 1, 1),
(485, 'Huyện Bình Chánh', 24, 1, 1),
(486, 'Huyện Nhà Bè', 24, 1, 1),
(487, 'Huyện Cần Giờ', 24, 1, 1),
(489, 'Thành phố Đà Lạt', 32, 1, 1),
(490, 'Thị xã Bảo Lộc', 32, 1, 1),
(491, 'Huyện Lạc Dương', 32, 1, 1),
(492, 'Huyện Đơn Dương', 32, 1, 1),
(493, 'Huyện Đức Trọng', 32, 1, 1),
(494, 'Huyện Lâm Hà', 32, 1, 1),
(495, 'Huyện Bảo Lâm', 32, 1, 1),
(496, 'Huyện Di Linh', 32, 1, 1),
(497, 'Huyện Đạ Huoai', 32, 1, 1),
(498, 'Huyện Đạ Tẻh', 32, 1, 1),
(499, 'Huyện Cát Tiên', 32, 1, 1),
(501, 'Thị xã Phan Rang-Tháp Chàm', 37, 1, 1),
(502, 'Huyện Ninh Sơn', 37, 1, 1),
(503, 'Huyện Ninh Hải', 37, 1, 1),
(504, 'Huyện Ninh Phước', 37, 1, 1),
(506, 'Huyện Đồng Phú', 4, 1, 1),
(507, 'Huyện Phước Long', 4, 1, 1),
(508, 'Huyện Lộc Ninh', 4, 1, 1),
(509, 'Huyện Bù Đăng', 4, 1, 1),
(510, 'Huyện Bình Long', 4, 1, 1),
(512, 'Thị xã Tây Ninh', 53, 1, 1),
(513, 'Huyện Tân Biên', 53, 1, 1),
(514, 'Huyện Tân Châu', 53, 1, 1),
(515, 'Huyện Dương Minh Châu', 53, 1, 1),
(516, 'Huyện Châu Thành', 53, 1, 1),
(517, 'Huyện Hòa Thành', 53, 1, 1),
(518, 'Huyện Bến Cầu', 53, 1, 1),
(519, 'Huyện Gò Dầu', 53, 1, 1),
(520, 'Huyện Trảng Bàng', 53, 1, 1),
(522, 'Thị xã Thủ Dầu Một', 3, 1, 1),
(523, 'Huyện Bến Cát', 3, 1, 1),
(524, 'Huyện Tân Uyên', 3, 1, 1),
(525, 'Huyện Thuận An', 3, 1, 1),
(527, 'Thành phố Biên Hòa', 59, 1, 1),
(528, 'Huyện Tân Phú', 59, 1, 1),
(529, 'Huyện Định Quán', 59, 1, 1),
(530, 'Huyện Vĩnh Cừu', 59, 1, 1),
(531, 'Huyện Thống Nhất', 59, 1, 1),
(532, 'Huyện Long Khánh', 59, 1, 1),
(533, 'Huyện Xuân Lộc', 59, 1, 1),
(534, 'Huyện Long Thành', 59, 1, 1),
(535, 'Huyện Nhơn Trạch', 59, 1, 1),
(537, 'Thị xã Phan Thiết', 5, 1, 1),
(538, 'Huyện Tuy Phong', 5, 1, 1),
(539, 'Huyện Bắc Bình', 5, 1, 1),
(540, 'Huyện Hàm Thuận Bắc', 5, 1, 1),
(541, 'Huyện Hàm Thuận Nam', 5, 1, 1),
(542, 'Huyện Tánh Linh', 5, 1, 1),
(543, 'Huyện Hàm Tân', 5, 1, 1),
(544, 'Huyện Đức Linh', 5, 1, 1),
(545, 'Huyện Phú Quí', 5, 1, 1),
(547, 'Thành phố Vũng Tầu', 2, 1, 1),
(548, 'Thị xã Bà Rịa', 2, 1, 1),
(549, 'Huyện Châu Đức', 2, 1, 1),
(550, 'Huyện Xuyên Mộc', 2, 1, 1),
(551, 'Huyện Tân Thành', 2, 1, 1),
(552, 'Huyện Long Đất', 2, 1, 1),
(553, 'Huyện Côn Đảo', 2, 1, 1),
(555, 'Thị xã Tân An', 30, 1, 1),
(556, 'Huyện Tân Hưng', 30, 1, 1),
(557, 'Huyện Vĩnh Hưng', 30, 1, 1),
(558, 'Huyện Mộc Hóa', 30, 1, 1),
(559, 'Huyện Tân Thạnh', 30, 1, 1),
(560, 'Huyện Thạnh Hóa', 30, 1, 1),
(561, 'Huyện Đức Huệ', 30, 1, 1),
(562, 'Huyện Đức Hòa', 30, 1, 1),
(563, 'Huyện Bến Lức', 30, 1, 1),
(564, 'Huyện Thủ Thừa', 30, 1, 1),
(565, 'Huyện Châu Thành', 30, 1, 1),
(566, 'Huyện Tân Trụ', 30, 1, 1),
(567, 'Huyện Cần Đước', 30, 1, 1),
(568, 'Huyện Cần Giuộc', 30, 1, 1),
(570, 'Thị xã Cao Lãnh', 60, 1, 1),
(571, 'Thị xã Sa Đéc', 60, 1, 1),
(572, 'Huyện Tân Hồng', 60, 1, 1),
(573, 'Huyện Hồng Ngự', 60, 1, 1),
(574, 'Huyện Tam Nông', 60, 1, 1),
(575, 'Huyện Thanh Bình', 60, 1, 1),
(576, 'Huyện Tháp Mười', 60, 1, 1),
(577, 'Huyện Cao Lãnh', 60, 1, 1),
(578, 'Huyện Lấp Vò', 60, 1, 1),
(579, 'Huyện Lai Vung', 60, 1, 1),
(580, 'Huyện Châu Thành', 60, 1, 1),
(582, 'Thành Phố Long Xuyên', 1, 1, 1),
(583, 'Thị xã Châu Đốc', 1, 1, 1),
(584, 'Huyện An Phú', 1, 1, 1),
(585, 'Huyện Tân Châu', 1, 1, 1),
(586, 'Huyện Phú Tân', 1, 1, 1),
(587, 'Huyện Châu Phú', 1, 1, 1),
(588, 'Huyện Tịnh Biên', 1, 1, 1),
(589, 'Huyện Tri Tôn', 1, 1, 1),
(590, 'Huyện Chợ Mới', 1, 1, 1),
(591, 'Huyện Châu Thành', 1, 1, 1),
(592, 'Huyện Thoại Sơn', 1, 1, 1),
(594, 'Thành phố Mỹ Tho', 50, 1, 1),
(595, 'Thị xã Gò Công', 50, 1, 1),
(596, 'Huyện Tân Phước', 50, 1, 1),
(597, 'Huyện Châu Thành', 50, 1, 1),
(598, 'Huyện Cai Lậy', 50, 1, 1),
(599, 'Huyện Chợ Gạo', 50, 1, 1),
(600, 'Huyện Cái Bè', 50, 1, 1),
(601, 'Huyện Gò Công Tây', 50, 1, 1),
(602, 'Huyện Gò Công Đông', 50, 1, 1),
(604, 'Thị xã Vĩnh Long', 54, 1, 1),
(605, 'Huyện Long Hồ', 54, 1, 1),
(606, 'Huyện Mang Thít', 54, 1, 1),
(607, 'Huyện Bình Minh', 54, 1, 1),
(608, 'Huyện Tam Bình', 54, 1, 1),
(609, 'Huyện Trà Ôn', 54, 1, 1),
(610, 'Huyện Vũng Liêm', 54, 1, 1),
(612, 'Thị xã Bến Tre', 10, 1, 1),
(613, 'Huyện Châu Thành', 10, 1, 1),
(614, 'Huyện Chợ Lách', 10, 1, 1),
(615, 'Huyện Mỏ Cày', 10, 1, 1),
(616, 'Huyện Giồng Trôm', 10, 1, 1),
(617, 'Huyện Bình Đại', 10, 1, 1),
(618, 'Huyện Ba Tri', 10, 1, 1),
(619, 'Huyện Thạnh Phú', 10, 1, 1),
(621, 'Thị xã Rạch Giá', 27, 1, 1),
(622, 'Huyện Hà Tiên', 27, 1, 1),
(623, 'Huyện Hòn Đất', 27, 1, 1),
(624, 'Huyện Tân Hiệp', 27, 1, 1),
(625, 'Huyện Châu Thành', 27, 1, 1),
(626, 'Huyện Giồng Giềng', 27, 1, 1),
(627, 'Huyện Gò Quao', 27, 1, 1),
(628, 'Huyện An Biên', 27, 1, 1),
(629, 'Huyện An Minh', 27, 1, 1),
(630, 'Huyện Vĩnh Thuận', 27, 1, 1),
(631, 'Huyện Phú Quốc', 27, 1, 1),
(632, 'Huyện Kiên Hải', 27, 1, 1),
(633, 'Thị xã Hà Tiên', 27, 1, 1),
(635, 'Thành phố Cần Thơ', 13, 1, 1),
(636, 'Thị xã Vị Thanh', 13, 1, 1),
(637, 'Huyện Thốt Nốt', 13, 1, 1),
(638, 'Huyện Ô Môn', 13, 1, 1),
(639, 'Huyện Châu Thành', 13, 1, 1),
(640, 'Huyện Phụng Hiệp', 13, 1, 1),
(641, 'Huyện Vị Thuỷ', 13, 1, 1),
(642, 'Huyện Long Mỹ', 13, 1, 1),
(644, 'Thị xã Trà Vinh', 51, 1, 1),
(645, 'Huyện Càng Long', 51, 1, 1),
(646, 'Huyện Châu Thành', 51, 1, 1),
(647, 'Huyện Cầu Kè', 51, 1, 1),
(648, 'Huyện Tiểu Cần', 51, 1, 1),
(649, 'Huyện Cầu Ngang', 51, 1, 1),
(650, 'Huyện Trà Cú', 51, 1, 1),
(651, 'Huyện Duyên Hải', 51, 1, 1),
(653, 'Thị xã Sóc Trăng', 62, 1, 1),
(654, 'Huyện Kế Sách', 62, 1, 1),
(655, 'Huyện Long Phú', 62, 1, 1),
(656, 'Huyện Mỹ Tú', 62, 1, 1),
(657, 'Huyện Mỹ Xuyên', 62, 1, 1),
(658, 'Huyện Thạnh Trị', 62, 1, 1),
(659, 'Huyện Vĩnh Châu', 62, 1, 1),
(661, 'Thị xã Bạc Liêu', 61, 1, 1),
(662, 'Huyện Hồng Dân', 61, 1, 1),
(663, 'Huyện Vĩnh Lợi', 61, 1, 1),
(664, 'Huyện Giá Rai', 61, 1, 1),
(666, 'Thị xã Cà Mau', 12, 1, 1),
(667, 'Huyện Thới Bình', 12, 1, 1),
(668, 'Huyện U Minh', 12, 1, 1),
(669, 'Huyện Trần Văn Thời', 12, 1, 1),
(670, 'Huyện Cái Nước', 12, 1, 1),
(671, 'Huyện Đầm Dơi', 12, 1, 1),
(672, 'Huyện Ngọc Hiển', 12, 1, 1),
(673, 'Huyện Đắk Song', 64, 1, 1),
(674, 'Thị xã Gia Nghĩa', 64, 1, 1),
(675, 'Huyện Tuy Đức', 64, 1, 1),
(676, 'Huyện Phú Hòa', 39, 1, 1),
(677, 'Huyện Tây Hoà', 39, 1, 1),
(678, 'Thị xã Đồng Xoài', 4, 1, 1),
(679, 'Quận Bình Tân', 24, 1, 1),
(680, 'Quận Tân Phú', 24, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `table_setting`
--

CREATE TABLE IF NOT EXISTS `table_setting` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `keywords` varchar(1024) NOT NULL,
  `description` varchar(1024) NOT NULL,
  `datve` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `ten_vi` varchar(255) NOT NULL,
  `ten_en` varchar(255) NOT NULL,
  `slogan_vi` varchar(255) NOT NULL,
  `slogan_en` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `dienthoai` varchar(255) NOT NULL,
  `diachi_vi` varchar(255) NOT NULL,
  `diachi_en` varchar(255) NOT NULL,
  `hotline` varchar(255) NOT NULL,
  `toado` varchar(255) NOT NULL,
  `bando` text NOT NULL,
  `website` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `analytics` text NOT NULL,
  `vchat` text NOT NULL,
  `lunchservice_vi` varchar(1000) NOT NULL,
  `dinnerservice_vi` varchar(1000) NOT NULL,
  `lunchservice_en` varchar(1000) NOT NULL,
  `dinnerservice_en` varchar(1000) NOT NULL,
  `giomocua` int(2) NOT NULL,
  `giodongcua` int(2) NOT NULL,
  `thu2` varchar(225) NOT NULL,
  `chunhat` varchar(225) NOT NULL,
  `tenph` varchar(225) NOT NULL,
  `dienthoaiph` varchar(225) NOT NULL,
  `emailph` varchar(225) NOT NULL,
  `ngoaigio` varchar(225) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `table_setting`
--

INSERT INTO `table_setting` (`id`, `title`, `keywords`, `description`, `datve`, `photo`, `ten_vi`, `ten_en`, `slogan_vi`, `slogan_en`, `email`, `dienthoai`, `diachi_vi`, `diachi_en`, `hotline`, `toado`, `bando`, `website`, `facebook`, `analytics`, `vchat`, `lunchservice_vi`, `dinnerservice_vi`, `lunchservice_en`, `dinnerservice_en`, `giomocua`, `giodongcua`, `thu2`, `chunhat`, `tenph`, `dienthoaiph`, `emailph`, `ngoaigio`) VALUES
(1, 'Khách sạn Nhi Nhi', 'Khách sạn Nhi Nhi', 'Khách sạn Nhi Nhi', '', 'thanhtoan-6679.png', 'Khách sạn Nhi Nhi', 'PTSC Holtel', '', '', 'example@gmail.com', '', '155A Nam Ky Khoi Nghia - Ward 6 - District 3 - HCMC', '155A Nam Ky Khoi Nghia - Ward 6 - District 3 - HCMC', '0917 220 676', '10.801976223725632,106.70027554027001', '', 'http://www.example.com', 'https://www.facebook.com/BIGBANG/', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `table_slider`
--

CREATE TABLE IF NOT EXISTS `table_slider` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_vitri` int(11) NOT NULL,
  `slider_vi` varchar(225) NOT NULL,
  `slider_en` varchar(225) NOT NULL,
  `ten_vi` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ten_en` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `mota` text NOT NULL,
  `stt` int(10) unsigned NOT NULL DEFAULT '1',
  `hienthi` tinyint(1) NOT NULL DEFAULT '1',
  `com` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `table_slider`
--

INSERT INTO `table_slider` (`id`, `id_vitri`, `slider_vi`, `slider_en`, `ten_vi`, `ten_en`, `link`, `mota`, `stt`, `hienthi`, `com`) VALUES
(4, 0, 'banner-4026.png', '', '', '', '', '', 1, 1, 'banner_top'),
(7, 0, 'logo-1337.png', '', '', '', '', '', 1, 1, 'banner_giua'),
(13, 0, '6407029.jpg', '', 'hình 1', '', '', '', 1, 1, 'banner_phai');

-- --------------------------------------------------------

--
-- Table structure for table `table_tags`
--

CREATE TABLE IF NOT EXISTS `table_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten_vi` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tenkhongdau` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `hienthi` int(2) NOT NULL,
  `ngaytao` int(11) NOT NULL,
  `ngaysua` int(11) NOT NULL,
  `noibat` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keywords` varchar(1024) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(1024) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `stt` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `table_tags`
--

INSERT INTO `table_tags` (`id`, `ten_vi`, `tenkhongdau`, `hienthi`, `ngaytao`, `ngaysua`, `noibat`, `photo`, `thumb`, `title`, `keywords`, `description`, `stt`) VALUES
(1, 'Áo cưới', 'ao-cuoi', 1, 1459481094, 1459492887, 0, '', '', 'Áo cưới', 'Áo cưới', 'Áo cưới', 1),
(2, 'Nokia', 'nokia', 1, 1459481109, 0, 0, '', '', '', '', '', 1),
(3, '6s', '6s', 1, 1459481120, 0, 0, '', '', '', '', '', 1),
(4, '6s Plus', '6s-plus', 1, 1459481128, 0, 0, '', '', '', '', '', 1),
(5, 'Galaxy', 'galaxy', 1, 1459481134, 0, 0, '', '', '', '', '', 1),
(6, 'gallaxy s7', 'gallaxy-s7', 1, 1459493748, 0, 0, '', '', '', '', '', 1),
(7, 'Iphone 7', 'iphone-7', 1, 1459493757, 0, 0, '', '', '', '', '', 1),
(8, 'iphone SE', 'iphone-se', 1, 1459493765, 0, 0, '', '', '', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `table_thanhvien`
--

CREATE TABLE IF NOT EXISTS `table_thanhvien` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gioithieu` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(225) NOT NULL,
  `hoten` varchar(225) NOT NULL,
  `dienthoai` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `diachi` varchar(225) NOT NULL,
  `gioitinh` varchar(100) NOT NULL,
  `ngaysinh` varchar(100) NOT NULL,
  `noidung` text NOT NULL,
  `stt` int(10) unsigned NOT NULL,
  `hienthi` tinyint(1) NOT NULL DEFAULT '0',
  `ngaytao` int(10) unsigned NOT NULL,
  `ngaysua` int(10) unsigned NOT NULL,
  `photo` varchar(225) NOT NULL,
  `keycode` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `trangthai` int(2) NOT NULL,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `table_tinh`
--

CREATE TABLE IF NOT EXISTS `table_tinh` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `hienthi` tinyint(1) NOT NULL DEFAULT '1',
  `stt` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=68 ;

--
-- Dumping data for table `table_tinh`
--

INSERT INTO `table_tinh` (`id`, `ten`, `hienthi`, `stt`) VALUES
(48, 'Thái Nguyên', 1, 0),
(47, 'Thái Bình', 1, 0),
(46, 'Thanh Hóa', 1, 0),
(45, 'Sơn La', 1, 0),
(44, 'Quảng Trị', 1, 0),
(43, 'Quảng Ninh', 1, 0),
(42, 'Quảng Ngãi', 1, 0),
(41, 'Quảng Nam', 1, 0),
(40, 'Quảng Bình', 1, 0),
(39, 'Phú Yên', 1, 0),
(38, 'Phú Thọ', 1, 0),
(37, 'Ninh Thuận', 1, 0),
(36, 'Ninh Bình', 1, 0),
(35, 'Nghệ An', 1, 0),
(34, 'Nam Định', 1, 0),
(33, 'Lạng Sơn', 1, 0),
(32, 'Lâm Đồng', 1, 0),
(31, 'Lào Cai', 1, 0),
(30, 'Long An', 1, 0),
(29, 'Lai Châu', 1, 0),
(28, 'Kon Tum', 1, 0),
(27, 'Kiên Giang', 1, 0),
(25, 'Khánh Hòa', 1, 0),
(24, 'Hồ Chí Minh', 1, 0),
(23, 'Hải Phòng', 1, 0),
(22, 'Hải Dương', 1, 0),
(21, 'Hưng Yên', 1, 0),
(20, 'Hòa Bình', 1, 0),
(19, 'Hà Tĩnh', 1, 0),
(18, 'Hà Tây', 1, 0),
(17, 'Hà Nội', 1, 0),
(16, 'Hà Nam', 1, 0),
(15, 'Hà Giang', 1, 0),
(14, 'Gia Lai', 1, 0),
(13, 'Cần Thơ', 1, 0),
(12, 'Cà Mau', 1, 0),
(11, 'Cao Bằng', 1, 0),
(10, 'Bến Tre', 1, 0),
(9, 'Bắc Ninh', 1, 0),
(8, 'Bắc Kạn', 1, 0),
(7, 'Bắc Giang', 1, 0),
(6, 'Bình Định', 1, 0),
(5, 'Bình Thuận', 1, 0),
(4, 'Bình Phước', 1, 0),
(3, 'Bình Dương', 1, 0),
(2, 'Bà Rịa - Vũng Tầu', 1, 0),
(1, 'An Giang', 1, 0),
(49, 'Thừa Thiên - Huế', 1, 0),
(50, 'Tiền Giang', 1, 0),
(51, 'Trà Vinh', 1, 0),
(52, 'Tuyên Quang', 1, 0),
(53, 'Tây Ninh', 1, 0),
(54, 'Vĩnh Long', 1, 0),
(55, 'Vĩnh Phúc', 1, 0),
(56, 'Yên Bái', 1, 0),
(57, 'Đà Nẵng', 1, 0),
(58, 'Đắk Lắk', 1, 0),
(59, 'Đồng Nai', 1, 0),
(60, 'Đồng Tháp', 1, 0),
(61, 'Bạc Liêu', 1, 0),
(62, 'Sóc Trăng', 1, 0),
(63, 'Hậu Giang', 1, 0),
(64, 'Đắk Nông', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `table_tinhtrang`
--

CREATE TABLE IF NOT EXISTS `table_tinhtrang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `trangthai` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `table_tinhtrang`
--

INSERT INTO `table_tinhtrang` (`id`, `trangthai`) VALUES
(1, 'Mới đặt'),
(2, 'Đã xác nhận'),
(3, 'Đang giao hàng'),
(4, 'Đã giao'),
(5, 'Đã hủy');

-- --------------------------------------------------------

--
-- Table structure for table `table_title`
--

CREATE TABLE IF NOT EXISTS `table_title` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ten` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `table_title`
--

INSERT INTO `table_title` (`id`, `ten`) VALUES
(1, 'Spa Sứ Trắng');

-- --------------------------------------------------------

--
-- Table structure for table `table_user`
--

CREATE TABLE IF NOT EXISTS `table_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `ten` varchar(225) NOT NULL,
  `dienthoai` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `diachi` varchar(225) NOT NULL,
  `sex` tinyint(1) NOT NULL DEFAULT '0',
  `nick_yahoo` varchar(225) NOT NULL,
  `nick_skype` varchar(225) NOT NULL,
  `congty` varchar(225) NOT NULL,
  `country` varchar(225) NOT NULL,
  `city` varchar(225) NOT NULL,
  `quyen` varchar(255) NOT NULL,
  `role` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `hienthi` tinyint(1) NOT NULL DEFAULT '1',
  `com` varchar(225) NOT NULL DEFAULT 'user',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `table_user`
--

INSERT INTO `table_user` (`id`, `username`, `password`, `ten`, `dienthoai`, `email`, `diachi`, `sex`, `nick_yahoo`, `nick_skype`, `congty`, `country`, `city`, `quyen`, `role`, `hienthi`, `com`) VALUES
(3, 'admin', 'fbc14e7c3ac817e98f0ae858355e8177', 'Nguyễn Đình Hiếu', '01212901191', 'nguyenhieunina@gmail.com', '', 0, '', '', '', '', '', '', 3, 1, 'user'),
(10, 'anhh', '252a8fc0934e69e52a16fb6b74e19060', '', '', '', '', 1, '', '', '', '', '', '', 3, 1, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `table_video`
--

CREATE TABLE IF NOT EXISTS `table_video` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `noibat` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `photo` varchar(225) NOT NULL,
  `thumb` varchar(225) NOT NULL,
  `ten_vi` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tenkhongdau` varchar(255) NOT NULL,
  `links` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `keywords` varchar(1024) NOT NULL,
  `description` varchar(1024) NOT NULL,
  `ten_en` varchar(255) NOT NULL,
  `stt` int(10) unsigned NOT NULL DEFAULT '1',
  `hienthi` tinyint(1) NOT NULL DEFAULT '1',
  `ngaytao` int(11) NOT NULL,
  `ngaysua` int(11) NOT NULL,
  `luotxem` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `table_video`
--

INSERT INTO `table_video` (`id`, `noibat`, `type`, `photo`, `thumb`, `ten_vi`, `tenkhongdau`, `links`, `title`, `keywords`, `description`, `ten_en`, `stt`, `hienthi`, `ngaytao`, `ngaysua`, `luotxem`) VALUES
(1, 0, 'video', '365366197263bernardo141edit-6546.jpg', '365366197263bernardo141edit-6546_790x320.jpg', 'Marijuana Jungle Juice Bowl with Banana Leaf Straws', 'marijuana-jungle-juice-bowl-with-banana-leaf-straws', 'https://www.youtube.com/watch?v=L0e3o2CfYkU', '', '', '', 'Marijuana Jungle Juice Bowl with Banana Leaf Straws', 1, 1, 1461163893, 1468894205, 12),
(2, 0, 'video', '365362188142webedit57-467.jpg', '365362188142webedit57-467_790x320.jpg', 'Nước Ép Táo', 'nuoc-ep-tao', 'https://www.youtube.com/watch?v=kI3_4hbsJsU', '', '', '', '빅뱅 BIGBANG - GD & TOP FULL ALBUM', 2, 1, 1461163917, 1468894157, 13);

-- --------------------------------------------------------

--
-- Table structure for table `table_yahoo`
--

CREATE TABLE IF NOT EXISTS `table_yahoo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ten` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `yahoo` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `skype` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `dienthoai` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `stt` int(3) NOT NULL,
  `hienthi` int(2) NOT NULL,
  `ngaytao` int(10) NOT NULL,
  `ngaysua` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=14 ;

--
-- Dumping data for table `table_yahoo`
--

INSERT INTO `table_yahoo` (`id`, `ten`, `yahoo`, `skype`, `dienthoai`, `email`, `stt`, `hienthi`, `ngaytao`, `ngaysua`) VALUES
(13, 'Mr. Hiếu', 'hieunguyenit88', '', '0908797982', '', 1, 1, 1450094141, 1468810666);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
