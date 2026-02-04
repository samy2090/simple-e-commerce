# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 143.244.180.82 (MySQL 5.5.5-10.6.18-MariaDB-0ubuntu0.22.04.1)
# Database: smart_home_db
# Generation Time: 2025-01-12 14:38:01 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table cache
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cache`;

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table cache_locks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cache_locks`;

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table failed_jobs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table images
# ------------------------------------------------------------

DROP TABLE IF EXISTS `images`;

CREATE TABLE `images` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) NOT NULL,
  `content_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;

INSERT INTO `images` (`id`, `filename`, `content_id`, `path`, `created_at`, `updated_at`)
VALUES
	(8,'hero.png',1,'attachments/images/hero.png','2025-01-11 11:16:50','2025-01-11 11:16:50'),
	(9,'image-1.png',2,'attachments/images/image-1.png','2025-01-11 12:41:08','2025-01-11 12:41:08'),
	(10,'brand-1.png',16,'attachments/images/brand-1.png','2025-01-11 13:18:34','2025-01-11 13:18:34'),
	(11,'brand-2.png',16,'attachments/images/brand-2.png','2025-01-11 13:18:59','2025-01-11 13:18:59'),
	(12,'brand-3.png',16,'attachments/images/brand-3.png','2025-01-11 13:19:08','2025-01-11 13:19:08'),
	(13,'image-2.png',3,'attachments/images/image-2.png','2025-01-11 13:27:44','2025-01-11 13:27:44'),
	(14,'idea.svg',7,'attachments/images/idea.svg','2025-01-11 13:28:28','2025-01-11 13:28:28'),
	(15,'condition.svg',8,'attachments/images/condition.svg','2025-01-11 13:28:43','2025-01-11 13:28:43'),
	(16,'device.svg',9,'attachments/images/device.svg','2025-01-11 13:29:08','2025-01-11 13:29:08'),
	(17,'shield.svg',10,'attachments/images/shield.svg','2025-01-11 13:29:28','2025-01-11 13:29:28'),
	(18,'energy-saving.svg',11,'attachments/images/energy-saving.svg','2025-01-11 13:29:45','2025-01-11 13:29:45'),
	(19,'web-browser.svg',12,'attachments/images/web-browser.svg','2025-01-11 13:30:08','2025-01-11 13:30:08'),
	(22,'product-3.png',15,'attachments/images/product-3.png','2025-01-11 13:30:58','2025-01-11 13:30:58'),
	(23,'components-device.png',18,'attachments/images/components-device.png','2025-01-11 13:44:21','2025-01-11 13:44:21'),
	(24,'brand-homekit.png',19,'attachments/images/brand-homekit.png','2025-01-11 13:59:52','2025-01-11 13:59:52'),
	(25,'product-8.png',20,'attachments/images/product-8.png','2025-01-11 14:01:01','2025-01-11 14:01:01'),
	(26,'hero.png',25,'attachments/images/hero.png','2025-01-12 00:30:01','2025-01-12 00:30:01'),
	(27,'product-9.png',14,'attachments/images/product-9.png','2025-01-12 14:26:04','2025-01-12 14:26:04');

/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table job_batches
# ------------------------------------------------------------

DROP TABLE IF EXISTS `job_batches`;

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table jobs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jobs`;

CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(1,'0001_01_01_000000_create_users_table',1),
	(2,'0001_01_01_000001_create_cache_table',1),
	(3,'0001_01_01_000002_create_jobs_table',1),
	(4,'2024_12_31_181836_create_images_table',1),
	(5,'2024_12_31_181953_create_site_contents_table',1),
	(6,'2025_01_02_075406_create_site_settings_table',1);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table password_reset_tokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_reset_tokens`;

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table sessions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sessions`;

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`)
VALUES
	('0oGsvpAat7HG762br3AjNmk9gI3T21PVmdBr7lAm',NULL,'185.213.175.171','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiOXFrZEk2aTNMV1RxMEFqNUpZWURFQkxVdXhFYjk1cVFKUURrRzc1TiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44Mi9TaXRlTG9hZGVyIjt9fQ==',1736679115),
	('0tgp6uspGowKUEibcn7A5WDgR1G4NkZjUIZ8tXib',NULL,'193.41.206.24','','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTU4yMEhHZzBtV0tXQXpQbnBQZ2VJVWJYbkVxZmplMWo0Z2diT2NJMyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44MiI7fX0=',1736691316),
	('0zN8HWJthpcg6mvCIAcOHrf8QLLHOBYWsGpzD9je',NULL,'185.196.220.253','Hello World','YTozOntzOjY6Il90b2tlbiI7czo0MDoiWXhieTBBNHVHMXFSeWdTYTdEQXZlWmRqZnFQVHVNaUVEd2oxd2FkdSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44MiI7fX0=',1736680752),
	('11cPgsbK8XHM5aVrSt1zNvjVkgkLVk9RQ1LJofgw',NULL,'15.236.201.80','Mozilla/5.0 (Linux; Android 7.0; SM-G892A Build/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/60.0.3112.107 Mobile Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZFVrbThGdGV1eWN1ZURkaGhFQ0hKeTZFbjhDOERCRnRUUUhGMzhPNCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44Mi9lbi93cCI7fXM6NjoibG9jYWxlIjtzOjI6ImVuIjt9',1736678565),
	('1bSn4MCaqPdo5qT524eUG880kVx2KAmINQ6uAuPT',NULL,'209.38.203.83','Mozilla/5.0 (compatible; Odin; https://docs.getodin.com/)','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRVc2dzNPZVNNMEFoSEpPMGl2dVFVVU81N1lBc0NGdThCaTlyQkJVSyI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMwOiJodHRwOi8vMTQzLjI0NC4xODAuODIvZW4vSE5BUDEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1736673425),
	('1wvGVQ3cEg3eW5Mvq5PlWK1BCwmoEHV8j5DiIxdx',NULL,'123.160.223.74','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRDdJSUZsOXgwQXU3VFUyYjdURFVnY1BwVW9RajJjU0U5ODdJbmswZCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9pcHY0LmNhc2VyaW9yYnRjLmdhIjt9fQ==',1736680889),
	('2gyzrPEayreiZOSSXdqaQJgTulNCYcf7pD5ZSelH',NULL,'139.144.52.241','curl/7.54.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUlB4OWRrRzNrVnVTYnlRenVRaUFFYXhpYmZ6cVoxQWt6dG1pbUhSMyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44Mi9odW1hbi5hc3B4P2FyZzEyPWluZm90ZWNoIjt9fQ==',1736685626),
	('2Pjws3kevtZkEpqd7BWsm1bLXoCrAzJFmAgBBTdE',NULL,'185.180.140.106','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36','YTo1OntzOjY6Il90b2tlbiI7czo0MDoiUHFrOHNKMEtjeUx4MUtSTkx5M3h2YWpHaVMzSHFWMjJYZXhGbE9hUSI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6MTg6ImZsYXNoZXI6OmVudmVsb3BlcyI7YTowOnt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44Mi9lbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1736680731),
	('3a9OisWAyGuTBpDYfJzASixzYy5qzD17KfbidgkG',NULL,'139.144.52.241','curl/7.54.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoicHpKeTZlTlVkY2dybENJaHFibm9NRlJRRmpxQUZEYVAwVkFqQTlibCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44MiI7fX0=',1736685620),
	('3Yt5xSHrAFeun4b10Dsw5yQFmtum20128QQcx8J6',NULL,'139.144.52.241','curl/7.54.0','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiamQzYkxSbUpnTEg2cWh3dzdsNVBmZVVJQmpNdFZyajZUeUc1cHNLUCI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM3OiJodHRwOi8vMTQzLjI0NC4xODAuODIvZW4vX19BZGRpdGlvbmFsIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1736685622),
	('4CgkCN70W7gPox5ukWSLHz2nrxZBK3rDIdsaacUm',NULL,'139.144.52.241','curl/7.54.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoialVjb2dZWDlEZXlDSWFHMWtXeFFjTE9yTkdsVlJSd1U1NXFESjNLWSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44MiI7fX0=',1736685617),
	('4fclsDtcGkiBcslG5KnLguAIcf4z38NjvVWSWS9u',NULL,'185.16.39.104','','YToyOntzOjY6Il90b2tlbiI7czo0MDoiM2xtZGN5cW5MOFdnNXBuZUJ2SDhxdU8xeW1GNk1RY1kxTFl4M1U0diI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319fQ==',1736673498),
	('5nTREiuup4d8Wtp8MvXTlwa0UIxjGbjnwifH3ixv',NULL,'139.144.52.241','curl/7.54.0','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiOTQwRjFyNHZ3akpiajVOQXgyTVh4MHdrNk9aMlU4VlVMd0VRaHpOZSI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM1OiJodHRwOi8vMTQzLjI0NC4xODAuODIvZW4vbWVudS5zaHRtbCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1736685619),
	('6nI7N73uXtLZdvRv8fGZnhLTKvG7KMpbnpFmnrr1',1,'154.183.11.148','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','YTo2OntzOjY6Il90b2tlbiI7czo0MDoiUXF2bnFOVGRDYmdvQ2pJa2pTY0duVmQ0S0hnZGhXdzZCVlgxN2l6SyI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo0MDoiaHR0cDovLzE0My4yNDQuMTgwLjgyL3NpdGVjb250ZW50L2NyZWF0ZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1736692605),
	('6t2hTuxdWJ9xMp8aAQOPp5jCyxShgjLew4Y4MX5p',NULL,'185.213.175.171','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiNTRjS0wzbllTYTdSNWNEdDc4TUtWTnVYSm53SXozcGNyV01qOVRsbCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44Mi9tUGxheWVyIjt9fQ==',1736679120),
	('6X0zi2OMiSl6o1Nw08XX4vmK77XoF14SN7bvJ6qx',NULL,'193.200.78.250','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46','YToyOntzOjY6Il90b2tlbiI7czo0MDoidWFPaFk3YW52d3ZpdjFYeUJOZ1dRTGl5UDFLMEhFdnRwQ2FuR25nTSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319fQ==',1736680181),
	('8aFNJgCLaWfWPWyU372wSaWMoYpjPOB0y6XrXwJy',NULL,'139.144.52.241','curl/7.54.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiMXJ4SlFYWVVteDFTS2ZQTHRtdngyMnc1V1BteTRhY3Z6YTVybUxIQyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44Mi9vd2EiO319',1736685623),
	('B6RT79WmP2zfm0Foj1Mroe3QoldUBcueXXbpmz9B',NULL,'185.180.140.106','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiVHFLc0hqUkdaR3RnS0NBbEpHSEY1ZGtyTlpDQmowVFltamJXYXdqbSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44MiI7fX0=',1736680731),
	('BGZFzOcjaccG4YJdAbRAM3zH4q6m4amMDFyK9yIB',NULL,'139.144.52.241','curl/7.54.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoibzY4VW01U2RnZUROU1FFeUZtY1VhY1IyZ04zNGU5WXZiR0EzdEFtNCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44MiI7fX0=',1736685616),
	('bJIfubWAUEJBPc4y87Zs5RI70hrmBLEqUzWGxpBt',NULL,'15.236.201.80','Mozilla/5.0 (Linux; Android 7.0; SM-G892A Build/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/60.0.3112.107 Mobile Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNEdST2IzRzFKZ2hPUkw5cnRBUmVzMm9Xd0xlSmJGSWhiclNVYW1FaiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44Mi9lbi9iYWNrdXAiO31zOjY6ImxvY2FsZSI7czoyOiJlbiI7fQ==',1736678583),
	('C8rzwgnf5vASCLMS2mUHWzJYfgmQ2kVzF24ZuykN',NULL,'15.236.201.80','Mozilla/5.0 (Linux; Android 7.0; SM-G892A Build/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/60.0.3112.107 Mobile Safari/537.36','YTo1OntzOjY6Il90b2tlbiI7czo0MDoiUjdIVThWSXJkQnVRWGFvODVDbDNSdkRmcTM1Qllud05BdXhNWHozcyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44Mi9lbiI7fXM6NjoibG9jYWxlIjtzOjI6ImVuIjtzOjE4OiJmbGFzaGVyOjplbnZlbG9wZXMiO2E6MDp7fX0=',1736678556),
	('CDVqTPBDvJNDhwlVnDY1xtOIdWZAQdVHK7qC4YQO',NULL,'193.34.212.75','','YTozOntzOjY6Il90b2tlbiI7czo0MDoiVkJMb3JyQld2dlE2ZndmZjlFR1ltT2dKSTNRa1ByOHBqMGhwTEMxayI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44MiI7fX0=',1736680988),
	('cRyjGaGfIe6ypUwnzzgg5Y90E5s8BNSLpSH8MiqB',NULL,'209.38.244.182','Go-http-client/1.1','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiN1hiY280N053Z3pXS2xnMTdTc1NremRHcWc4NVNySlNPN0NOTGZ1MCI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjUxOiJodHRwOi8vMTQzLjI0NC4xODAuODIvZW4vcXVlcnk/cT1TSE9XJTIwRElBR05PU1RJQ1MiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1736673427),
	('Ct9IDuOSqXrHX7bTcIJFCvRykph2noQ4ejecrFaN',NULL,'45.15.17.3','Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36','YTo1OntzOjY6Il90b2tlbiI7czo0MDoiTEtMUnlKSUpYOUpxOXZ3Tk4yTTdROGdmT05uWGxsNU5yVUU0VVNqcSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly93d3cubmV3czE0MG1lZGlhLmNvbS9lbiI7fXM6NjoibG9jYWxlIjtzOjI6ImVuIjtzOjE4OiJmbGFzaGVyOjplbnZlbG9wZXMiO2E6MDp7fX0=',1736680928),
	('cTpi04PB1hMX4wS54F5fwbkIU23UV0uHavkWhfht',NULL,'46.19.138.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46','YToyOntzOjY6Il90b2tlbiI7czo0MDoiaWN3MUdlODJLU0YxeXJEQUdBV0Q2eHpqV0RJTXB6Q2N4dHN4SnhYdCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319fQ==',1736691789),
	('d5YTqlFSmfJDaD4JFX0w9QR3CWtJiwRGnx0nTtHq',NULL,'139.144.52.241','curl/7.54.0','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMWtEVGd2VkZLM01ydUkyUjNZS0FmS1MwTVhFa2pHZ0NEclMweWNPaSI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI4OiJodHRwOi8vMTQzLjI0NC4xODAuODIvZW4vb3dhIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1736685621),
	('Df9EEJBn5Y2amyxd8rf6BRNKrKQ10cXNI9IpHtoU',NULL,'139.144.52.241','curl/7.54.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoickdHVUxKZFBiem03WW02eVVsc2JmRWRVQ0tPclFEd2c2ZjZkaDZEUyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44MiI7fX0=',1736685616),
	('DGqyHUxprK07Xff8GNzLoVLPorQrnl5HPlh8JXbZ',NULL,'185.213.175.171','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoibkdkaXl3eW9zdDdvS3VLTUV0V3RsVlZKSTJpRXc1d0dqNG5RbW5zNyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44Mi9TaXRlTG9hZGVyIjt9fQ==',1736679110),
	('dlW0CqCTOOsu1KUBccMoJFrsrsYk9k2AflxAKK9c',NULL,'185.213.175.171','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUndQeEZVcHdtZUFzRkhPNHl5S2t5Tzlmb2R6RU5MNWtyZ1F1bHI5WSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44Mi9hIjt9fQ==',1736679097),
	('EH9NK5nXNyg1YM6fSxkVxz4Mj3u0GvGJjIvtroxV',NULL,'139.144.52.241','curl/7.54.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZkFSdGpZMlRhOWM4c2tIYkVjMThSMlkwbUJJSEh1dTdpRktHZ20xRCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44Mi9Qb3J0YWwwMDAwLmh0bSI7fX0=',1736685618),
	('ELpx1xMKmDx8OxMDpsU5pXpicibbCFSZxbIIO0Ld',NULL,'139.144.52.241','curl/7.54.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZHAyMkQzcUR1R0NpUFo4Z0U0eFVjUW1ZSVYwT0FwRmdtekl3TlRWTSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44Mi9ITkFQMSI7fX0=',1736685617),
	('EMQtdoyOT9ReQOZsRFskG4dTa504D8CetLymI02Y',NULL,'139.144.52.241','curl/7.54.0','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTHNaNm5Hc3lUUXJjTlRBQmh3Q3VLQkV4TlM1a1ZxdXVvWHRsSTNHMSI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM5OiJodHRwOi8vMTQzLjI0NC4xODAuODIvZW4vUG9ydGFsMDAwMC5odG0iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1736685619),
	('EtEOq2qtaYeHyYC7z9zpntav7UEQSNINsPMeODft',NULL,'95.214.55.226','','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSEM5a1dCVThsMnFidHhpYkFpb0t2bEFSRjZlTnd1R1NzTUh0eFpIWiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44MiI7fX0=',1736691993),
	('FN33eATcfaADEctxPh8z72f2dc4UTjZCJR5mBWiS',NULL,'139.144.52.241','curl/7.54.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiT3ZicjJ1RzhWOEJWTUkzVUFpUENvdmVJTDFSbHEzemkzMXdRUjlqVyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44Mi93ZWJ1aSI7fX0=',1736685617),
	('fNHdfBOMArW5SdkV51iQPPXjG5tBckPgnnJnVl1D',NULL,'139.144.52.241','curl/7.54.0','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYTNmUzZFcjRkSHh4OFlaRjZXSTFWVTU1MFYzYm5UWWFTRG9YRU9zcCI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI5OiJodHRwOi8vMTQzLjI0NC4xODAuODIvZW4vdXNlciI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1736685622),
	('FR1E9jXfTCGHDprrziE7OeyBGFqn82emucdeBKnc',NULL,'139.144.52.241','curl/7.54.0','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiR1pUNDRpZXRwSmRSbHB6ZGw2cGhIbXEyTmptQ1dTTklReFM1ZFAwcCI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjUwOiJodHRwOi8vMTQzLjI0NC4xODAuODIvZW4vaHVtYW4uYXNweD9hcmcxMj1pbmZvdGVjaCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1736685626),
	('GCGhdcMMaMuTKjJeY20gEguJWiXc4E2nbOwu3PQw',NULL,'185.213.175.171','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0; ; NCLIENT50_AAPCDA5841E333)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRW9nd3drc3h3Sm9DNVY1TTZSeTNobm9yNXhlMGExT2ExS1prV2VIRSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44Mi9XdUVMIjt9fQ==',1736679091),
	('gj8u5WAPdQgveWl4zBirjACOJNHo4cZEBZhdF3PW',NULL,'139.144.52.241','curl/7.54.0','YTo1OntzOjY6Il90b2tlbiI7czo0MDoiTzNZRDZMVkNTc0JKa29LRDZDQTV5UjV1NkU5UWZaaWVGU3EzdjhCayI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6MTg6ImZsYXNoZXI6OmVudmVsb3BlcyI7YTowOnt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44Mi9lbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1736685618),
	('GkwnWZDQ7NPZJLqEDMRN3eVvNmv6iaVlLOevCsKo',NULL,'185.213.175.171','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRWZVUlVBRnF2bFpxVFlqejhXdGZlOTNNREdNbmRnS2h5aHdGZExReSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44MiI7fX0=',1736679077),
	('Hq45b46Awk67qMR936Hpbw9DsWfeEDivV9X675Nu',NULL,'45.15.17.3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiYjNUV0dQSGdGQkpCa25kbHJ0ZHJydEc3bDN3QTZ6VlJOMlZaUEpHbiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly93d3cubmV3czE0MG1lZGlhLmNvbSI7fX0=',1736680920),
	('hTKXDcipgx36aWFWE8wSqJVGLQ8lTYQ2SFJ6UdVa',NULL,'138.68.75.209','Mozilla/5.0 (compatible)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiaFRrREc1SGxydXBOTFlOaktYNlg4enV2ckJvNEQ1UzVEN2xMNDlyWSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44MiI7fX0=',1736689386),
	('HZtt69bfGrbWcmRedxw1aBIvpMtLz3US8ws0b8mK',NULL,'139.144.52.241','curl/7.54.0','YTo1OntzOjY6Il90b2tlbiI7czo0MDoiZGVwdkFzNmowV0V5R0ZoaldwblZLZGJNR0dyR2pTZXJrYTh1T0pJeCI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6MTg6ImZsYXNoZXI6OmVudmVsb3BlcyI7YTowOnt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44Mi9lbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1736685619),
	('iIB7IfvpvckhOLTDAJsoPH2697MWvypERGJEAC4M',NULL,'167.172.103.248','Mozilla/5.0 (compatible; Odin; https://docs.getodin.com/)','YTo1OntzOjY6Il90b2tlbiI7czo0MDoiZ3RpNjRSQUtmQzNpOUVLencwUzVSM1ViVzY2c1o1NnVmekNXZEo1NSI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6MTg6ImZsYXNoZXI6OmVudmVsb3BlcyI7YTowOnt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44Mi9lbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1736673427),
	('IjcbuxgSvsXriALGTIIhbQOI19Z4INz5RnnoyXup',NULL,'139.144.52.241','','YTozOntzOjY6Il90b2tlbiI7czo0MDoiVElnSXFOZFJLT253cFh6YmtsTktjcjlyUVRPUFduOGJPQ0JwMUtOdCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly95b3VyLWRvbWFpbi5jb20iO319',1736685616),
	('JdwPfJka1miOszQndpCOy7ErULdeO1FiHaBVFlCD',NULL,'193.200.78.250','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46','YToyOntzOjY6Il90b2tlbiI7czo0MDoiR3FCd3Q5OVl0U2ZWeTg2ZUNUZUl0Um53dlZkS1NLWE5SdjZDbVdESiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319fQ==',1736692286),
	('jg0l7bB2mjFtfaBQEnShi1zuwCRpiVpX6whpzrQq',NULL,'139.144.52.241','curl/7.54.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSUhyQmRsTHQycG5CUFViS0hya1ZaVXBOWlJuRXZzbXFiQklLcENudCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44Mi91c2VyIjt9fQ==',1736685620),
	('js6saPsxvGSS3yNyKG8FBtXNWMO0jdrCYb5fOFiX',NULL,'95.214.55.226','','YTozOntzOjY6Il90b2tlbiI7czo0MDoielpKaDd5M2FxOU56Q2lLcEtobVVpQm1neVZyWGwwOFFJRTdNQUpRNyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44MiI7fX0=',1736680861),
	('JTdxR6oBoSuFWelwrQbaRWfE3ya20ATjdTZcLOcW',NULL,'139.144.52.241','curl/7.54.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRWU2RUtNaXhyY01mQnpXMDMyVGQwcG5seHBsalJTNURlTUdoQ215TCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44MiI7fX0=',1736685619),
	('k9KQt6RhmznpXnoekukgcBwtBHrQNoRVbjDjrWOF',NULL,'123.160.221.133','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiV1pLanpuYmR1NzdzWTRQd3NaZDZFZDJnVnI0YWR0VW1uQ2twMk12ZSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly8xNDMtMjQ0LTE4MC04Mi5pcHY0LnN0YXRpY2RuczMuaW8iO319',1736681131),
	('kI7cTMQ0Ld3A8s2fVVkpTzBEQ1YW0UBHzpLtvG2b',NULL,'15.236.201.80','Mozilla/5.0 (Linux; Android 7.0; SM-G892A Build/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/60.0.3112.107 Mobile Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoibFplZXRsaWlXa1RiYktqWFN2bEZvU2hidG42REhxTGdyNXhaSnJMVCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44Mi9lbi9uZXciO31zOjY6ImxvY2FsZSI7czoyOiJlbiI7fQ==',1736678585),
	('kzHNy7B5uNn6OpldaBfjrualdvYKT2Ff6XQh3c69',NULL,'185.213.175.171','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRFNoTWpwN1NtU2R2Y21YbjJ4Vkxxb015b09TUHNwSjZLZHZ0SzdTbiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44Mi9hIjt9fQ==',1736679101),
	('leSPl9RK0F1Imj9vpd3XDTqbVyztoNSUyQ45ZKDQ',NULL,'139.144.52.241','curl/7.54.0','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiendkTVI5QjRQaWhMY3ZvMlR5Y1dkZWxxOFJhdnZkQzFobVg1b3V6bCI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMwOiJodHRwOi8vMTQzLjI0NC4xODAuODIvZW4vd2VidWkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1736685619),
	('lHr0EXxjGRiANOhRhDngJ2rvMLYWTNH8grFFlucq',NULL,'139.144.52.241','curl/7.54.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTk5aWjZYckZqaEdjM1VpNlNJTml6TmExTDNMd0ludXRzWGZqczBoZyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44Mi9XTXVDIjt9fQ==',1736685616),
	('M9B5JZnxvHfQ5PKRUCHk1Nozkrexhz4YITzju9Qb',NULL,'209.38.244.182','Go-http-client/1.1','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZHA0NGdKYkEySlhUTGpFM1ZUSnJCZW9sRUtDaXF4d05XYk5nbFdPeiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDg6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44Mi9xdWVyeT9xPVNIT1clMjBESUFHTk9TVElDUyI7fX0=',1736673427),
	('mNYRNSjvDVmpWXCGKto0NKvp5Xrcqn77mD5c2jc2',NULL,'15.237.190.23','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:77.0) Gecko/20100101 Firefox/77.0','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUWZmM3dwd3hMN085NGVHbkdQeVBWaWx3dURBVXhWbmtkbEszQWc5aiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44Mi9lbi9zZnRwLWNvbmZpZy5qc29uIjt9czo2OiJsb2NhbGUiO3M6MjoiZW4iO30=',1736674132),
	('mZxUYIMxtD15zrhryiwJlEpQs6kQtYrpKqu1FQ9i',NULL,'139.144.52.241','curl/7.54.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoidWE4WEd0MXZUTlU0ajFla3pNRW5hR05ZVngzY0xPYU9VeHZQVTBZUiI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1736685619),
	('N6rWyRqslCzdoUmHAR4yDzOpS29Mrsj8y1gOe2dB',NULL,'139.144.52.241','curl/7.54.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTXo2Qktab2ZSdUkwdVhtVkNvSUlub0hac2tsWTdzSXlpaGNpeW9NUSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44Mi91c2VyIjt9fQ==',1736685621),
	('N7BkkRtoenRlK9wBpsBS7J3VhbO3Gt2RdPtWnE6u',NULL,'139.144.52.241','curl/7.54.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoidUltdnpmaW5hT20xT1FSYUlKRmFXYnN4Q3J0U215ZjFZeUFodm9mNiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44Mi9wb29scyI7fX0=',1736685617),
	('ncmzcXBHRGzvD5hgUE9wgEnxxSuCffql5AZHmZ1q',NULL,'139.144.52.241','curl/7.54.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiME90Qno2TEVXRW9BdWw3UFFYQUxUV3ZXbkcxRm5vRm96bGhwZ1V0aCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44Mi9vd2EiO319',1736685621),
	('nIwz3tclnFgUKOKpOfQ7SgeV3sasC4P6Zt4kzGuB',NULL,'209.38.203.83','','YTozOntzOjY6Il90b2tlbiI7czo0MDoiY1F0NlpocHV2Yjh1TTNVWjJnTUd1cGhOeElvZXMzNnk4cThLaXgwQSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly95b3VyLWRvbWFpbi5jb20iO319',1736673423),
	('Nn8sPGtPfr9bbza9GhA5m7H30soYK1PJeg9W7LsM',NULL,'138.68.75.209','Mozilla/5.0 (compatible)','YTo1OntzOjY6Il90b2tlbiI7czo0MDoiNWQ0clFyYjFTSW5TMmIwSVRYcXVBZlc0UDl6YjZwTWplRjM2Z2pldCI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6MTg6ImZsYXNoZXI6OmVudmVsb3BlcyI7YTowOnt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44Mi9lbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1736689386),
	('NVaNTbozRau7KdTdw6kfRCb4dm0LICFvArrAu7Yp',NULL,'195.3.223.55','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46','YToyOntzOjY6Il90b2tlbiI7czo0MDoiaEI5VjZGWHB3eURtR1NheklMNmNOT3JmcGw4cEdxb3ZCTnY5OVhCMCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319fQ==',1736685723),
	('ooNXNZiE4x4KQYVYBveIVU9P3ksElW0wCjJo6wVy',NULL,'139.144.52.241','curl/7.54.0','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYzJkWkRrbVRQcmNGRDd1aVZxZGNPYWw1VHl3VjNqN2IyckluSDlEeSI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI5OiJodHRwOi8vMTQzLjI0NC4xODAuODIvZW4vdXNlciI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1736685620),
	('OP5BnIwWDjkDzTLNSli9tBKsQ5TNuz3lerO0sFiL',NULL,'139.144.52.241','curl/7.54.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoibGtUeVlrUEhTWWtNb3c5UjIzZmQ4dlZEQnNvSGd6R3pvSU1NRW1jQyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44Mi9ob21lLnBocCI7fX0=',1736685623),
	('oSMlkOtitWUVdC1r3WYJnDapcejvjzefUU7p4W0J',NULL,'139.144.52.241','curl/7.54.0','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiS0VvdnJwZGY1eVVkZ0V3QkMwTlZBTWU4V2ZjeFlJNVZFQ1QxOE1OUCI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMwOiJodHRwOi8vMTQzLjI0NC4xODAuODIvZW4vSE5BUDEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1736685618),
	('OxxdKARS8DxwjJUxOW0JqxjrpgX0H7eihHGJw0CJ',NULL,'139.144.52.241','curl/7.54.0','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQUpRNVFBR1VVcTBuVVBYZ3N1a09XWGNtZ0M3NGpGWG9XcFpJNWgwRSI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI4OiJodHRwOi8vMTQzLjI0NC4xODAuODIvZW4vb3dhIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1736685624),
	('pLDgBxlIq3rPzqbDB3tLcaJkR96NUL6yrcyG7ueQ',NULL,'139.144.52.241','curl/7.54.0','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiaHlzaENCNTRQdlBYS3poR2k4dzd6N3dJZ0NkRVZ1M2l1OUFQRWZqVSI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjUwOiJodHRwOi8vMTQzLjI0NC4xODAuODIvZW4vaHVtYW4uYXNweD9hcmcxMj1pbmZvdGVjaCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1736685624),
	('PQesFnvL5jlVxBWZXupH0Vz3lOjsoOUvifK8SF87',NULL,'139.144.52.241','curl/7.54.0','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiME90SlhOTW1TdjZ2OUUwZHpYaGxoQnAwUWZsbmdNVjV5WXo4SDhJSiI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMzOiJodHRwOi8vMTQzLjI0NC4xODAuODIvZW4vaG9tZS5waHAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1736685624),
	('pQHNjL2b7XUqn7xRs9Dl9UlCRBoY8lBZyPaSAql0',NULL,'139.144.52.241','curl/7.54.0','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWHRqZUdHQ2lCMzVFRjF3TUpqN3ludlN4bDYzU3JWS1NuQVI2cmhzeSI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM1OiJodHRwOi8vMTQzLjI0NC4xODAuODIvZW4vbWVudS5qaHRtbCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1736685626),
	('pTZhAKxLm5E4QfoJAsoOpt2co7cRjmvltCY7uzMq',NULL,'139.144.52.241','curl/7.54.0','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSXR0aUw0bnNMc0kzY2pWRGdvYlVjNFRMT0ZiNVphTXFnVzQ1YkFGQSI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMwOiJodHRwOi8vMTQzLjI0NC4xODAuODIvZW4vd2VidWkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1736685618),
	('puYnYw2TDIHjzZ03x68FgIJQOu4y2BKJUaWDSfRS',NULL,'15.236.201.80','Mozilla/5.0 (Linux; Android 7.0; SM-G892A Build/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/60.0.3112.107 Mobile Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRFlwaXlYNThObWhrb3B3ZmFxNFRobk1oZGtncWNqTzlBR3B0bzNmSCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44Mi9lbi8xNDMiO31zOjY6ImxvY2FsZSI7czoyOiJlbiI7fQ==',1736678574),
	('PwGhIgc5LjoOtLoqa9wS1LSO6bhPVbFVDHAwsXN2',NULL,'139.144.52.241','curl/7.54.0','YTo1OntzOjY6Il90b2tlbiI7czo0MDoiSzJkeFhhYTA4U3ZnOThNYnZsakZRc1VhZ3E1M0lVUDBtc2ZRRDVXUiI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6MTg6ImZsYXNoZXI6OmVudmVsb3BlcyI7YTowOnt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44Mi9lbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1736685617),
	('pZdJrjNWk21FTSXUPyrMEwlSltqxoM35YAYukK9X',NULL,'167.172.103.248','Mozilla/5.0 (compatible; Odin; https://docs.getodin.com/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiOWZpb0RuTXdVcmRtWnJ4THRpejF6d3dMSDBoYVptU1Zkd09lRXZLNSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44MiI7fX0=',1736673427),
	('Q0wL3WQ8ReyUOqZPsJ42wxXVLGZdeS53oO52cE17',NULL,'185.213.175.171','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSGlveWxEbzlYSWpCSWtpQ3ZuVEYwUXhna3djeHNqaVFPVHlNRDdYTSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44MiI7fX0=',1736679083),
	('Q3qo77JSoBbwD4Jv9GWQbPIQ1wcI3lJLOx6r5Qvf',NULL,'111.7.96.164','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiYjZvY2pheHhoM1puUW91V1d2WFNST0NXWUJkRXhBT0N4VE5IdmdUdiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly8xNDMtMjQ0LTE4MC04Mi5pcHY0LnN0YXRpY2RuczMuaW8iO319',1736681122),
	('qjYvOBI0APxR52AYriiLEcVFmwIEIUDBYTRlwfnW',NULL,'139.144.52.241','curl/7.54.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiWmFoU0JkVG1ndFRYdUpZbFBGYmdQMUpGTzBWWHRSNExidEpud29OTiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44Mi9tZW51LmpodG1sIjt9fQ==',1736685626),
	('RH0DAfGAuIxumBybm9kjvrmM0vRz0x9HPiMnvGuY',NULL,'95.214.55.226','','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZlhYbW1MeWV2OG5NdnhTS0N2aWNlMmVmdlZISGxkOVhoMW0yVVVKdiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44MiI7fX0=',1736672779),
	('RLjbThgnFIu3DYnrhhnzCoYOPDANVv0P4aB9bvIT',NULL,'139.144.52.241','','YTozOntzOjY6Il90b2tlbiI7czo0MDoickplSExOUGhHREhEV1FJN0pMT3F4RmZ5cHVuOFRBYklORWpJeUd4ZiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly95b3VyLWRvbWFpbi5jb20iO319',1736685616),
	('RW0rdQbJiHS0TRQ6EoY4mv2i0rOhzU3tgL5UlQGq',NULL,'15.236.201.80','Mozilla/5.0 (Linux; Android 7.0; SM-G892A Build/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/60.0.3112.107 Mobile Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoid0gxVDVXaGwxQkVBbVMyajJKMG1adEcwNW5XSFpuOWlsMkU5ZWNBSSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44Mi9lbi9vbGQiO31zOjY6ImxvY2FsZSI7czoyOiJlbiI7fQ==',1736678579),
	('ryM8HfvmGwmKQ9YK9uCLnvP7lqwKs9CcNy2SgJx1',NULL,'15.236.201.80','Mozilla/5.0 (Linux; Android 7.0; SM-G892A Build/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/60.0.3112.107 Mobile Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiakQwMUxZZDZWZkFhdE1ZeXZ4RFBKZ0hDNUJ0QzUySFVHeHQzRGxpMyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44Mi9lbi93b3JkcHJlc3MiO31zOjY6ImxvY2FsZSI7czoyOiJlbiI7fQ==',1736678577),
	('S82K1US9hvNfGwnD7uiMCe6uMGwB4s7AON7PZanS',NULL,'139.144.52.241','curl/7.54.0','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTzNJZ3c2MVVGRDFpQXc5cnBTUzNSa2ZZM1QyaE5VV3dmZXllY012VyI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI5OiJodHRwOi8vMTQzLjI0NC4xODAuODIvZW4vV011QyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1736685617),
	('sDUqEaErJ2RZO7JGyaILfJGH5ICZFjtn4AQzSm0s',NULL,'15.236.201.80','Mozilla/5.0 (Linux; Android 7.0; SM-G892A Build/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/60.0.3112.107 Mobile Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUGt6cEJydm53SXp2VW12MVd4T2NGbkduTjBuQ1BaRm5GVlJpV21BcCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44Mi9lbi90ZW1wIjt9czo2OiJsb2NhbGUiO3M6MjoiZW4iO30=',1736678593),
	('SHORoXcuh5UepWbPEYEOAlQx56NFIsvixhZFLADa',NULL,'45.15.17.3','Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36','YTo1OntzOjY6Il90b2tlbiI7czo0MDoiMUF3NVR5VFdhaWUxTjNhSTh5QVU0Q2dlVndHdHZaQkVNSUtTZEdsRSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly9pcHY0LmNhc2VyaW9yYnRjLmdhL2VuIjt9czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6MTg6ImZsYXNoZXI6OmVudmVsb3BlcyI7YTowOnt9fQ==',1736680891),
	('SOX962KOfCmjvqmHQQAufHDHlb2JKy64nB4fKdpP',NULL,'185.213.175.171','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiYm5QYXpqUGlqU1lyU2FJTlNRRlZVS1BVNVh5OUFXWkp4czJiY2g5RyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44Mi9TaXRlTG9hZGVyIjt9fQ==',1736679112),
	('SUWlYslKSSHFgnukQLwwiPDL1r82luM2Nz68ATHu',NULL,'139.144.52.241','curl/7.54.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoib1g1MnhkbjlZWmFwQTdJSFUxS1RnTUpTRndwbEE5NXprMDhldFRGTiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44Mi9ubWFwbG93ZXJjaGVjazE3MzY2ODU2MTYiO319',1736685616),
	('sVQBfCCs62IO73kywrzFrsTAzSIbZySohdyO5wdb',NULL,'139.144.52.241','curl/7.54.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoibnNwNzFSZGh3V3Bhdkdsak5YY2JOR1pWbkdSMmNIT2VyN0xudkc1RCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44Mi9tZW51LnNodG1sIjt9fQ==',1736685618),
	('t4xnoSzgfwlxyuv9KCqtsTkUKO21c4x7qcEvS0tb',NULL,'139.144.52.241','curl/7.54.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZjFqOEdZOERHZENjRW9taUF6bzNVVDdySDlOcUhiRW1yTU51TkhEMiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44Mi9odW1hbi5hc3B4P2FyZzEyPWluZm90ZWNoIjt9fQ==',1736685623),
	('t6ATrC3G3gdGM87CqRE4lHblUDld2zRHZI240Owk',NULL,'209.38.203.83','Mozilla/5.0 (compatible; Odin; https://docs.getodin.com/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRE5KakhJMnlmZzQ2dUdtTHRvcFpySzNXdzlhZGNJdTNYWVUyMVZ0OCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44Mi9ITkFQMSI7fX0=',1736673424),
	('t8g0RtI9qhceUlJVX6AUUqJCQ3W3clzDGgH2kRZW',NULL,'139.144.52.241','','YTozOntzOjY6Il90b2tlbiI7czo0MDoiQkhqNmxPMlJUbmQ2Y0ZnRG5Gc2psVDlaaFgwbHdyZmNHd0tGbERBRCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly95b3VyLWRvbWFpbi5jb20iO319',1736685627),
	('TG35MgbvxznUwuNnBlHAL0e5Nxo1W53Dbnqp8ANh',NULL,'185.213.175.171','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUTg0dXFYcUE2RXhaS25id2VGUHo5RmlJaHJXUnlJdFZjZHFlRzlTdSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44MiI7fX0=',1736679081),
	('THFBYMiHJrCctJD3dI0iF0BlH0DS4wJSMBYrJ9Gz',NULL,'209.38.203.83','','YTozOntzOjY6Il90b2tlbiI7czo0MDoicXFTN0hKTXczZGVITG43ekxBSnBpckVheDdJbWxXWXJjZjczekhuSSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly95b3VyLWRvbWFpbi5jb20iO319',1736673426),
	('TO8CSN2croJqL5ByLff42SZdKDSMX4lOeVoYkBnt',NULL,'185.213.175.171','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiaHZEdURQY0ZqWUFPd3VQMlBoRUVHSGQ4ZDZ0RzFoVjJrdW9kdWFpeiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44Mi9tUGxheWVyIjt9fQ==',1736679123),
	('U3zREioo2pifMGJpCuYrIXdkr3gFEqLe5K0B7RDE',NULL,'209.38.203.83','','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZTZaM21RV2NVRE5qYmpSdEJXTkZWMVZST3pPWG5qbDMyblNHeDllQiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly95b3VyLWRvbWFpbi5jb20iO319',1736673423),
	('u5lOfuQLByF6wZjFEMLrZKyegPdS6cDbirPCJo1E',NULL,'139.144.52.241','curl/7.54.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiS3JOSk5UbW5LRTJVaXRjQ0VFV00xclpPbzZYSW8xcjkwd3RDY1dqaiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44MiI7fX0=',1736685619),
	('Utsyfps7atSwQYRS6gGAHqKgb3Ff5OY2XDz6ztze',NULL,'139.144.52.241','curl/7.54.0','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQ0lhZVltenBvVUlWUGNOa3l6cEJLR2pyb0pGaWRTRkFPV01YTElLTCI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMwOiJodHRwOi8vMTQzLjI0NC4xODAuODIvZW4vcG9vbHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1736685618),
	('UZeWDtHO41SIucvLaj9KoYjM1eHAIN2fKZjucTVG',NULL,'80.82.77.202','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3880.4 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiVVBUV29zVjR6ZnRFZW9pcTBWdlpMbjBhWTJBRVZnMVdRcnNIQWwyYyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly95b3VyLWRvbWFpbi5jb20iO319',1736679068),
	('vE8hRiiyJ4badhIjujhrEg3SzPtanWVz99yZendW',1,'196.221.149.221','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0','YTo2OntzOjY6Il90b2tlbiI7czo0MDoiOFU2RkhjOXJhalBUbFF1SG5xUW4xMENRRGo2b3AxQlVlVG9LR3UzcyI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyOToiaHR0cDovLzE0My4yNDQuMTgwLjgyL2VuL2hvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1736692443),
	('VlnC8gI7ieRlS1K4eJAIbERSP0CwLAFBj3Kc2aob',NULL,'15.236.201.80','Mozilla/5.0 (Linux; Android 7.0; SM-G892A Build/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/60.0.3112.107 Mobile Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiaVRCaHY0cEJacGZLbGtSRGFvQjRBcG5aNXF4Y3VmYzRwQnNrRlpmSCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44Mi9lbi90ZXN0Ijt9czo2OiJsb2NhbGUiO3M6MjoiZW4iO30=',1736678587),
	('vNcHR1xpab24aby29JQKHTsksA0hSoLFuRIzOU2X',NULL,'185.213.175.171','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiS0dhQkQ1a1BCNmdaczZjY243R0N4bmdkWDV4bElSbjd4S09hQ2t0OSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44Mi9tUGxheWVyIjt9fQ==',1736679121),
	('Wjv3ek1MvOKsfEqqkypcmytWO0ZvCdDnQN0Z0oz3',NULL,'139.144.52.241','curl/7.54.0','YToyOntzOjY6Il90b2tlbiI7czo0MDoiSGRrdmFsMUZVQXozMUM2OTdFT2RuYnNkQjl0VHBIRlppdmFzTGJ3bCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319fQ==',1736685618),
	('wsminRQP8z3EwJO1AyqwxiV4Lf2Fhnv3WvNanuEF',NULL,'139.144.52.241','curl/7.54.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiWmZKYmRjV285TExYc0ZjT3R5QzFQVTR6Y2lJM24yWE56NFA2eUk2eiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44Mi93ZWJ1aSI7fX0=',1736685617),
	('WYY0bathSSM3MSEQY5Ely4XRCHFo60cYp767CgLf',NULL,'185.213.175.171','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoibERLQk4yWHJzVjAwOEplWWVjTWlRVDBCSTZVN3BoVmk4RDNTZmpBaSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44Mi9hIjt9fQ==',1736679094),
	('X5ocuNlC9Uwaz1j69oNzgJOzJXCbOdlkRRCyscFb',NULL,'185.213.175.171','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiVmZjMUFSaGQ4cUd3akxaeW16MDVjS1VjQ1lMTXlDc1VwcjhwR2pFcSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44Mi9hIjt9fQ==',1736679096),
	('x6XqrBEZWDgeFdPljY5r37seyShMV0ijgFdF4llq',NULL,'139.144.52.241','curl/7.54.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiVHJIM0lnZkxSNm1hVjAzOVo2NXU0YjJMYXA0Sjc4R0NNc2xSVzlsZSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44MiI7fX0=',1736685618),
	('x8r4wOyB5arjgECDGrdf5ekHLt0UBQBv0gDVOQre',NULL,'139.144.52.241','curl/7.54.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUVV6TjJuTVhyejJ2UmQ1Y3Q1UTIzdDl2bFRpcmhoNHoxT3g3cjg1RSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44Mi9kZWZhdWx0LnBsIjt9fQ==',1736685621),
	('XCPc2LnpGwhfucoAYUEyoskSIbxXaxa9fq74B1Hq',NULL,'45.15.17.3','Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36','YTo1OntzOjY6Il90b2tlbiI7czo0MDoiTUFMY29hZzYyeWVmeGRta3ZyV2ZEeXpNSUN2REpWd282RWhVdEMwaCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly8xNDMtMjQ0LTE4MC04Mi5pcHY0LnN0YXRpY2RuczMuaW8vZW4iO31zOjY6ImxvY2FsZSI7czoyOiJlbiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e319',1736681133),
	('XiGS5BopIpD2aYfU7Y5FjonLJHolLv4pDrMYvcZb',NULL,'15.236.201.80','Mozilla/5.0 (Linux; Android 7.0; SM-G892A Build/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/60.0.3112.107 Mobile Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoibXNNaTREb3pGVGp1c2R6cUduU0djSTBEQnlmOTlzS3ZQc0VHSmRwbyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44Mi9lbi9ibG9nIjt9czo2OiJsb2NhbGUiO3M6MjoiZW4iO30=',1736678596),
	('xuB0v1FLo1ZMJHBT5tqKnf5b0nEHvz3qa9gE1ByC',NULL,'139.144.52.241','curl/7.54.0','YTo1OntzOjY6Il90b2tlbiI7czo0MDoieHJIVENJZEhNaTVKaGdza2lZTWdnd1pCa3V5MTdRdVZSeFExZ1ZTRiI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6MTg6ImZsYXNoZXI6OmVudmVsb3BlcyI7YTowOnt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44Mi9lbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1736685617),
	('XVZ5no94CnHPU1SnkVy72YgL0dDCervA8bY1XROm',NULL,'139.144.52.241','curl/7.54.0','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUUxSanhITWx6ZE5RQ3B6TGdCY1R1OW5jeHJ2aXBoNjFjNjdFQlNPaSI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM1OiJodHRwOi8vMTQzLjI0NC4xODAuODIvZW4vZGVmYXVsdC5wbCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1736685622),
	('xZ0NmJz3D4YhxrJmduZCgb0oVZAQ2zTJYVFajTTH',NULL,'209.38.203.83','Mozilla/5.0 (compatible; Odin; https://docs.getodin.com/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUWRpNENFMWRmWXpWbjdRUU9INHNZeVNoV2NFMmlXWmU5U2J1c0ZadCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44Mi9vZGluaHR0cGNhbGwxNzM2NjczNDIzIjt9fQ==',1736673423),
	('y1vkj2SfXE0JN0BwuebEpsfQfVYvghr5CQu2rTms',NULL,'185.213.175.171','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoicFhSWDVVTFg1MTFXUnZVRVcwaHhSQ0RzcjJsSmtITmF4UkUzUFJrMCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44MiI7fX0=',1736679079),
	('yB3KIFP3JSs5k9wYCHwC5H2sLQPQJH0n2x0vswMK',NULL,'15.236.201.80','Mozilla/5.0 (Linux; Android 7.0; SM-G892A Build/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/60.0.3112.107 Mobile Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiaFF4Q1hGU29pWjNyQm9SamZYWGpubzFrbUFKRFloRHdGekJkMjc0bCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44Mi9lbi93b3JkcHJlc3MiO31zOjY6ImxvY2FsZSI7czoyOiJlbiI7fQ==',1736678569),
	('yL8ME1nhbHAMkxoyQef41ugLTTvdes06OPDMiMC2',NULL,'87.120.115.34','Mozilla/5.0 (Fedora; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiMmxzdVM2eUp0SDVQaUpyNVV0Uno0Z3BYVjFEbkF6dzVQQkpHcjVxSiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44Mi8uZW52Ijt9fQ==',1736686571),
	('YqkAlquKxFMpRMKZfzw8GzRPUjxXEAx5liVMCtkD',NULL,'209.38.203.83','','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTkR1ZEpPNVdWM3NKQks1dUk0WGQwTFl5bFRrRXluOXFBaU5DdmtxUiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44MiI7fX0=',1736673426),
	('yuxk4fHTDBqib8TKIqbJXS7WWw5K5VgtpRzTZEff',NULL,'15.236.201.80','Mozilla/5.0 (Linux; Android 7.0; SM-G892A Build/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/60.0.3112.107 Mobile Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWUFadUVRTHd1dFJPS0N6ZjlFRnc1TWg0N1gwcGsxR0Y0aFE0TDZwSSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44Mi9lbi93cCI7fXM6NjoibG9jYWxlIjtzOjI6ImVuIjt9',1736678590),
	('Z2PZCwdeMlWOMtIDcI5RIa7iSccK6CDPvKJS5MxS',NULL,'139.144.52.241','curl/7.54.0','YTo1OntzOjY6Il90b2tlbiI7czo0MDoiOHZQcUlPSTJ2Z1BBUW1EYzkySlRhRG5WTWExcHlUSENIOWxUSWl3QiI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6MTg6ImZsYXNoZXI6OmVudmVsb3BlcyI7YTowOnt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44Mi9lbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1736685619),
	('Z3yTyeUTxAlUX1yGomfyMg5J2QCKlDFL2Pq8TtEf',NULL,'185.213.175.171','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiYnNKQ0NSbjQ2RUw1ek9JWHU5RGVpUmFEUUw0WUZZT0htS3FsUDVKMyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44Mi9TaXRlTG9hZGVyIjt9fQ==',1736679114),
	('ZgxAD0qgYPhnFPsDF0hZxEg9oJOiJmlzt4vctph4',NULL,'139.144.52.241','curl/7.54.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiczV0N1NJRVh6bUJybjl2dTViSEZnWnh5MUFkTG56WHN6SlVVN0FqVyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44Mi9fX0FkZGl0aW9uYWwiO319',1736685621),
	('zPrZWSXvWhc4VqBxAg7vVlNgpxHWkH6jNs29tTiZ',NULL,'139.144.52.241','','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSjkxbzhrT0hwak1hVDJxVk90OWpjYUUzNm9jUFdtU1dLbEpIZDBQYyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44MiI7fX0=',1736685627),
	('zZsQQhSB9VYGxSrlGOSf1TarO0mP7pMEiGB4FyWt',NULL,'185.213.175.171','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiOGFGekhhQ0c1eTVIbGJJdUxkMFJoS3hOQmtPM05PdkZFYXdnWDhqZiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xNDMuMjQ0LjE4MC44Mi9tUGxheWVyIjt9fQ==',1736679118);

/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table site_contents
# ------------------------------------------------------------

DROP TABLE IF EXISTS `site_contents`;

CREATE TABLE `site_contents` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `content` text DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `identifier` varchar(191) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `visibility` tinyint(4) NOT NULL DEFAULT 1,
  `icon` varchar(191) DEFAULT NULL,
  `link` varchar(191) DEFAULT NULL,
  `link_text` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `site_contents_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `site_contents` WRITE;
