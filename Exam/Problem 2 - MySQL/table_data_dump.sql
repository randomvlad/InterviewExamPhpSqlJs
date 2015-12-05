-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.6.13-log - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             8.1.0.4545
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table interview_problem.fb_ads
DROP TABLE IF EXISTS `fb_ads`;
CREATE TABLE IF NOT EXISTS `fb_ads` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table interview_problem.fb_ads: ~5 rows (approximately)
/*!40000 ALTER TABLE `fb_ads` DISABLE KEYS */;
INSERT INTO `fb_ads` (`id`, `name`, `start_date`, `end_date`) VALUES
	(1, 'Budlight', '2013-10-01 23:58:39', '2013-11-01 23:58:39'),
	(2, 'KitKat', '2013-10-15 12:00:00', '2014-06-01 00:00:00'),
	(3, 'Tempurpedic', '2013-10-17 23:58:39', '2014-08-01 00:00:00'),
	(4, 'Skittles', '2013-10-01 08:00:00', '2013-10-15 16:00:00'),
	(5, 'Heinz Ketchup', '2013-08-01 09:00:00', '2014-12-01 00:00:00');
/*!40000 ALTER TABLE `fb_ads` ENABLE KEYS */;


-- Dumping structure for table interview_problem.fb_ad_events
DROP TABLE IF EXISTS `fb_ad_events`;
CREATE TABLE IF NOT EXISTS `fb_ad_events` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fb_user_id` bigint(20) NOT NULL,
  `fb_ad_id` bigint(20) NOT NULL,
  `event_type` enum('CLICK','IMPRESSION','LIKE') NOT NULL,
  `datetime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_fb_ad_events_fb_ads` (`fb_ad_id`),
  CONSTRAINT `FK_fb_ad_events_fb_ads` FOREIGN KEY (`fb_ad_id`) REFERENCES `fb_ads` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table interview_problem.fb_ad_events: ~16 rows (approximately)
/*!40000 ALTER TABLE `fb_ad_events` DISABLE KEYS */;
INSERT INTO `fb_ad_events` (`id`, `fb_user_id`, `fb_ad_id`, `event_type`, `datetime`) VALUES
	(1, 1, 1, 'IMPRESSION', '2013-12-04 21:47:57'),
	(2, 1, 1, 'IMPRESSION', '2013-12-04 21:49:11'),
	(3, 1, 1, 'CLICK', '2013-12-04 21:49:11'),
	(5, 1, 1, 'LIKE', '2013-12-04 21:50:38'),
	(6, 2, 1, 'IMPRESSION', '2013-12-04 21:50:38'),
	(7, 2, 1, 'IMPRESSION', '2013-12-04 21:50:38'),
	(8, 2, 1, 'IMPRESSION', '2013-12-04 21:50:38'),
	(9, 3, 1, 'IMPRESSION', '2013-12-04 21:50:37'),
	(10, 3, 1, 'LIKE', '2013-12-04 21:50:37'),
	(11, 4, 1, 'IMPRESSION', '2013-12-04 21:50:37'),
	(12, 4, 1, 'CLICK', '2013-12-04 21:50:37'),
	(13, 5, 1, 'IMPRESSION', '2013-12-04 21:50:37'),
	(14, 1, 2, 'IMPRESSION', '2013-12-08 18:22:01'),
	(15, 6, 4, 'IMPRESSION', '2013-10-01 12:18:30'),
	(16, 8, 4, 'IMPRESSION', '2013-10-04 17:07:41'),
	(17, 8, 4, 'LIKE', '2013-10-04 17:07:50');
/*!40000 ALTER TABLE `fb_ad_events` ENABLE KEYS */;


-- Dumping structure for table interview_problem.fb_ad_events_corrupt
DROP TABLE IF EXISTS `fb_ad_events_corrupt`;
CREATE TABLE IF NOT EXISTS `fb_ad_events_corrupt` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fb_user_id` bigint(20) NOT NULL,
  `fb_ad_id` bigint(20) NOT NULL,
  `event_type` enum('CLICK','IMPRESSION','LIKE') NOT NULL,
  `datetime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_fb_ad_events_corrupt_fb_ads` (`fb_ad_id`),
  CONSTRAINT `FK_fb_ad_events_corrupt_fb_ads` FOREIGN KEY (`fb_ad_id`) REFERENCES `fb_ads` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table interview_problem.fb_ad_events_corrupt: ~16 rows (approximately)
/*!40000 ALTER TABLE `fb_ad_events_corrupt` DISABLE KEYS */;
INSERT INTO `fb_ad_events_corrupt` (`id`, `fb_user_id`, `fb_ad_id`, `event_type`, `datetime`) VALUES
	(1, 9901, 1, 'IMPRESSION', '2013-12-04 21:47:57'),
	(2, 1, 1, 'LIKE', '2013-12-04 21:49:11'),
	(3, 1, 1, 'CLICK', '2013-12-04 21:49:11'),
	(5, 1, 1, 'LIKE', '2013-12-04 21:50:38'),
	(6, 2, 1, 'IMPRESSION', '2013-12-04 21:50:38'),
	(7, 2, 1, 'IMPRESSION', '2013-12-04 21:50:38'),
	(8, 2, 1, 'IMPRESSION', '2013-12-04 21:50:38'),
	(9, 3, 5, 'CLICK', '2020-12-04 21:50:37'),
	(10, 3, 1, 'LIKE', '2013-12-04 21:50:37'),
	(11, 4, 1, 'IMPRESSION', '2013-12-04 21:50:37'),
	(12, 4, 1, 'CLICK', '2013-12-04 21:50:37'),
	(13, 9872, 1, 'IMPRESSION', '2013-12-04 21:50:37'),
	(14, 1, 2, 'IMPRESSION', '2013-12-08 18:22:01'),
	(15, 6, 4, 'IMPRESSION', '2013-10-01 12:18:30'),
	(16, 8, 4, 'IMPRESSION', '2018-10-04 17:07:41'),
	(17, 8, 4, 'LIKE', '2013-10-04 17:07:50');
/*!40000 ALTER TABLE `fb_ad_events_corrupt` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