/*!40000 ALTER TABLE `site_contents` DISABLE KEYS */;

INSERT INTO `site_contents` (`id`, `title`, `description`, `content`, `type`, `identifier`, `slug`, `visibility`, `icon`, `link`, `link_text`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,X'7B226172223A22436F6E74726F6C20796F757220686F6D6520636F726E657273207769746820612073696E676C6520636F6D6D616E64222C22656E223A22436F6E74726F6C20796F757220686F6D6520636F726E657273207769746820612073696E676C6520636F6D6D616E64227D',X'7B226172223A22576520636F6E7665727420796F757220686F6D6520746F20736D61727420686F6D652C206120636F6D666F727420616E642072656C6178656420656E7669726F6E6D656E74207573696E6720616476616E6365642070726F647563742074686174206D616B6520796F757220686F6D65206561737920746F20636F6E74726F6C2E20656E6572677920736176696E6720616E64207365637572652E222C22656E223A22576520636F6E7665727420796F757220686F6D6520746F20736D61727420686F6D652C206120636F6D666F727420616E642072656C6178656420656E7669726F6E6D656E74207573696E6720616476616E6365642070726F647563742074686174206D616B6520796F757220686F6D65206561737920746F20636F6E74726F6C2E20656E6572677920736176696E6720616E64207365637572652E227D','{\"ar\":\"This is the actual content for the hero section.\",\"en\":\"This is the actual content for the hero section.\"}','content','heroSection','control-your-home-corners-with-a-single-command',1,NULL,'https://example.com','{\"ar\":\"Control you home now .\",\"en\":\"Control you home now .\"}',NULL,'2025-01-09 17:41:39',NULL),
	(2,X'7B226172223A22596F757220686F6D652077697468206F6E652073696E676C6520746F756368222C22656E223A22596F757220686F6D652077697468206F6E652073696E676C6520746F756368227D',X'7B226172223A2244657669636520636F6E74726F6C204C69676874696E672053656375726974792026205375727665696C6C616E63652041697220636F6E646974696F6E696E67202620436C696D617420636F6E74726F6C2E222C22656E223A2244657669636520636F6E74726F6C204C69676874696E672053656375726974792026205375727665696C6C616E63652041697220636F6E646974696F6E696E67202620436C696D617420636F6E74726F6C2E227D','{\"ar\":\"This is the actual content for the induction section.\",\"en\":\"This is the actual content for the induction section.\"}','content','induction','your-home-with-one-single-touch',1,NULL,'https://example.com','{\"ar\":\"Control you home now.\",\"en\":\"Control you home now.\"}',NULL,'2025-01-09 17:46:31',NULL),
	(3,X'7B226172223A2241626F7574222C22656E223A2241626F7574227D',X'7B226172223A22576520617265207370656369616C697A656420696E20736D61727420686F6D6520736F6C7574696F6E7320616E64206175746F6D6174696F6E2E2057697468206F7572207769646520657870657269656E636520696E20746563686E6F6C6F67792C2077652063616E207365727669636520796F7572206E6565647320696E20736D61727420686F6D6520616E64206175746F6D6174696F6E2073797374656D732E20446F696E67206F7572206265737420746F20636F6E7665727420796F757220686F6D6520746F20736D61727420686F6D652C2061636F6D666F727420616E642072656C6178656420656E7669726F6E6D656E74207573696E6720616476616E6365642070726F647563742074686174206D616B6520796F757220686F6D65206561737920746F20636F6E74726F6C2C20656E6572677920736176696E6720616E64207365637572652E2E222C22656E223A22576520617265207370656369616C697A656420696E20736D61727420686F6D6520736F6C7574696F6E7320616E64206175746F6D6174696F6E2E2057697468206F7572207769646520657870657269656E636520696E20746563686E6F6C6F67792C2077652063616E207365727669636520796F7572206E6565647320696E20736D61727420686F6D6520616E64206175746F6D6174696F6E2073797374656D732E20446F696E67206F7572206265737420746F20636F6E7665727420796F757220686F6D6520746F20736D61727420686F6D652C2061636F6D666F727420616E642072656C6178656420656E7669726F6E6D656E74207573696E6720616476616E6365642070726F647563742074686174206D616B6520796F757220686F6D65206561737920746F20636F6E74726F6C2C20656E6572677920736176696E6720616E64207365637572652E227D','{\"ar\":\"This is the actual content for the about section.\",\"en\":\"This is the actual content for the about section.\"}','content','About','about',1,NULL,'https://example.com','{\"ar\":\"Click here to view more.\",\"en\":\"Click here to view more.\"}',NULL,'2025-01-11 13:27:44',NULL),
	(4,X'7B226172223A224D697373696F6E222C22656E223A224D697373696F6E227D',X'7B226172223A224265696E672061206C656164657220696E206275696C64696E6720736D617274206369747920616E6420686F6D657320696E206469676974616C206572612067726F7774682E222C22656E223A224265696E672061206C656164657220696E206275696C64696E6720736D617274206369747920616E6420686F6D657320696E206469676974616C206572612067726F7774682E227D','{\"ar\":\"This is the actual content for the about section.\",\"en\":\"This is the actual content for the about section.\"}','content','Mission','mission-title',1,NULL,'https://example.com','{\"ar\":\"Click here to view more.\",\"en\":\"Click here to view more.\"}',NULL,NULL,NULL),
	(5,X'7B226172223A22566973696F6E222C22656E223A22566973696F6E227D',X'7B226172223A2242792070726F766964696E6720736D61727420686F6D6520736F6C7574696F6E7320616E642070726F64756374732C20636F6D666F72742C20616E6420657863656C6C656E7420736D61727420657870657269656E63652E205769746820612072616E6765206F6620637573746F6D697A65642070726F647563747320746F206D65657420746865206578706563746174696F6E20616E6420736572766520746865206E656564732E202020202020222C22656E223A2242792070726F766964696E6720736D61727420686F6D6520736F6C7574696F6E7320616E642070726F64756374732C20636F6D666F72742C20616E6420657863656C6C656E7420736D61727420657870657269656E63652E205769746820612072616E6765206F6620637573746F6D697A65642070726F647563747320746F206D65657420746865206578706563746174696F6E20616E6420736572766520746865206E656564732E202020202020227D','{\"ar\":\"This is the actual content for the about section.\",\"en\":\"This is the actual content for the about section.\"}','content','Vision','vision-title',1,NULL,'https://example.com','{\"ar\":\"Click here to view more.\",\"en\":\"Click here to view more.\"}',NULL,NULL,NULL),
	(6,X'7B226172223A22536F6C7574696F6E7320616E642050726F6475637473222C22656E223A22536F6C7574696F6E7320616E642050726F6475637473227D',X'7B226172223A224C657420757320646F20746865206566666F727420666F7220796F752C2077697468206F75722072616E6765206F662063686F6963657320616E642070726F64756374732C2077697265642028584E4B29206F722057692D466920736D61727420686F6D652073797374656D7320746861742077696C6C206D65657420796F757220726571756972656D656E747320616E64206E6565647320746F20636F6D666F727420616E6420636F6E74726F6C207468726F75676820746865204D6F62696C6520417070206F72204170706C6520486F6D654B697420616E6420416D617A6F6E20416C6578612020202020202E222C22656E223A224C657420757320646F20746865206566666F727420666F7220796F752C2077697468206F75722072616E6765206F662063686F6963657320616E642070726F64756374732C2077697265642028584E4B29206F722057692D466920736D61727420686F6D652073797374656D7320746861742077696C6C206D65657420796F757220726571756972656D656E747320616E64206E6565647320746F20636F6D666F727420616E6420636F6E74726F6C207468726F75676820746865204D6F62696C6520417070206F72204170706C6520486F6D654B697420616E6420416D617A6F6E20416C6578612020202020202E227D','{\"ar\":\"This is the actual content for the solution product title section.\",\"en\":\"This is the actual content for the solution product title section.\"}','content','solution_product_title','solution-product-title',1,NULL,'https://example.com','{\"ar\":\"Click here to view more.\",\"en\":\"Click here to view more.\"}',NULL,NULL,NULL),
	(7,X'7B226172223A224C69676874696E67222C22656E223A224C69676874696E67227D',X'7B226172223A2250726F766964696E672074686520636F6E74726F6C206F66206C69676874696E6720616E64206175746F6D6174696F6E207363656E6172696F73222C22656E223A2250726F766964696E672074686520636F6E74726F6C206F66206C69676874696E6720616E64206175746F6D6174696F6E207363656E6172696F73227D','{\"ar\":\"This is the actual content for the Lighting section.\",\"en\":\"This is the actual content for the Lighting section.\"}','content','solution','lighting',1,NULL,'https://example.com','{\"ar\":\"Click here to view more.\",\"en\":\"Click here to view more.\"}',NULL,'2025-01-11 13:28:28',NULL),
	(8,X'7B226172223A2241697220636F6E646974696F6E20616E6420636C696D617465222C22656E223A2241697220636F6E646974696F6E20616E6420636C696D617465227D',X'7B226172223A224D61696E7461696E20616E6420636F6E74726F6C20796F757220686F6D652061697220636F6E646974696F6E696E67207573696E6720736D61727470686F6E65206F72206261736564206F6E20636C696D61746520636F6E646974696F6E7320616E64207363656E6172696F732E222C22656E223A224D61696E7461696E20616E6420636F6E74726F6C20796F757220686F6D652061697220636F6E646974696F6E696E67207573696E6720736D61727470686F6E65206F72206261736564206F6E20636C696D61746520636F6E646974696F6E7320616E64207363656E6172696F732E227D','{\"ar\":\"This is the actual content for the Air condition and climate section.\",\"en\":\"This is the actual content for the Air condition and climate section.\"}','content','solution','air-condition-and-climate',1,NULL,'https://example.com','{\"ar\":\"Click here to view more.\",\"en\":\"Click here to view more.\"}',NULL,'2025-01-11 13:28:43',NULL),
	(9,X'7B226172223A224465766963655C75323031397320636F6E74726F6C222C22656E223A224465766963655C75323031397320636F6E74726F6C227D',X'7B226172223A225C75303432316F6E74726F6C6C696E6720686F6D6520646576696365732077697468206F6E6520636F6E6E6563746564206E6574776F726B2066726F6D207377697463686573206F72206D6F62696C65204170702E222C22656E223A225C75303432316F6E74726F6C6C696E6720686F6D6520646576696365732077697468206F6E6520636F6E6E6563746564206E6574776F726B2066726F6D207377697463686573206F72206D6F62696C65204170702E227D','{\"ar\":\"This is the actual content for the Device\\u2019s control section.\",\"en\":\"This is the actual content for the Device\\u2019s control section.\"}','content','solution','devices-control',1,NULL,'https://example.com','{\"ar\":\"Click here to view more.\",\"en\":\"Click here to view more.\"}',NULL,'2025-01-11 13:29:08',NULL),
	(10,X'7B226172223A22536563757269747920616E64205375727665696C6C616E6365222C22656E223A22536563757269747920616E64205375727665696C6C616E6365227D',X'7B226172223A2253656375726520616E64206D6F6E69746F7220796F757220686F6D6520776974682063616D65726120616E64206D6F74696F6E2073656E736F72207468617420616C6572747320616E64207265636F726420756E757375616C2061637469766974696573222C22656E223A2253656375726520616E64206D6F6E69746F7220796F757220686F6D6520776974682063616D65726120616E64206D6F74696F6E2073656E736F72207468617420616C6572747320616E64207265636F726420756E757375616C2061637469766974696573227D','{\"ar\":\"This is the actual content for the Security and Surveillance section.\",\"en\":\"This is the actual content for the Security and Surveillance section.\"}','content','solution','security-and-surveillance',1,NULL,'https://example.com','{\"ar\":\"Click here to view more.\",\"en\":\"Click here to view more.\"}',NULL,'2025-01-11 13:29:28',NULL),
	(11,X'7B226172223A22456E6572677920736176696E67222C22656E223A22456E6572677920736176696E67227D',X'7B226172223A22536F6C7574696F6E7320746F2068656C7020796F75206D6F6E69746F7220656C65637472696320636F6E73756D7074696F6E20616E6420637573746F6D697A6520796F7572207363656E6172696F7320746F20737769746368206170706C69616E636573207768656E20796F7520646F6E5C753230313974206E6565642069742E222C22656E223A22536F6C7574696F6E7320746F2068656C7020796F75206D6F6E69746F7220656C65637472696320636F6E73756D7074696F6E20616E6420637573746F6D697A6520796F7572207363656E6172696F7320746F20737769746368206170706C69616E636573207768656E20796F7520646F6E5C753230313974206E6565642069742E227D','{\"ar\":\"This is the actual content for the Energy saving section.\",\"en\":\"This is the actual content for the Energy saving section.\"}','content','solution','energy-saving',1,NULL,'https://example.com','{\"ar\":\"Click here to view more.\",\"en\":\"Click here to view more.\"}',NULL,'2025-01-11 13:29:45',NULL),
	(12,X'7B226172223A22456E7465727461696E6D656E7420616E6420736F756E64222C22656E223A22456E7465727461696E6D656E7420616E6420736F756E64227D',X'7B226172223A2246756C6C20636F6E74726F6C206F6620796F757220656E7465727461696E6D656E7420616E6420737572726F756E64696E672073797374656D222C22656E223A2246756C6C20636F6E74726F6C206F6620796F757220656E7465727461696E6D656E7420616E6420737572726F756E64696E672073797374656D227D','{\"ar\":\"This is the actual content for the Entertainment and sound section.\",\"en\":\"This is the actual content for the Entertainment and sound section.\"}','content','solution','entertainment-and-sound',1,NULL,'https://example.com','{\"ar\":\"Click here to view more.\",\"en\":\"Click here to view more.\"}',NULL,'2025-01-11 13:30:08',NULL),
	(13,X'7B226172223A224D6F74696F6E2073656E736F72222C22656E223A224D6F74696F6E2073656E736F72227D',X'7B226172223A224D6F74696F6E2073656E736F72222C22656E223A224D6F74696F6E2073656E736F72227D','{\"ar\":\"This is the actual content for the Motion sensor section.\",\"en\":\"This is the actual content for the Motion sensor section.\"}','content','product','motion-sensor',1,NULL,'https://example.com','{\"ar\":\"Click here to view more.\",\"en\":\"Click here to view more.\"}',NULL,'2025-01-12 14:29:04','2025-01-12 14:29:04'),
	(14,X'7B226172223A22537769746368656420616E6420746F7563682073637265656E73222C22656E223A22537769746368656420616E6420746F7563682073637265656E73227D',X'7B226172223A22537769746368656420616E6420746F7563682073637265656E73222C22656E223A22537769746368656420616E6420746F7563682073637265656E73227D','{\"ar\":\"This is the actual content for the Switched and touch screens section.\",\"en\":\"This is the actual content for the Switched and touch screens section.\"}','content','product','switched-and-touch-screens',1,NULL,'https://example.com','{\"ar\":\"Click here to view more.\",\"en\":\"Click here to view more.\"}',NULL,'2025-01-12 14:28:37','2025-01-12 14:28:37'),
	(15,X'7B226172223A2241697220636F6E646974696F6E696E67222C22656E223A2241697220636F6E646974696F6E696E67227D',X'7B226172223A2241697220636F6E646974696F6E696E67222C22656E223A2241697220636F6E646974696F6E696E67227D','{\"ar\":\"This is the actual content for the Air conditioning section.\",\"en\":\"This is the actual content for the Air conditioning section.\"}','content','product','air-conditioning',1,NULL,'https://example.com','{\"ar\":\"Click here to view more.\",\"en\":\"Click here to view more.\"}',NULL,'2025-01-12 14:28:56','2025-01-12 14:28:56'),
	(16,X'7B226172223A22537570706F72746564206672616D65776F726B7320616E64204272616E6473222C22656E223A22537570706F72746564206672616D65776F726B7320616E64204272616E6473227D',X'7B226172223A2241697220636F6E646974696F6E696E67222C22656E223A2241697220636F6E646974696F6E696E67227D','{\"ar\":\"This is the actual content for the Air conditioning section.\",\"en\":\"This is the actual content for the Air conditioning section.\"}','content','framworks','supported-frameworks-and-brands',1,NULL,'https://example.com','{\"ar\":\"Click here to view more.\",\"en\":\"Click here to view more.\"}',NULL,'2025-01-11 13:18:34',NULL),
	(17,X'7B226172223A2250726F6475637473205061676520636F6E74656E74222C22656E223A2250726F6475637473205061676520636F6E74656E74227D',X'7B226172223A2256617269617479206F6620686967682D74656368206465766963657320616E642070726F647563747320666F7220796F757220536D61727420486F6D6520616C6C6F7720636F6E74726F6C206D756C7469706C6520617265617320616E64206170706C69616E6365732C2073696D706C652C206561737920616E642072656C6961626C652E202020202020222C22656E223A2256617269617479206F6620686967682D74656368206465766963657320616E642070726F647563747320666F7220796F757220536D61727420486F6D6520616C6C6F7720636F6E74726F6C206D756C7469706C6520617265617320616E64206170706C69616E6365732C2073696D706C652C206561737920616E642072656C6961626C652E202020202020227D','{\"ar\":\"This is the actual content for the products page.\",\"en\":\"This is the actual content for the products page.\"}','conten','Products_page_content','products',1,NULL,'https://example.com','{\"ar\":\"Control you home now.\",\"en\":\"Control you home now.\"}',NULL,NULL,NULL),
	(18,X'7B226172223A22536D61727420686F6D6520636F6D706F6E656E7473222C22656E223A22536D61727420686F6D6520636F6D706F6E656E7473227D',X'7B226172223A22416C6C20696E746572616374696F6E732077697468206F6E6520696E2D61707020636C69636B222C22656E223A22416C6C20696E746572616374696F6E732077697468206F6E6520696E2D61707020636C69636B227D','{\"ar\":\"Device control Lighting Security & Surveillance Air conditioning & Climat control\",\"en\":\"Device control Lighting Security & Surveillance Air conditioning & Climat control\"}','content','SmartHomeComponents_content','smart-home-components',1,NULL,'https://example.com','{\"ar\":\"Click here to view more.\",\"en\":\"Click here to view more.\"}',NULL,'2025-01-11 13:48:40',NULL),
	(19,X'7B226172223A22737570706F72746564206272616E6473222C22656E223A22737570706F72746564206272616E6473227D',X'7B226172223A22737570706F72746564206272616E6473222C22656E223A22737570706F72746564206272616E6473227D','{\"ar\":\"supported brands\",\"en\":\"supported brands\"}','content','supported_brands','supported-brands',1,NULL,'https://example.com','{\"ar\":\"Click here to view more.\",\"en\":\"Click here to view more.\"}',NULL,'2025-01-11 13:59:52',NULL),
	(20,X'7B226172223A22436F6D667920616E6420766572736174696C6520757361676520776974682072656D6F7465206D6F62696C6520617070222C22656E223A22436F6D667920616E6420766572736174696C6520757361676520776974682072656D6F7465206D6F62696C6520617070227D',X'7B226172223A2253696D706C652C20636F6E76656E69656E742C20616E6420656173696572207468616E20657665722E20416476616E63656420746563686E6F6C6F677920616C6C6F777320796F7520746F20636F6E6E656374207769746820476F6F676C6520417373697374616E7420616E6420416D617A6F6E20416C65786120746F206D616B65207468652070726F63657373206576656E206D6F726520706C656173616E742E222C22656E223A2253696D706C652C20636F6E76656E69656E742C20616E6420656173696572207468616E20657665722E20416476616E63656420746563686E6F6C6F677920616C6C6F777320796F7520746F20636F6E6E656374207769746820476F6F676C6520417373697374616E7420616E6420416D617A6F6E20416C65786120746F206D616B65207468652070726F63657373206576656E206D6F726520706C656173616E742E227D','{\"ar\":\"mobile app\",\"en\":\"mobile app\"}','content','remote_app','comfy-and-versatile-usage-with-remote-mobile-app',1,NULL,'https://example.com','{\"ar\":\"Click here to view more.\",\"en\":\"Click here to view more.\"}',NULL,'2025-01-11 14:01:01',NULL),
	(21,X'7B226172223A22496E7465726E616C20616E642065787465726E616C206E6574776F726B222C22656E223A22496E7465726E616C20616E642065787465726E616C206E6574776F726B227D',X'7B226172223A22436F6E6E6563746976697479207769746820696E7465726E616C20686F6D65206E6574776F726B206F7220696E7465726E657420746F20636F6E74726F6C2066726F6D206F757473696465222C22656E223A22436F6E6E6563746976697479207769746820696E7465726E616C20686F6D65206E6574776F726B206F7220696E7465726E657420746F20636F6E74726F6C2066726F6D206F757473696465227D','{\"ar\":\"This is the actual content for the Internal and external network section.\",\"en\":\"This is the actual content for the Internal and external network section.\"}','content','smart_product','internal-external-network-title',1,NULL,'https://example.com','{\"ar\":\"Click here to view more.\",\"en\":\"Click here to view more.\"}',NULL,NULL,NULL),
	(22,X'7B226172223A225377697463686573222C22656E223A225377697463686573227D',X'7B226172223A22436F6E6E6563746976697479207769746820696E7465726E616C20686F6D65206E6574776F726B206F7220696E7465726E657420746F20636F6E74726F6C2066726F6D206F757473696465222C22656E223A22436F6E6E6563746976697479207769746820696E7465726E616C20686F6D65206E6574776F726B206F7220696E7465726E657420746F20636F6E74726F6C2066726F6D206F757473696465227D','{\"ar\":\"This is the actual content for the Switches section.\",\"en\":\"This is the actual content for the Switches section.\"}','content','smart_product','switches-title',1,NULL,'https://example.com','{\"ar\":\"Click here to view more.\",\"en\":\"Click here to view more.\"}',NULL,NULL,NULL),
	(23,X'7B226172223A224170706C69616E63657320616E642064657669636573222C22656E223A224170706C69616E63657320616E642064657669636573227D',X'7B226172223A2241432C204C69676874696E672C20446F6F727320616E64206375727461696E2C2053656375726974792063616D657261222C22656E223A2241432C204C69676874696E672C20446F6F727320616E64206375727461696E2C2053656375726974792063616D657261227D','{\"ar\":\"This is the actual content for the Appliances and devices section.\",\"en\":\"This is the actual content for the Appliances and devices section.\"}','content','smart_product','appliances-devices-title',1,NULL,'https://example.com','{\"ar\":\"Click here to view more.\",\"en\":\"Click here to view more.\"}',NULL,NULL,NULL),
	(24,X'7B226172223A2250726F647563742063617465676F72696573222C22656E223A2250726F647563742063617465676F72696573227D',X'7B226172223A2256617269617479206F6620686967682D74656368206465766963657320616E642070726F647563747320666F7220796F757220536D61727420486F6D6520616C6C6F7720636F6E74726F6C206D756C7469706C6520617265617320616E64206170706C69616E6365732C2073696D706C652C206561737920616E642072656C6961626C652E222C22656E223A2256617269617479206F6620686967682D74656368206465766963657320616E642070726F647563747320666F7220796F757220536D61727420486F6D6520616C6C6F7720636F6E74726F6C206D756C7469706C6520617265617320616E64206170706C69616E6365732C2073696D706C652C206561737920616E642072656C6961626C652E227D','{\"ar\":\"This is the actual content for the Product categories section.\",\"en\":\"This is the actual content for the Product categories section.\"}','content','productsPage_content','product-categories-title',1,NULL,'https://example.com','{\"ar\":\"Control your home now\",\"en\":\"Control your home now\"}',NULL,NULL,NULL),
	(25,X'7B226172223A22536D61727420686F6D6520616476616E7461676573222C22656E223A22536D61727420686F6D6520616476616E7461676573227D',X'7B226172223A2257697468207468652068656C70206F6620736D61727420646576696365732C2074686520496E7465726E6574206F66205468696E67732063616E20636F6E6E65637420657665727920617370656374206F6620796F757220686F6D652E20546869732063726561746573206120756E6966696564206E6574776F726B20746861742069732061636365737369626C65207468726F75676820616E7920646576696365207769746820636F6D666F727420657870657269656E63652E20596F752077696C6C206E6F206C6F6E676572206861766520746F20776F7272792061626F757420796F757220686F6D65206170706C69616E636573206F722073656375726974792E204974206175746F6D61746963616C6C79207475726E696E67206F6666207768656E20796F75206C6561766520666F7220776F726B2E20596F75722073797374656D2077696C6C2062652061626C6520746F2073656E7365207768656E20736F6D656F6E6520697320696E2074686520686F6D6520616E642073687574206F666620746865206C696768747320616E64204143206163636F7264696E676C79206F722070726F7669646520796F75207769746820616C657274222C22656E223A2257697468207468652068656C70206F6620736D61727420646576696365732C2074686520496E7465726E6574206F66205468696E67732063616E20636F6E6E65637420657665727920617370656374206F6620796F757220686F6D652E20546869732063726561746573206120756E6966696564206E6574776F726B20746861742069732061636365737369626C65207468726F75676820616E7920646576696365207769746820636F6D666F727420657870657269656E63652E20596F752077696C6C206E6F206C6F6E676572206861766520746F20776F7272792061626F757420796F757220686F6D65206170706C69616E636573206F722073656375726974792E204974206175746F6D61746963616C6C79207475726E696E67206F6666207768656E20796F75206C6561766520666F7220776F726B2E20596F75722073797374656D2077696C6C2062652061626C6520746F2073656E7365207768656E20736F6D656F6E6520697320696E2074686520686F6D6520616E642073687574206F666620746865206C696768747320616E64204143206163636F7264696E676C79206F722070726F7669646520796F75207769746820616C657274227D','{\"ar\":\"comfort for you, thrift for the home\",\"en\":\"comfort for you, thrift for the home\"}','content','advantagesPage_content','smart-home-advantages',1,NULL,'https://example.com','{\"ar\":\"Control you home now\",\"en\":\"Control you home now\"}',NULL,'2025-01-12 00:30:00',NULL),
	(26,X'7B226172223A22456E6572677920536176696E67222C22656E223A22456E6572677920536176696E67227D',X'7B226172223A22416476616E63656420746563686E6F6C6F6769657320616E6420636F6D706C657820736F6C7574696F6E7320746F20656E7375726520796F7572206170706C69616E63657320616E6420686F6D6520746563686E69717565206973207573656420696E20746865206D6F737420656666656374697665207761792E222C22656E223A22416476616E63656420746563686E6F6C6F6769657320616E6420636F6D706C657820736F6C7574696F6E7320746F20656E7375726520796F7572206170706C69616E63657320616E6420686F6D6520746563686E69717565206973207573656420696E20746865206D6F737420656666656374697665207761792E227D','{\"ar\":\"This is the actual content for the Energy Saving advantage.\",\"en\":\"This is the actual content for the Energy Saving advantage.\"}','content','advantage','energy-saving-advantage',1,NULL,'https://example.com','{\"ar\":\"Click here to view more.\",\"en\":\"Click here to view more.\"}',NULL,NULL,NULL),
	(27,X'7B226172223A22536D61727420486F6D6520536F6C7574696F6E73222C22656E223A22536D61727420486F6D6520536F6C7574696F6E73227D',X'7B226172223A22436F6D706C65746520736D61727420736F6C7574696F6E7320746F2073696D706C69667920616E64206F7074696D697A6520796F7572206461696C7920726F7574696E65732E222C22656E223A22436F6D706C65746520736D61727420736F6C7574696F6E7320746F2073696D706C69667920616E64206F7074696D697A6520796F7572206461696C7920726F7574696E65732E227D','{\"ar\":\"This is the actual content for the Smart Home Solutions advantage.\",\"en\":\"This is the actual content for the Smart Home Solutions advantage.\"}','content','advantage','smart-home-solutions-advantage',1,NULL,'https://example.com','{\"ar\":\"Click here to view more.\",\"en\":\"Click here to view more.\"}',NULL,NULL,NULL),
	(28,X'7B226172223A22536563757269747920536F6C7574696F6E73222C22656E223A22536563757269747920536F6C7574696F6E73227D',X'7B226172223A22416476616E6365642073656375726974792073797374656D7320746F2070726F7465637420796F757220686F6D6520616E64206C6F766564206F6E65732E222C22656E223A22416476616E6365642073656375726974792073797374656D7320746F2070726F7465637420796F757220686F6D6520616E64206C6F766564206F6E65732E227D','{\"ar\":\"This is the actual content for the Security Solutions advantage.\",\"en\":\"This is the actual content for the Security Solutions advantage.\"}','content','advantage','security-solutions-advantage',1,NULL,'https://example.com','{\"ar\":\"Click here to view more.\",\"en\":\"Click here to view more.\"}',NULL,NULL,NULL),
	(29,X'7B226172223A22437573746F6D697A61626C65205363656E6172696F73222C22656E223A22437573746F6D697A61626C65205363656E6172696F73227D',X'7B226172223A225461696C6F726564206175746F6D6174696F6E207363656E6172696F7320666F722061206D6F726520706572736F6E616C697A656420686F6D6520657870657269656E63652E222C22656E223A225461696C6F726564206175746F6D6174696F6E207363656E6172696F7320666F722061206D6F726520706572736F6E616C697A656420686F6D6520657870657269656E63652E227D','{\"ar\":\"This is the actual content for the Customizable Scenarios advantage.\",\"en\":\"This is the actual content for the Customizable Scenarios advantage.\"}','content','advantage','customizable-scenarios-advantage',1,NULL,'https://example.com','{\"ar\":\"Click here to view more.\",\"en\":\"Click here to view more.\"}',NULL,NULL,NULL);

/*!40000 ALTER TABLE `site_contents` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table site_settings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `site_settings`;

CREATE TABLE `site_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `facebookLink` varchar(255) DEFAULT NULL,
  `instaLink` varchar(255) DEFAULT NULL,
  `xLink` varchar(255) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `mobileAppLink` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `logo_path` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `site_settings` WRITE;
/*!40000 ALTER TABLE `site_settings` DISABLE KEYS */;

INSERT INTO `site_settings` (`id`, `title`, `facebookLink`, `instaLink`, `xLink`, `mail`, `mobileAppLink`, `description`, `logo_path`, `created_at`, `updated_at`)
VALUES
	(1,'Control your home corners','https://facebook.com/example1','https://instagram.com/example1','https://x.com/example1','example1@example.com','https://appstore.com/example1','This is a description for example 1.','logos/example1.png','2025-01-08 18:55:54','2025-01-09 17:47:21');

/*!40000 ALTER TABLE `site_settings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`)
VALUES
	(1,'Admin','admin@admin.com',NULL,'$2y$12$wnkVpJEmBJp9IgoinTLLTu.ipG2yC2juCT/aDMN/ag327HcYIYB6a','NG7im34Q89FYtdJbU3ziTEc9j1wNim2mTPMruGeK4xRrAmXYMNmeu9B5chcv','2025-01-08 18:55:54','2025-01-08 18:55:54');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
