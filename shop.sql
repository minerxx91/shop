-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hostiteľ: 127.0.0.1
-- Čas generovania: Po 24.Okt 2022, 22:15
-- Verzia serveru: 10.4.21-MariaDB
-- Verzia PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáza: `shop`
--

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_actionscheduler_actions`
--

CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `hook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scheduled_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `last_attempt_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `wp_actionscheduler_actions`
--

INSERT INTO `wp_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(6, 'action_scheduler/migration_hook', 'complete', '2022-10-05 18:12:10', '2022-10-05 20:12:10', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1664993530;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1664993530;}', 1, 1, '2022-10-05 18:12:17', '2022-10-05 20:12:17', 0, NULL),
(7, 'woocommerce_cleanup_draft_orders', 'complete', '2022-10-05 18:11:14', '2022-10-05 20:11:14', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1664993474;s:18:\"\0*\0first_timestamp\";i:1664993474;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1664993474;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 0, 1, '2022-10-05 18:12:17', '2022-10-05 20:12:17', 0, NULL),
(8, 'woocommerce_cleanup_draft_orders', 'complete', '2022-10-06 18:12:17', '2022-10-06 20:12:17', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1665079937;s:18:\"\0*\0first_timestamp\";i:1664993474;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1665079937;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 0, 1, '2022-10-10 19:57:18', '2022-10-10 21:57:18', 0, NULL),
(9, 'woocommerce_admin/stored_state_setup_for_products/async/run_remote_notifications', 'complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '[]', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 0, 1, '2022-10-05 18:35:15', '2022-10-05 20:35:15', 0, NULL),
(10, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-10-05 18:34:20', '2022-10-05 20:34:20', '[11,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1664994860;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1664994860;}', 2, 1, '2022-10-05 18:35:15', '2022-10-05 20:35:15', 0, NULL),
(11, 'wc-admin_import_customers', 'complete', '2022-10-05 19:19:04', '2022-10-05 21:19:04', '[1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1664997544;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1664997544;}', 3, 1, '2022-10-05 19:19:07', '2022-10-05 21:19:07', 0, NULL),
(12, 'wc-admin_import_orders', 'complete', '2022-10-05 19:19:04', '2022-10-05 21:19:04', '[16]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1664997544;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1664997544;}', 3, 1, '2022-10-05 19:19:07', '2022-10-05 21:19:07', 0, NULL),
(13, 'wc-admin_import_orders', 'complete', '2022-10-05 19:20:36', '2022-10-05 21:20:36', '[16]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1664997636;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1664997636;}', 3, 1, '2022-10-05 19:20:42', '2022-10-05 21:20:42', 0, NULL),
(14, 'woocommerce_run_product_attribute_lookup_regeneration_callback', 'complete', '2022-10-06 07:46:37', '2022-10-06 09:46:37', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1665042397;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1665042397;}', 2, 1, '2022-10-06 07:46:37', '2022-10-06 09:46:37', 0, NULL),
(15, 'wc-admin_import_customers', 'complete', '2022-10-06 07:48:25', '2022-10-06 09:48:25', '[1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1665042505;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1665042505;}', 3, 1, '2022-10-06 07:49:20', '2022-10-06 09:49:20', 0, NULL),
(16, 'wc-admin_import_customers', 'complete', '2022-10-06 08:31:37', '2022-10-06 10:31:37', '[1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1665045097;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1665045097;}', 3, 1, '2022-10-06 08:31:37', '2022-10-06 10:31:37', 0, NULL),
(17, 'wc-admin_import_orders', 'complete', '2022-10-06 08:31:37', '2022-10-06 10:31:37', '[18]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1665045097;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1665045097;}', 3, 1, '2022-10-06 08:31:37', '2022-10-06 10:31:37', 0, NULL),
(18, 'wc-admin_import_customers', 'complete', '2022-10-06 08:32:27', '2022-10-06 10:32:27', '[1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1665045147;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1665045147;}', 3, 1, '2022-10-06 08:32:35', '2022-10-06 10:32:35', 0, NULL),
(19, 'wc-admin_import_orders', 'complete', '2022-10-06 08:32:29', '2022-10-06 10:32:29', '[18]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1665045149;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1665045149;}', 3, 1, '2022-10-06 08:32:35', '2022-10-06 10:32:35', 0, NULL),
(20, 'wc-admin_import_orders', 'complete', '2022-10-06 08:33:23', '2022-10-06 10:33:23', '[18]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1665045203;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1665045203;}', 3, 1, '2022-10-06 08:33:37', '2022-10-06 10:33:37', 0, NULL),
(21, 'woocommerce_cleanup_draft_orders', 'complete', '2022-10-11 19:57:18', '2022-10-11 21:57:18', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1665518238;s:18:\"\0*\0first_timestamp\";i:1664993474;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1665518238;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 0, 1, '2022-10-11 19:57:26', '2022-10-11 21:57:26', 0, NULL),
(22, 'wc-admin_import_customers', 'complete', '2022-10-10 19:57:23', '2022-10-10 21:57:23', '[1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1665431843;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1665431843;}', 3, 1, '2022-10-10 19:57:27', '2022-10-10 21:57:27', 0, NULL),
(23, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-10-10 19:58:37', '2022-10-10 21:58:37', '[11,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1665431917;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1665431917;}', 2, 1, '2022-10-10 20:00:01', '2022-10-10 22:00:01', 0, NULL),
(24, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-10-10 20:00:31', '2022-10-10 22:00:31', '[20,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1665432031;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1665432031;}', 2, 1, '2022-10-10 20:00:42', '2022-10-10 22:00:42', 0, NULL),
(25, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-10-10 20:00:43', '2022-10-10 22:00:43', '[20,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1665432043;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1665432043;}', 2, 1, '2022-10-10 20:01:39', '2022-10-10 22:01:39', 0, NULL),
(26, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-10-10 20:01:03', '2022-10-10 22:01:03', '[21,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1665432063;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1665432063;}', 2, 1, '2022-10-10 20:01:39', '2022-10-10 22:01:39', 0, NULL),
(27, 'wc-admin_import_customers', 'complete', '2022-10-11 19:57:20', '2022-10-11 21:57:20', '[1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1665518240;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1665518240;}', 3, 1, '2022-10-11 19:57:26', '2022-10-11 21:57:26', 0, NULL),
(28, 'woocommerce_cleanup_draft_orders', 'complete', '2022-10-12 19:57:26', '2022-10-12 21:57:26', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1665604646;s:18:\"\0*\0first_timestamp\";i:1664993474;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1665604646;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 0, 1, '2022-10-13 13:27:19', '2022-10-13 15:27:19', 0, NULL),
(29, 'wc-admin_import_customers', 'complete', '2022-10-12 18:38:33', '2022-10-12 20:38:33', '[1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1665599913;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1665599913;}', 3, 1, '2022-10-12 18:38:37', '2022-10-12 20:38:37', 0, NULL),
(30, 'woocommerce_cleanup_draft_orders', 'complete', '2022-10-14 13:27:19', '2022-10-14 15:27:19', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1665754039;s:18:\"\0*\0first_timestamp\";i:1664993474;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1665754039;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 0, 1, '2022-10-14 18:38:34', '2022-10-14 20:38:34', 0, NULL),
(31, 'wc-admin_import_customers', 'complete', '2022-10-13 13:55:12', '2022-10-13 15:55:12', '[1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1665669312;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1665669312;}', 3, 1, '2022-10-13 13:55:51', '2022-10-13 15:55:51', 0, NULL),
(32, 'woocommerce_cleanup_draft_orders', 'complete', '2022-10-15 18:38:34', '2022-10-15 20:38:34', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1665859114;s:18:\"\0*\0first_timestamp\";i:1664993474;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1665859114;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 0, 1, '2022-10-16 10:04:03', '2022-10-16 12:04:03', 0, NULL),
(33, 'woocommerce_cleanup_draft_orders', 'complete', '2022-10-17 10:04:03', '2022-10-17 12:04:03', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1666001043;s:18:\"\0*\0first_timestamp\";i:1664993474;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1666001043;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 0, 1, '2022-10-17 18:56:43', '2022-10-17 20:56:43', 0, NULL),
(34, 'wc-admin_import_customers', 'complete', '2022-10-16 10:08:57', '2022-10-16 12:08:57', '[1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1665914937;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1665914937;}', 3, 1, '2022-10-16 10:10:34', '2022-10-16 12:10:34', 0, NULL),
(35, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-10-16 15:31:21', '2022-10-16 17:31:21', '[11,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1665934281;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1665934281;}', 2, 1, '2022-10-16 15:36:13', '2022-10-16 17:36:13', 0, NULL),
(36, 'woocommerce_cleanup_draft_orders', 'complete', '2022-10-18 18:56:43', '2022-10-18 20:56:43', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1666119403;s:18:\"\0*\0first_timestamp\";i:1664993474;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1666119403;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 0, 1, '2022-10-18 18:57:36', '2022-10-18 20:57:36', 0, NULL),
(37, 'wc-admin_import_customers', 'complete', '2022-10-17 19:25:19', '2022-10-17 21:25:19', '[1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1666034719;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1666034719;}', 3, 1, '2022-10-17 19:26:04', '2022-10-17 21:26:04', 0, NULL),
(38, 'wc-admin_import_orders', 'complete', '2022-10-18 18:27:01', '2022-10-18 20:27:01', '[37]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1666117621;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1666117621;}', 3, 1, '2022-10-18 18:27:21', '2022-10-18 20:27:21', 0, NULL),
(39, 'wc-admin_import_customers', 'complete', '2022-10-18 18:27:32', '2022-10-18 20:27:32', '[1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1666117652;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1666117652;}', 3, 1, '2022-10-18 18:27:37', '2022-10-18 20:27:37', 0, NULL),
(40, 'wc-admin_import_orders', 'complete', '2022-10-18 18:27:50', '2022-10-18 20:27:50', '[37]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1666117670;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1666117670;}', 3, 1, '2022-10-18 18:31:12', '2022-10-18 20:31:12', 0, NULL),
(41, 'woocommerce_cleanup_draft_orders', 'complete', '2022-10-19 18:57:36', '2022-10-19 20:57:36', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1666205856;s:18:\"\0*\0first_timestamp\";i:1664993474;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1666205856;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 0, 1, '2022-10-19 18:57:45', '2022-10-19 20:57:45', 0, NULL),
(42, 'wc-admin_import_customers', 'complete', '2022-10-18 19:38:35', '2022-10-18 21:38:35', '[1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1666121915;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1666121915;}', 3, 1, '2022-10-18 19:38:36', '2022-10-18 21:38:36', 0, NULL),
(43, 'wc-admin_import_orders', 'complete', '2022-10-18 19:38:35', '2022-10-18 21:38:35', '[42]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1666121915;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1666121915;}', 3, 1, '2022-10-18 19:38:36', '2022-10-18 21:38:36', 0, NULL),
(44, 'wc-admin_import_orders', 'complete', '2022-10-18 19:41:00', '2022-10-18 21:41:00', '[42]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1666122060;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1666122060;}', 3, 1, '2022-10-18 19:42:28', '2022-10-18 21:42:28', 0, NULL),
(45, 'wc-admin_import_customers', 'complete', '2022-10-19 17:23:30', '2022-10-19 19:23:30', '[1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1666200210;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1666200210;}', 3, 1, '2022-10-19 17:23:52', '2022-10-19 19:23:52', 0, NULL),
(46, 'woocommerce_cleanup_draft_orders', 'complete', '2022-10-20 18:57:45', '2022-10-20 20:57:45', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1666292265;s:18:\"\0*\0first_timestamp\";i:1664993474;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1666292265;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 0, 1, '2022-10-22 11:23:47', '2022-10-22 13:23:47', 0, NULL),
(47, 'woocommerce_cleanup_draft_orders', 'complete', '2022-10-23 11:23:47', '2022-10-23 13:23:47', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1666524227;s:18:\"\0*\0first_timestamp\";i:1664993474;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1666524227;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 0, 1, '2022-10-23 19:32:23', '2022-10-23 21:32:23', 0, NULL),
(48, 'wc-admin_import_customers', 'complete', '2022-10-22 12:07:28', '2022-10-22 14:07:28', '[1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1666440448;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1666440448;}', 3, 1, '2022-10-22 12:08:01', '2022-10-22 14:08:01', 0, NULL),
(49, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-10-22 12:23:29', '2022-10-22 14:23:29', '[49,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1666441409;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1666441409;}', 2, 1, '2022-10-22 12:23:41', '2022-10-22 14:23:41', 0, NULL),
(50, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-10-22 12:23:42', '2022-10-22 14:23:42', '[49,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1666441422;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1666441422;}', 2, 1, '2022-10-22 12:24:45', '2022-10-22 14:24:45', 0, NULL),
(51, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-10-22 12:28:29', '2022-10-22 14:28:29', '[49,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1666441709;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1666441709;}', 2, 1, '2022-10-22 12:28:40', '2022-10-22 14:28:40', 0, NULL),
(52, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-10-22 12:31:46', '2022-10-22 14:31:46', '[52,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1666441906;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1666441906;}', 2, 1, '2022-10-22 12:32:44', '2022-10-22 14:32:44', 0, NULL),
(53, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-10-22 12:32:16', '2022-10-22 14:32:16', '[21,3]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1666441936;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1666441936;}', 2, 1, '2022-10-22 12:32:44', '2022-10-22 14:32:44', 0, NULL),
(54, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-10-22 12:32:21', '2022-10-22 14:32:21', '[20,3]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1666441941;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1666441941;}', 2, 1, '2022-10-22 12:32:44', '2022-10-22 14:32:44', 0, NULL),
(55, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-10-22 12:32:27', '2022-10-22 14:32:27', '[11,3]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1666441947;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1666441947;}', 2, 1, '2022-10-22 12:32:44', '2022-10-22 14:32:44', 0, NULL),
(56, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-10-22 12:34:26', '2022-10-22 14:34:26', '[54,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1666442066;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1666442066;}', 2, 1, '2022-10-22 12:35:07', '2022-10-22 14:35:07', 0, NULL),
(57, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-10-22 12:36:04', '2022-10-22 14:36:04', '[56,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1666442164;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1666442164;}', 2, 1, '2022-10-22 12:37:06', '2022-10-22 14:37:06', 0, NULL),
(58, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-10-22 13:01:15', '2022-10-22 15:01:15', '[58,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1666443675;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1666443675;}', 2, 1, '2022-10-22 13:02:00', '2022-10-22 15:02:00', 0, NULL),
(59, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-10-22 13:02:28', '2022-10-22 15:02:28', '[60,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1666443748;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1666443748;}', 2, 1, '2022-10-22 13:02:37', '2022-10-22 15:02:37', 0, NULL),
(60, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-10-22 13:04:31', '2022-10-22 15:04:31', '[62,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1666443871;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1666443871;}', 2, 1, '2022-10-22 13:04:32', '2022-10-22 15:04:32', 0, NULL),
(61, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-10-22 13:06:55', '2022-10-22 15:06:55', '[64,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1666444015;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1666444015;}', 2, 1, '2022-10-22 13:07:44', '2022-10-22 15:07:44', 0, NULL),
(62, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-10-22 13:07:54', '2022-10-22 15:07:54', '[66,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1666444074;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1666444074;}', 2, 1, '2022-10-22 13:07:56', '2022-10-22 15:07:56', 0, NULL),
(63, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-10-22 13:10:26', '2022-10-22 15:10:26', '[68,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1666444226;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1666444226;}', 2, 1, '2022-10-22 13:10:42', '2022-10-22 15:10:42', 0, NULL),
(64, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-10-22 13:12:01', '2022-10-22 15:12:01', '[70,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1666444321;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1666444321;}', 2, 1, '2022-10-22 13:13:04', '2022-10-22 15:13:04', 0, NULL),
(65, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-10-22 13:14:13', '2022-10-22 15:14:13', '[72,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1666444453;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1666444453;}', 2, 1, '2022-10-22 13:14:54', '2022-10-22 15:14:54', 0, NULL),
(66, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-10-22 13:15:01', '2022-10-22 15:15:01', '[74,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1666444501;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1666444501;}', 2, 1, '2022-10-22 13:15:34', '2022-10-22 15:15:34', 0, NULL),
(67, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-10-22 13:16:07', '2022-10-22 15:16:07', '[76,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1666444567;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1666444567;}', 2, 1, '2022-10-22 13:16:37', '2022-10-22 15:16:37', 0, NULL),
(68, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-10-22 13:17:08', '2022-10-22 15:17:08', '[78,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1666444628;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1666444628;}', 2, 1, '2022-10-22 13:17:36', '2022-10-22 15:17:36', 0, NULL),
(69, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-10-22 13:18:03', '2022-10-22 15:18:03', '[80,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1666444683;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1666444683;}', 2, 1, '2022-10-22 13:18:51', '2022-10-22 15:18:51', 0, NULL),
(70, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-10-22 13:19:16', '2022-10-22 15:19:16', '[82,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1666444756;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1666444756;}', 2, 1, '2022-10-22 13:19:36', '2022-10-22 15:19:36', 0, NULL),
(71, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-10-22 13:20:00', '2022-10-22 15:20:00', '[84,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1666444800;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1666444800;}', 2, 1, '2022-10-22 13:20:38', '2022-10-22 15:20:38', 0, NULL),
(72, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-10-22 13:21:01', '2022-10-22 15:21:01', '[86,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1666444861;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1666444861;}', 2, 1, '2022-10-22 13:21:48', '2022-10-22 15:21:48', 0, NULL),
(73, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-10-22 13:21:50', '2022-10-22 15:21:50', '[88,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1666444910;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1666444910;}', 2, 1, '2022-10-22 13:22:04', '2022-10-22 15:22:04', 0, NULL),
(74, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-10-22 13:22:13', '2022-10-22 15:22:13', '[88,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1666444933;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1666444933;}', 2, 1, '2022-10-22 13:22:43', '2022-10-22 15:22:43', 0, NULL),
(75, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-10-22 13:23:12', '2022-10-22 15:23:12', '[90,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1666444992;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1666444992;}', 2, 1, '2022-10-22 13:23:56', '2022-10-22 15:23:56', 0, NULL),
(76, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-10-22 13:24:30', '2022-10-22 15:24:30', '[92,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1666445070;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1666445070;}', 2, 1, '2022-10-22 13:24:53', '2022-10-22 15:24:53', 0, NULL),
(77, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-10-22 13:25:18', '2022-10-22 15:25:18', '[94,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1666445118;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1666445118;}', 2, 1, '2022-10-22 13:25:37', '2022-10-22 15:25:37', 0, NULL),
(78, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-10-22 13:26:17', '2022-10-22 15:26:17', '[96,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1666445177;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1666445177;}', 2, 1, '2022-10-22 13:26:42', '2022-10-22 15:26:42', 0, NULL),
(79, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-10-22 13:27:50', '2022-10-22 15:27:50', '[98,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1666445270;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1666445270;}', 2, 1, '2022-10-22 13:28:24', '2022-10-22 15:28:24', 0, NULL),
(80, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-10-22 13:28:32', '2022-10-22 15:28:32', '[100,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1666445312;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1666445312;}', 2, 1, '2022-10-22 13:29:28', '2022-10-22 15:29:28', 0, NULL),
(81, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-10-22 13:30:35', '2022-10-22 15:30:35', '[102,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1666445435;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1666445435;}', 2, 1, '2022-10-22 13:30:35', '2022-10-22 15:30:35', 0, NULL),
(82, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-10-22 13:31:19', '2022-10-22 15:31:19', '[104,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1666445479;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1666445479;}', 2, 1, '2022-10-22 13:31:41', '2022-10-22 15:31:41', 0, NULL),
(83, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-10-22 13:32:37', '2022-10-22 15:32:37', '[106,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1666445557;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1666445557;}', 2, 1, '2022-10-22 13:33:06', '2022-10-22 15:33:06', 0, NULL),
(84, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-10-22 13:33:56', '2022-10-22 15:33:56', '[108,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1666445636;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1666445636;}', 2, 1, '2022-10-22 13:34:25', '2022-10-22 15:34:25', 0, NULL),
(85, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-10-22 13:35:29', '2022-10-22 15:35:29', '[110,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1666445729;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1666445729;}', 2, 1, '2022-10-22 13:35:49', '2022-10-22 15:35:49', 0, NULL),
(86, 'wc-admin_import_customers', 'complete', '2022-10-22 13:43:21', '2022-10-22 15:43:21', '[1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1666446201;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1666446201;}', 3, 1, '2022-10-22 13:43:42', '2022-10-22 15:43:42', 0, NULL),
(87, 'wc-admin_import_orders', 'complete', '2022-10-22 13:43:21', '2022-10-22 15:43:21', '[112]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1666446201;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1666446201;}', 3, 1, '2022-10-22 13:43:42', '2022-10-22 15:43:42', 0, NULL),
(88, 'wc-admin_import_orders', 'complete', '2022-10-22 13:46:44', '2022-10-22 15:46:44', '[112]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1666446404;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1666446404;}', 3, 1, '2022-10-22 13:47:51', '2022-10-22 15:47:51', 0, NULL),
(89, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-10-22 19:05:20', '2022-10-22 21:05:20', '[60,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1666465520;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1666465520;}', 2, 1, '2022-10-22 19:05:40', '2022-10-22 21:05:40', 0, NULL),
(90, 'wc-admin_import_customers', 'complete', '2022-10-22 19:48:18', '2022-10-22 21:48:18', '[1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1666468098;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1666468098;}', 3, 1, '2022-10-22 19:48:36', '2022-10-22 21:48:36', 0, NULL),
(91, 'wc-admin_import_orders', 'complete', '2022-10-22 19:48:18', '2022-10-22 21:48:18', '[114]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1666468098;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1666468098;}', 3, 1, '2022-10-22 19:48:36', '2022-10-22 21:48:36', 0, NULL),
(92, 'wc-admin_import_orders', 'complete', '2022-10-22 19:48:57', '2022-10-22 21:48:57', '[114]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1666468137;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1666468137;}', 3, 1, '2022-10-22 19:49:40', '2022-10-22 21:49:40', 0, NULL),
(93, 'wc-admin_import_customers', 'complete', '2022-10-22 19:51:11', '2022-10-22 21:51:11', '[1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1666468271;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1666468271;}', 3, 1, '2022-10-22 19:51:21', '2022-10-22 21:51:21', 0, NULL),
(94, 'wc-admin_import_orders', 'complete', '2022-10-22 19:51:11', '2022-10-22 21:51:11', '[115]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1666468271;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1666468271;}', 3, 1, '2022-10-22 19:51:21', '2022-10-22 21:51:21', 0, NULL),
(95, 'wc-admin_import_orders', 'complete', '2022-10-22 19:51:48', '2022-10-22 21:51:48', '[115]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1666468308;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1666468308;}', 3, 1, '2022-10-23 19:32:23', '2022-10-23 21:32:23', 0, NULL),
(96, 'wc-admin_import_customers', 'complete', '2022-10-23 19:32:28', '2022-10-23 21:32:28', '[1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1666553548;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1666553548;}', 3, 1, '2022-10-23 19:32:32', '2022-10-23 21:32:32', 0, NULL),
(97, 'woocommerce_cleanup_draft_orders', 'complete', '2022-10-24 19:32:23', '2022-10-24 21:32:23', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1666639943;s:18:\"\0*\0first_timestamp\";i:1664993474;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1666639943;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 0, 1, '2022-10-24 19:34:42', '2022-10-24 21:34:42', 0, NULL),
(98, 'woocommerce_cleanup_draft_orders', 'pending', '2022-10-25 19:34:42', '2022-10-25 21:34:42', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1666726482;s:18:\"\0*\0first_timestamp\";i:1664993474;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1666726482;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_actionscheduler_claims`
--

CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL,
  `date_created_gmt` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_actionscheduler_groups`
--

CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `wp_actionscheduler_groups`
--

INSERT INTO `wp_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'action-scheduler-migration'),
(2, 'woocommerce-db-updates'),
(3, 'wc-admin-data');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_actionscheduler_logs`
--

CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `wp_actionscheduler_logs`
--

INSERT INTO `wp_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(1, 6, 'akcia vytvorená', '2022-10-05 18:11:10', '2022-10-05 20:11:10'),
(2, 7, 'akcia vytvorená', '2022-10-05 18:11:14', '2022-10-05 20:11:14'),
(3, 7, 'akcia sa začala prostredníctvom Async Request', '2022-10-05 18:12:17', '2022-10-05 20:12:17'),
(4, 7, 'akcia dokončená pomocou Async Request', '2022-10-05 18:12:17', '2022-10-05 20:12:17'),
(5, 8, 'akcia vytvorená', '2022-10-05 18:12:17', '2022-10-05 20:12:17'),
(6, 6, 'akcia sa začala prostredníctvom Async Request', '2022-10-05 18:12:17', '2022-10-05 20:12:17'),
(7, 6, 'akcia dokončená pomocou Async Request', '2022-10-05 18:12:17', '2022-10-05 20:12:17'),
(8, 9, 'akcia vytvorená', '2022-10-05 18:34:18', '2022-10-05 20:34:18'),
(9, 10, 'akcia vytvorená', '2022-10-05 18:34:19', '2022-10-05 20:34:19'),
(10, 9, 'akcia sa začala prostredníctvom WP Cron', '2022-10-05 18:35:15', '2022-10-05 20:35:15'),
(11, 9, 'akcia dokončená pomocou WP Cron', '2022-10-05 18:35:15', '2022-10-05 20:35:15'),
(12, 10, 'akcia sa začala prostredníctvom WP Cron', '2022-10-05 18:35:15', '2022-10-05 20:35:15'),
(13, 10, 'akcia dokončená pomocou WP Cron', '2022-10-05 18:35:15', '2022-10-05 20:35:15'),
(14, 11, 'akcia vytvorená', '2022-10-05 19:18:59', '2022-10-05 21:18:59'),
(15, 12, 'akcia vytvorená', '2022-10-05 19:18:59', '2022-10-05 21:18:59'),
(16, 11, 'akcia sa začala prostredníctvom WP Cron', '2022-10-05 19:19:07', '2022-10-05 21:19:07'),
(17, 11, 'akcia dokončená pomocou WP Cron', '2022-10-05 19:19:07', '2022-10-05 21:19:07'),
(18, 12, 'akcia sa začala prostredníctvom WP Cron', '2022-10-05 19:19:07', '2022-10-05 21:19:07'),
(19, 12, 'akcia dokončená pomocou WP Cron', '2022-10-05 19:19:07', '2022-10-05 21:19:07'),
(20, 13, 'akcia vytvorená', '2022-10-05 19:20:31', '2022-10-05 21:20:31'),
(21, 13, 'akcia sa začala prostredníctvom Async Request', '2022-10-05 19:20:42', '2022-10-05 21:20:42'),
(22, 13, 'akcia dokončená pomocou Async Request', '2022-10-05 19:20:42', '2022-10-05 21:20:42'),
(23, 14, 'akcia vytvorená', '2022-10-06 07:46:36', '2022-10-06 09:46:36'),
(24, 14, 'akcia sa začala prostredníctvom WP Cron', '2022-10-06 07:46:37', '2022-10-06 09:46:37'),
(25, 14, 'akcia dokončená pomocou WP Cron', '2022-10-06 07:46:37', '2022-10-06 09:46:37'),
(26, 15, 'akcia vytvorená', '2022-10-06 07:48:20', '2022-10-06 09:48:20'),
(27, 15, 'akcia sa začala prostredníctvom WP Cron', '2022-10-06 07:49:20', '2022-10-06 09:49:20'),
(28, 15, 'akcia dokončená pomocou WP Cron', '2022-10-06 07:49:20', '2022-10-06 09:49:20'),
(29, 16, 'akcia vytvorená', '2022-10-06 08:31:32', '2022-10-06 10:31:32'),
(30, 17, 'akcia vytvorená', '2022-10-06 08:31:32', '2022-10-06 10:31:32'),
(31, 16, 'akcia sa začala prostredníctvom WP Cron', '2022-10-06 08:31:37', '2022-10-06 10:31:37'),
(32, 16, 'akcia dokončená pomocou WP Cron', '2022-10-06 08:31:37', '2022-10-06 10:31:37'),
(33, 17, 'akcia sa začala prostredníctvom WP Cron', '2022-10-06 08:31:37', '2022-10-06 10:31:37'),
(34, 17, 'akcia dokončená pomocou WP Cron', '2022-10-06 08:31:37', '2022-10-06 10:31:37'),
(35, 18, 'akcia vytvorená', '2022-10-06 08:32:22', '2022-10-06 10:32:22'),
(36, 19, 'akcia vytvorená', '2022-10-06 08:32:24', '2022-10-06 10:32:24'),
(37, 18, 'akcia sa začala prostredníctvom WP Cron', '2022-10-06 08:32:35', '2022-10-06 10:32:35'),
(38, 18, 'akcia dokončená pomocou WP Cron', '2022-10-06 08:32:35', '2022-10-06 10:32:35'),
(39, 19, 'akcia sa začala prostredníctvom WP Cron', '2022-10-06 08:32:35', '2022-10-06 10:32:35'),
(40, 19, 'akcia dokončená pomocou WP Cron', '2022-10-06 08:32:35', '2022-10-06 10:32:35'),
(41, 20, 'akcia vytvorená', '2022-10-06 08:33:18', '2022-10-06 10:33:18'),
(42, 20, 'akcia sa začala prostredníctvom WP Cron', '2022-10-06 08:33:37', '2022-10-06 10:33:37'),
(43, 20, 'akcia dokončená pomocou WP Cron', '2022-10-06 08:33:37', '2022-10-06 10:33:37'),
(44, 8, 'akcia sa začala prostredníctvom WP Cron', '2022-10-10 19:57:18', '2022-10-10 21:57:18'),
(45, 8, 'akcia dokončená pomocou WP Cron', '2022-10-10 19:57:18', '2022-10-10 21:57:18'),
(46, 21, 'akcia vytvorená', '2022-10-10 19:57:18', '2022-10-10 21:57:18'),
(47, 22, 'akcia vytvorená', '2022-10-10 19:57:18', '2022-10-10 21:57:18'),
(48, 22, 'akcia sa začala prostredníctvom Async Request', '2022-10-10 19:57:27', '2022-10-10 21:57:27'),
(49, 22, 'akcia dokončená pomocou Async Request', '2022-10-10 19:57:27', '2022-10-10 21:57:27'),
(50, 23, 'akcia vytvorená', '2022-10-10 19:58:36', '2022-10-10 21:58:36'),
(51, 23, 'akcia sa začala prostredníctvom WP Cron', '2022-10-10 20:00:01', '2022-10-10 22:00:01'),
(52, 23, 'akcia dokončená pomocou WP Cron', '2022-10-10 20:00:01', '2022-10-10 22:00:01'),
(53, 24, 'akcia vytvorená', '2022-10-10 20:00:30', '2022-10-10 22:00:30'),
(54, 24, 'akcia sa začala prostredníctvom WP Cron', '2022-10-10 20:00:42', '2022-10-10 22:00:42'),
(55, 24, 'akcia dokončená pomocou WP Cron', '2022-10-10 20:00:42', '2022-10-10 22:00:42'),
(56, 25, 'akcia vytvorená', '2022-10-10 20:00:42', '2022-10-10 22:00:42'),
(57, 26, 'akcia vytvorená', '2022-10-10 20:01:02', '2022-10-10 22:01:02'),
(58, 25, 'akcia sa začala prostredníctvom WP Cron', '2022-10-10 20:01:39', '2022-10-10 22:01:39'),
(59, 25, 'akcia dokončená pomocou WP Cron', '2022-10-10 20:01:39', '2022-10-10 22:01:39'),
(60, 26, 'akcia sa začala prostredníctvom WP Cron', '2022-10-10 20:01:39', '2022-10-10 22:01:39'),
(61, 26, 'akcia dokončená pomocou WP Cron', '2022-10-10 20:01:39', '2022-10-10 22:01:39'),
(62, 27, 'akcia vytvorená', '2022-10-11 19:57:16', '2022-10-11 21:57:16'),
(63, 21, 'akcia sa začala prostredníctvom Async Request', '2022-10-11 19:57:26', '2022-10-11 21:57:26'),
(64, 21, 'akcia dokončená pomocou Async Request', '2022-10-11 19:57:26', '2022-10-11 21:57:26'),
(65, 28, 'akcia vytvorená', '2022-10-11 19:57:26', '2022-10-11 21:57:26'),
(66, 27, 'akcia sa začala prostredníctvom Async Request', '2022-10-11 19:57:26', '2022-10-11 21:57:26'),
(67, 27, 'akcia dokončená pomocou Async Request', '2022-10-11 19:57:26', '2022-10-11 21:57:26'),
(68, 29, 'akcia vytvorená', '2022-10-12 18:38:28', '2022-10-12 20:38:28'),
(69, 29, 'akcia sa začala prostredníctvom Async Request', '2022-10-12 18:38:37', '2022-10-12 20:38:37'),
(70, 29, 'akcia dokončená pomocou Async Request', '2022-10-12 18:38:37', '2022-10-12 20:38:37'),
(71, 28, 'akcia sa začala prostredníctvom WP Cron', '2022-10-13 13:27:19', '2022-10-13 15:27:19'),
(72, 28, 'akcia dokončená pomocou WP Cron', '2022-10-13 13:27:19', '2022-10-13 15:27:19'),
(73, 30, 'akcia vytvorená', '2022-10-13 13:27:19', '2022-10-13 15:27:19'),
(74, 31, 'akcia vytvorená', '2022-10-13 13:55:07', '2022-10-13 15:55:07'),
(75, 31, 'akcia sa začala prostredníctvom WP Cron', '2022-10-13 13:55:51', '2022-10-13 15:55:51'),
(76, 31, 'akcia dokončená pomocou WP Cron', '2022-10-13 13:55:51', '2022-10-13 15:55:51'),
(77, 30, 'akcia sa začala prostredníctvom WP Cron', '2022-10-14 18:38:34', '2022-10-14 20:38:34'),
(78, 30, 'akcia dokončená pomocou WP Cron', '2022-10-14 18:38:34', '2022-10-14 20:38:34'),
(79, 32, 'akcia vytvorená', '2022-10-14 18:38:34', '2022-10-14 20:38:34'),
(80, 32, 'akcia sa začala prostredníctvom WP Cron', '2022-10-16 10:04:03', '2022-10-16 12:04:03'),
(81, 32, 'akcia dokončená pomocou WP Cron', '2022-10-16 10:04:03', '2022-10-16 12:04:03'),
(82, 33, 'akcia vytvorená', '2022-10-16 10:04:03', '2022-10-16 12:04:03'),
(83, 34, 'akcia vytvorená', '2022-10-16 10:08:52', '2022-10-16 12:08:52'),
(84, 34, 'akcia sa začala prostredníctvom WP Cron', '2022-10-16 10:10:34', '2022-10-16 12:10:34'),
(85, 34, 'akcia dokončená pomocou WP Cron', '2022-10-16 10:10:34', '2022-10-16 12:10:34'),
(86, 35, 'akcia vytvorená', '2022-10-16 15:31:20', '2022-10-16 17:31:20'),
(87, 35, 'akcia sa začala prostredníctvom WP Cron', '2022-10-16 15:36:13', '2022-10-16 17:36:13'),
(88, 35, 'akcia dokončená pomocou WP Cron', '2022-10-16 15:36:13', '2022-10-16 17:36:13'),
(89, 33, 'akcia sa začala prostredníctvom WP Cron', '2022-10-17 18:56:43', '2022-10-17 20:56:43'),
(90, 33, 'akcia dokončená pomocou WP Cron', '2022-10-17 18:56:43', '2022-10-17 20:56:43'),
(91, 36, 'akcia vytvorená', '2022-10-17 18:56:43', '2022-10-17 20:56:43'),
(92, 37, 'akcia vytvorená', '2022-10-17 19:25:15', '2022-10-17 21:25:15'),
(93, 37, 'akcia sa začala prostredníctvom WP Cron', '2022-10-17 19:26:04', '2022-10-17 21:26:04'),
(94, 37, 'akcia dokončená pomocou WP Cron', '2022-10-17 19:26:04', '2022-10-17 21:26:04'),
(95, 38, 'akcia vytvorená', '2022-10-18 18:26:56', '2022-10-18 20:26:56'),
(96, 38, 'akcia sa začala prostredníctvom Async Request', '2022-10-18 18:27:21', '2022-10-18 20:27:21'),
(97, 38, 'akcia dokončená pomocou Async Request', '2022-10-18 18:27:21', '2022-10-18 20:27:21'),
(98, 39, 'akcia vytvorená', '2022-10-18 18:27:27', '2022-10-18 20:27:27'),
(99, 39, 'akcia sa začala prostredníctvom WP Cron', '2022-10-18 18:27:37', '2022-10-18 20:27:37'),
(100, 39, 'akcia dokončená pomocou WP Cron', '2022-10-18 18:27:37', '2022-10-18 20:27:37'),
(101, 40, 'akcia vytvorená', '2022-10-18 18:27:45', '2022-10-18 20:27:45'),
(102, 40, 'akcia sa začala prostredníctvom WP Cron', '2022-10-18 18:31:12', '2022-10-18 20:31:12'),
(103, 40, 'akcia dokončená pomocou WP Cron', '2022-10-18 18:31:12', '2022-10-18 20:31:12'),
(104, 36, 'akcia sa začala prostredníctvom WP Cron', '2022-10-18 18:57:36', '2022-10-18 20:57:36'),
(105, 36, 'akcia dokončená pomocou WP Cron', '2022-10-18 18:57:36', '2022-10-18 20:57:36'),
(106, 41, 'akcia vytvorená', '2022-10-18 18:57:36', '2022-10-18 20:57:36'),
(107, 42, 'akcia vytvorená', '2022-10-18 19:38:30', '2022-10-18 21:38:30'),
(108, 43, 'akcia vytvorená', '2022-10-18 19:38:30', '2022-10-18 21:38:30'),
(109, 42, 'akcia sa začala prostredníctvom WP Cron', '2022-10-18 19:38:36', '2022-10-18 21:38:36'),
(110, 42, 'akcia dokončená pomocou WP Cron', '2022-10-18 19:38:36', '2022-10-18 21:38:36'),
(111, 43, 'akcia sa začala prostredníctvom WP Cron', '2022-10-18 19:38:36', '2022-10-18 21:38:36'),
(112, 43, 'akcia dokončená pomocou WP Cron', '2022-10-18 19:38:36', '2022-10-18 21:38:36'),
(113, 44, 'akcia vytvorená', '2022-10-18 19:40:55', '2022-10-18 21:40:55'),
(114, 44, 'akcia sa začala prostredníctvom WP Cron', '2022-10-18 19:42:28', '2022-10-18 21:42:28'),
(115, 44, 'akcia dokončená pomocou WP Cron', '2022-10-18 19:42:28', '2022-10-18 21:42:28'),
(116, 45, 'akcia vytvorená', '2022-10-19 17:23:25', '2022-10-19 19:23:25'),
(117, 45, 'akcia sa začala prostredníctvom WP Cron', '2022-10-19 17:23:52', '2022-10-19 19:23:52'),
(118, 45, 'akcia dokončená pomocou WP Cron', '2022-10-19 17:23:52', '2022-10-19 19:23:52'),
(119, 41, 'akcia sa začala prostredníctvom WP Cron', '2022-10-19 18:57:45', '2022-10-19 20:57:45'),
(120, 41, 'akcia dokončená pomocou WP Cron', '2022-10-19 18:57:45', '2022-10-19 20:57:45'),
(121, 46, 'akcia vytvorená', '2022-10-19 18:57:45', '2022-10-19 20:57:45'),
(122, 46, 'akcia sa začala prostredníctvom WP Cron', '2022-10-22 11:23:47', '2022-10-22 13:23:47'),
(123, 46, 'akcia dokončená pomocou WP Cron', '2022-10-22 11:23:47', '2022-10-22 13:23:47'),
(124, 47, 'akcia vytvorená', '2022-10-22 11:23:47', '2022-10-22 13:23:47'),
(125, 48, 'akcia vytvorená', '2022-10-22 12:07:23', '2022-10-22 14:07:23'),
(126, 48, 'akcia sa začala prostredníctvom WP Cron', '2022-10-22 12:08:01', '2022-10-22 14:08:01'),
(127, 48, 'akcia dokončená pomocou WP Cron', '2022-10-22 12:08:01', '2022-10-22 14:08:01'),
(128, 49, 'akcia vytvorená', '2022-10-22 12:23:28', '2022-10-22 14:23:28'),
(129, 49, 'akcia sa začala prostredníctvom WP Cron', '2022-10-22 12:23:40', '2022-10-22 14:23:40'),
(130, 49, 'akcia dokončená pomocou WP Cron', '2022-10-22 12:23:41', '2022-10-22 14:23:41'),
(131, 50, 'akcia vytvorená', '2022-10-22 12:23:41', '2022-10-22 14:23:41'),
(132, 50, 'akcia sa začala prostredníctvom WP Cron', '2022-10-22 12:24:45', '2022-10-22 14:24:45'),
(133, 50, 'akcia dokončená pomocou WP Cron', '2022-10-22 12:24:45', '2022-10-22 14:24:45'),
(134, 51, 'akcia vytvorená', '2022-10-22 12:28:28', '2022-10-22 14:28:28'),
(135, 51, 'akcia sa začala prostredníctvom WP Cron', '2022-10-22 12:28:40', '2022-10-22 14:28:40'),
(136, 51, 'akcia dokončená pomocou WP Cron', '2022-10-22 12:28:40', '2022-10-22 14:28:40'),
(137, 52, 'akcia vytvorená', '2022-10-22 12:31:45', '2022-10-22 14:31:45'),
(138, 53, 'akcia vytvorená', '2022-10-22 12:32:15', '2022-10-22 14:32:15'),
(139, 54, 'akcia vytvorená', '2022-10-22 12:32:20', '2022-10-22 14:32:20'),
(140, 55, 'akcia vytvorená', '2022-10-22 12:32:26', '2022-10-22 14:32:26'),
(141, 52, 'akcia sa začala prostredníctvom WP Cron', '2022-10-22 12:32:44', '2022-10-22 14:32:44'),
(142, 52, 'akcia dokončená pomocou WP Cron', '2022-10-22 12:32:44', '2022-10-22 14:32:44'),
(143, 53, 'akcia sa začala prostredníctvom WP Cron', '2022-10-22 12:32:44', '2022-10-22 14:32:44'),
(144, 53, 'akcia dokončená pomocou WP Cron', '2022-10-22 12:32:44', '2022-10-22 14:32:44'),
(145, 54, 'akcia sa začala prostredníctvom WP Cron', '2022-10-22 12:32:44', '2022-10-22 14:32:44'),
(146, 54, 'akcia dokončená pomocou WP Cron', '2022-10-22 12:32:44', '2022-10-22 14:32:44'),
(147, 55, 'akcia sa začala prostredníctvom WP Cron', '2022-10-22 12:32:44', '2022-10-22 14:32:44'),
(148, 55, 'akcia dokončená pomocou WP Cron', '2022-10-22 12:32:44', '2022-10-22 14:32:44'),
(149, 56, 'akcia vytvorená', '2022-10-22 12:34:25', '2022-10-22 14:34:25'),
(150, 56, 'akcia sa začala prostredníctvom WP Cron', '2022-10-22 12:35:07', '2022-10-22 14:35:07'),
(151, 56, 'akcia dokončená pomocou WP Cron', '2022-10-22 12:35:07', '2022-10-22 14:35:07'),
(152, 57, 'akcia vytvorená', '2022-10-22 12:36:03', '2022-10-22 14:36:03'),
(153, 57, 'akcia sa začala prostredníctvom WP Cron', '2022-10-22 12:37:06', '2022-10-22 14:37:06'),
(154, 57, 'akcia dokončená pomocou WP Cron', '2022-10-22 12:37:06', '2022-10-22 14:37:06'),
(155, 58, 'akcia vytvorená', '2022-10-22 13:01:14', '2022-10-22 15:01:14'),
(156, 58, 'akcia sa začala prostredníctvom WP Cron', '2022-10-22 13:02:00', '2022-10-22 15:02:00'),
(157, 58, 'akcia dokončená pomocou WP Cron', '2022-10-22 13:02:00', '2022-10-22 15:02:00'),
(158, 59, 'akcia vytvorená', '2022-10-22 13:02:27', '2022-10-22 15:02:27'),
(159, 59, 'akcia sa začala prostredníctvom WP Cron', '2022-10-22 13:02:37', '2022-10-22 15:02:37'),
(160, 59, 'akcia dokončená pomocou WP Cron', '2022-10-22 13:02:37', '2022-10-22 15:02:37'),
(161, 60, 'akcia vytvorená', '2022-10-22 13:04:30', '2022-10-22 15:04:30'),
(162, 60, 'akcia sa začala prostredníctvom Async Request', '2022-10-22 13:04:32', '2022-10-22 15:04:32'),
(163, 60, 'akcia dokončená pomocou Async Request', '2022-10-22 13:04:32', '2022-10-22 15:04:32'),
(164, 61, 'akcia vytvorená', '2022-10-22 13:06:54', '2022-10-22 15:06:54'),
(165, 61, 'akcia sa začala prostredníctvom WP Cron', '2022-10-22 13:07:44', '2022-10-22 15:07:44'),
(166, 61, 'akcia dokončená pomocou WP Cron', '2022-10-22 13:07:44', '2022-10-22 15:07:44'),
(167, 62, 'akcia vytvorená', '2022-10-22 13:07:53', '2022-10-22 15:07:53'),
(168, 62, 'akcia sa začala prostredníctvom Async Request', '2022-10-22 13:07:56', '2022-10-22 15:07:56'),
(169, 62, 'akcia dokončená pomocou Async Request', '2022-10-22 13:07:56', '2022-10-22 15:07:56'),
(170, 63, 'akcia vytvorená', '2022-10-22 13:10:25', '2022-10-22 15:10:25'),
(171, 63, 'akcia sa začala prostredníctvom WP Cron', '2022-10-22 13:10:42', '2022-10-22 15:10:42'),
(172, 63, 'akcia dokončená pomocou WP Cron', '2022-10-22 13:10:42', '2022-10-22 15:10:42'),
(173, 64, 'akcia vytvorená', '2022-10-22 13:12:00', '2022-10-22 15:12:00'),
(174, 64, 'akcia sa začala prostredníctvom WP Cron', '2022-10-22 13:13:04', '2022-10-22 15:13:04'),
(175, 64, 'akcia dokončená pomocou WP Cron', '2022-10-22 13:13:04', '2022-10-22 15:13:04'),
(176, 65, 'akcia vytvorená', '2022-10-22 13:14:12', '2022-10-22 15:14:12'),
(177, 65, 'akcia sa začala prostredníctvom WP Cron', '2022-10-22 13:14:54', '2022-10-22 15:14:54'),
(178, 65, 'akcia dokončená pomocou WP Cron', '2022-10-22 13:14:54', '2022-10-22 15:14:54'),
(179, 66, 'akcia vytvorená', '2022-10-22 13:15:00', '2022-10-22 15:15:00'),
(180, 66, 'akcia sa začala prostredníctvom Async Request', '2022-10-22 13:15:34', '2022-10-22 15:15:34'),
(181, 66, 'akcia dokončená pomocou Async Request', '2022-10-22 13:15:34', '2022-10-22 15:15:34'),
(182, 67, 'akcia vytvorená', '2022-10-22 13:16:06', '2022-10-22 15:16:06'),
(183, 67, 'akcia sa začala prostredníctvom WP Cron', '2022-10-22 13:16:37', '2022-10-22 15:16:37'),
(184, 67, 'akcia dokončená pomocou WP Cron', '2022-10-22 13:16:37', '2022-10-22 15:16:37'),
(185, 68, 'akcia vytvorená', '2022-10-22 13:17:07', '2022-10-22 15:17:07'),
(186, 68, 'akcia sa začala prostredníctvom WP Cron', '2022-10-22 13:17:36', '2022-10-22 15:17:36'),
(187, 68, 'akcia dokončená pomocou WP Cron', '2022-10-22 13:17:36', '2022-10-22 15:17:36'),
(188, 69, 'akcia vytvorená', '2022-10-22 13:18:02', '2022-10-22 15:18:02'),
(189, 69, 'akcia sa začala prostredníctvom WP Cron', '2022-10-22 13:18:51', '2022-10-22 15:18:51'),
(190, 69, 'akcia dokončená pomocou WP Cron', '2022-10-22 13:18:51', '2022-10-22 15:18:51'),
(191, 70, 'akcia vytvorená', '2022-10-22 13:19:16', '2022-10-22 15:19:16'),
(192, 70, 'akcia sa začala prostredníctvom WP Cron', '2022-10-22 13:19:36', '2022-10-22 15:19:36'),
(193, 70, 'akcia dokončená pomocou WP Cron', '2022-10-22 13:19:36', '2022-10-22 15:19:36'),
(194, 71, 'akcia vytvorená', '2022-10-22 13:19:59', '2022-10-22 15:19:59'),
(195, 71, 'akcia sa začala prostredníctvom WP Cron', '2022-10-22 13:20:38', '2022-10-22 15:20:38'),
(196, 71, 'akcia dokončená pomocou WP Cron', '2022-10-22 13:20:38', '2022-10-22 15:20:38'),
(197, 72, 'akcia vytvorená', '2022-10-22 13:21:00', '2022-10-22 15:21:00'),
(198, 72, 'akcia sa začala prostredníctvom WP Cron', '2022-10-22 13:21:48', '2022-10-22 15:21:48'),
(199, 72, 'akcia dokončená pomocou WP Cron', '2022-10-22 13:21:48', '2022-10-22 15:21:48'),
(200, 73, 'akcia vytvorená', '2022-10-22 13:21:49', '2022-10-22 15:21:49'),
(201, 73, 'akcia sa začala prostredníctvom Async Request', '2022-10-22 13:22:04', '2022-10-22 15:22:04'),
(202, 73, 'akcia dokončená pomocou Async Request', '2022-10-22 13:22:04', '2022-10-22 15:22:04'),
(203, 74, 'akcia vytvorená', '2022-10-22 13:22:12', '2022-10-22 15:22:12'),
(204, 74, 'akcia sa začala prostredníctvom WP Cron', '2022-10-22 13:22:43', '2022-10-22 15:22:43'),
(205, 74, 'akcia dokončená pomocou WP Cron', '2022-10-22 13:22:43', '2022-10-22 15:22:43'),
(206, 75, 'akcia vytvorená', '2022-10-22 13:23:11', '2022-10-22 15:23:11'),
(207, 75, 'akcia sa začala prostredníctvom WP Cron', '2022-10-22 13:23:56', '2022-10-22 15:23:56'),
(208, 75, 'akcia dokončená pomocou WP Cron', '2022-10-22 13:23:56', '2022-10-22 15:23:56'),
(209, 76, 'akcia vytvorená', '2022-10-22 13:24:29', '2022-10-22 15:24:29'),
(210, 76, 'akcia sa začala prostredníctvom WP Cron', '2022-10-22 13:24:53', '2022-10-22 15:24:53'),
(211, 76, 'akcia dokončená pomocou WP Cron', '2022-10-22 13:24:53', '2022-10-22 15:24:53'),
(212, 77, 'akcia vytvorená', '2022-10-22 13:25:17', '2022-10-22 15:25:17'),
(213, 77, 'akcia sa začala prostredníctvom WP Cron', '2022-10-22 13:25:37', '2022-10-22 15:25:37'),
(214, 77, 'akcia dokončená pomocou WP Cron', '2022-10-22 13:25:37', '2022-10-22 15:25:37'),
(215, 78, 'akcia vytvorená', '2022-10-22 13:26:17', '2022-10-22 15:26:17'),
(216, 78, 'akcia sa začala prostredníctvom WP Cron', '2022-10-22 13:26:42', '2022-10-22 15:26:42'),
(217, 78, 'akcia dokončená pomocou WP Cron', '2022-10-22 13:26:42', '2022-10-22 15:26:42'),
(218, 79, 'akcia vytvorená', '2022-10-22 13:27:49', '2022-10-22 15:27:49'),
(219, 79, 'akcia sa začala prostredníctvom Async Request', '2022-10-22 13:28:24', '2022-10-22 15:28:24'),
(220, 79, 'akcia dokončená pomocou Async Request', '2022-10-22 13:28:24', '2022-10-22 15:28:24'),
(221, 80, 'akcia vytvorená', '2022-10-22 13:28:31', '2022-10-22 15:28:31'),
(222, 80, 'akcia sa začala prostredníctvom WP Cron', '2022-10-22 13:29:28', '2022-10-22 15:29:28'),
(223, 80, 'akcia dokončená pomocou WP Cron', '2022-10-22 13:29:28', '2022-10-22 15:29:28'),
(224, 81, 'akcia vytvorená', '2022-10-22 13:30:34', '2022-10-22 15:30:34'),
(225, 81, 'akcia sa začala prostredníctvom WP Cron', '2022-10-22 13:30:35', '2022-10-22 15:30:35'),
(226, 81, 'akcia dokončená pomocou WP Cron', '2022-10-22 13:30:35', '2022-10-22 15:30:35'),
(227, 82, 'akcia vytvorená', '2022-10-22 13:31:18', '2022-10-22 15:31:18'),
(228, 82, 'akcia sa začala prostredníctvom WP Cron', '2022-10-22 13:31:41', '2022-10-22 15:31:41'),
(229, 82, 'akcia dokončená pomocou WP Cron', '2022-10-22 13:31:41', '2022-10-22 15:31:41'),
(230, 83, 'akcia vytvorená', '2022-10-22 13:32:37', '2022-10-22 15:32:37'),
(231, 83, 'akcia sa začala prostredníctvom Async Request', '2022-10-22 13:33:06', '2022-10-22 15:33:06'),
(232, 83, 'akcia dokončená pomocou Async Request', '2022-10-22 13:33:06', '2022-10-22 15:33:06'),
(233, 84, 'akcia vytvorená', '2022-10-22 13:33:55', '2022-10-22 15:33:55'),
(234, 84, 'akcia sa začala prostredníctvom Async Request', '2022-10-22 13:34:25', '2022-10-22 15:34:25'),
(235, 84, 'akcia dokončená pomocou Async Request', '2022-10-22 13:34:25', '2022-10-22 15:34:25'),
(236, 85, 'akcia vytvorená', '2022-10-22 13:35:28', '2022-10-22 15:35:28'),
(237, 85, 'akcia sa začala prostredníctvom WP Cron', '2022-10-22 13:35:48', '2022-10-22 15:35:48'),
(238, 85, 'akcia dokončená pomocou WP Cron', '2022-10-22 13:35:49', '2022-10-22 15:35:49'),
(239, 86, 'akcia vytvorená', '2022-10-22 13:43:16', '2022-10-22 15:43:16'),
(240, 87, 'akcia vytvorená', '2022-10-22 13:43:16', '2022-10-22 15:43:16'),
(241, 86, 'akcia sa začala prostredníctvom WP Cron', '2022-10-22 13:43:42', '2022-10-22 15:43:42'),
(242, 86, 'akcia dokončená pomocou WP Cron', '2022-10-22 13:43:42', '2022-10-22 15:43:42'),
(243, 87, 'akcia sa začala prostredníctvom WP Cron', '2022-10-22 13:43:42', '2022-10-22 15:43:42'),
(244, 87, 'akcia dokončená pomocou WP Cron', '2022-10-22 13:43:42', '2022-10-22 15:43:42'),
(245, 88, 'akcia vytvorená', '2022-10-22 13:46:39', '2022-10-22 15:46:39'),
(246, 88, 'akcia sa začala prostredníctvom WP Cron', '2022-10-22 13:47:51', '2022-10-22 15:47:51'),
(247, 88, 'akcia dokončená pomocou WP Cron', '2022-10-22 13:47:51', '2022-10-22 15:47:51'),
(248, 89, 'akcia vytvorená', '2022-10-22 19:05:19', '2022-10-22 21:05:19'),
(249, 89, 'akcia sa začala prostredníctvom WP Cron', '2022-10-22 19:05:39', '2022-10-22 21:05:39'),
(250, 89, 'akcia dokončená pomocou WP Cron', '2022-10-22 19:05:40', '2022-10-22 21:05:40'),
(251, 90, 'akcia vytvorená', '2022-10-22 19:48:13', '2022-10-22 21:48:13'),
(252, 91, 'akcia vytvorená', '2022-10-22 19:48:13', '2022-10-22 21:48:13'),
(253, 90, 'akcia sa začala prostredníctvom WP Cron', '2022-10-22 19:48:36', '2022-10-22 21:48:36'),
(254, 90, 'akcia dokončená pomocou WP Cron', '2022-10-22 19:48:36', '2022-10-22 21:48:36'),
(255, 91, 'akcia sa začala prostredníctvom WP Cron', '2022-10-22 19:48:36', '2022-10-22 21:48:36'),
(256, 91, 'akcia dokončená pomocou WP Cron', '2022-10-22 19:48:36', '2022-10-22 21:48:36'),
(257, 92, 'akcia vytvorená', '2022-10-22 19:48:52', '2022-10-22 21:48:52'),
(258, 92, 'akcia sa začala prostredníctvom WP Cron', '2022-10-22 19:49:40', '2022-10-22 21:49:40'),
(259, 92, 'akcia dokončená pomocou WP Cron', '2022-10-22 19:49:40', '2022-10-22 21:49:40'),
(260, 93, 'akcia vytvorená', '2022-10-22 19:51:06', '2022-10-22 21:51:06'),
(261, 94, 'akcia vytvorená', '2022-10-22 19:51:06', '2022-10-22 21:51:06'),
(262, 93, 'akcia sa začala prostredníctvom Async Request', '2022-10-22 19:51:21', '2022-10-22 21:51:21'),
(263, 93, 'akcia dokončená pomocou Async Request', '2022-10-22 19:51:21', '2022-10-22 21:51:21'),
(264, 94, 'akcia sa začala prostredníctvom Async Request', '2022-10-22 19:51:21', '2022-10-22 21:51:21'),
(265, 94, 'akcia dokončená pomocou Async Request', '2022-10-22 19:51:21', '2022-10-22 21:51:21'),
(266, 95, 'akcia vytvorená', '2022-10-22 19:51:43', '2022-10-22 21:51:43'),
(267, 95, 'akcia sa začala prostredníctvom WP Cron', '2022-10-23 19:32:22', '2022-10-23 21:32:22'),
(268, 96, 'akcia vytvorená', '2022-10-23 19:32:23', '2022-10-23 21:32:23'),
(269, 95, 'akcia dokončená pomocou WP Cron', '2022-10-23 19:32:23', '2022-10-23 21:32:23'),
(270, 47, 'akcia sa začala prostredníctvom WP Cron', '2022-10-23 19:32:23', '2022-10-23 21:32:23'),
(271, 47, 'akcia dokončená pomocou WP Cron', '2022-10-23 19:32:23', '2022-10-23 21:32:23'),
(272, 97, 'akcia vytvorená', '2022-10-23 19:32:23', '2022-10-23 21:32:23'),
(273, 96, 'akcia sa začala prostredníctvom Async Request', '2022-10-23 19:32:32', '2022-10-23 21:32:32'),
(274, 96, 'akcia dokončená pomocou Async Request', '2022-10-23 19:32:32', '2022-10-23 21:32:32'),
(275, 97, 'akcia sa začala prostredníctvom WP Cron', '2022-10-24 19:34:42', '2022-10-24 21:34:42'),
(276, 97, 'akcia dokončená pomocou WP Cron', '2022-10-24 19:34:42', '2022-10-24 21:34:42'),
(277, 98, 'akcia vytvorená', '2022-10-24 19:34:42', '2022-10-24 21:34:42');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_aws_cache`
--

CREATE TABLE `wp_aws_cache` (
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `wp_aws_cache`
--

INSERT INTO `wp_aws_cache` (`name`, `value`) VALUES
('aws_search_term_dfgds', '{\"tax\":[],\"products\":[]}'),
('aws_search_term_dfgd', '{\"tax\":[],\"products\":[]}'),
('aws_search_term_', '{\"tax\":[],\"products\":[]}');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_aws_index`
--

CREATE TABLE `wp_aws_index` (
  `id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `term_source` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `count` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `in_stock` int(11) NOT NULL DEFAULT 0,
  `on_sale` int(11) NOT NULL DEFAULT 0,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `visibility` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `lang` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `wp_aws_index`
--

INSERT INTO `wp_aws_index` (`id`, `term`, `term_source`, `type`, `count`, `in_stock`, `on_sale`, `term_id`, `visibility`, `lang`) VALUES
(49, '10', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(49, '10505', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(49, '16gb', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(49, '20', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(49, '256gb', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(49, '3090', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(49, '32', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(49, '4×usb', 'content', 'product', 2, 1, 0, 0, 'visible', ''),
(49, '46', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(49, '49', 'id', 'product', 1, 1, 0, 0, 'visible', ''),
(49, '630', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(49, 'comet', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(49, 'core', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(49, 'ddr4', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(49, 'dell', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(49, 'desktopy', 'category', 'product', 1, 1, 0, 25, 'visible', ''),
(49, 'displayport', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(49, 'dvd', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(49, 'ghz', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(49, 'graphic', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(49, 'i5', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(49, 'intel', 'content', 'product', 2, 1, 0, 0, 'visible', ''),
(49, 'klavesnica', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(49, 'lake', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(49, 'midi', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(49, 'mys', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(49, 'optiplex', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(49, 'počitač', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(49, 'pro', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(49, 'ram', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(49, 'sff', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(49, 'skrine', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(49, 'ssd', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(49, 'tower', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(49, 'typ', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(49, 'uhd', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(49, 'window', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(52, '1000gb', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(52, '11', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(52, '12400f', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(52, '16gb', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(52, '20', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(52, '3060', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(52, '4×usb', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(52, '44', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(52, '52', 'id', 'product', 1, 1, 0, 0, 'visible', ''),
(52, '8', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(52, 'alder', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(52, 'alder', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(52, 'alza', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(52, 'bez', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(52, 'core', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(52, 'core', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(52, 'ddr4', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(52, 'desktopy', 'category', 'product', 1, 1, 0, 25, 'visible', ''),
(52, 'displayport', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(52, 'druhotnu', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(52, 'gamebox', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(52, 'gb', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(52, 'geforce', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(52, 'ghz', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(52, 'hdmi', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(52, 'herny', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(52, 'home', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(52, 'i5', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(52, 'intel', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(52, 'lake', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(52, 'licenciu', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(52, 'mechaniky', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(52, 'midi', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(52, 'ms', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(52, 'nejde', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(52, 'nvidia', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(52, 'o', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(52, 'originalny', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(52, 'pc', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(52, 'produkt', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(52, 'ram', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(52, 'rtx', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(52, 'rtx3060', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(52, 'skrine', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(52, 'ssd', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(52, 'ti', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(52, 'ti', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(52, 'tower', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(52, 'typ', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(52, 'wifi', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(52, 'window', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(54, '10105', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(54, '2×usb', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(54, '20', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(54, '256gb', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(54, '32', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(54, '4×usb', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(54, '44', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(54, '54', 'id', 'product', 1, 1, 0, 0, 'visible', ''),
(54, '8gb', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(54, 'acer', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(54, 'bez', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(54, 'comet', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(54, 'core', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(54, 'ddr4', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(54, 'desktopy', 'category', 'product', 1, 1, 0, 25, 'visible', ''),
(54, 'displayport', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(54, 'dsub', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(54, 'dvd', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(54, 'ghz', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(54, 'graphic', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(54, 'hdmi', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(54, 'i3', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(54, 'intel', 'content', 'product', 2, 1, 0, 0, 'visible', ''),
(54, 'klavesnica', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(54, 'lake', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(54, 'mini', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(54, 'mys', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(54, 'os', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(54, 'počitač', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(54, 'ram', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(54, 'skrine', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(54, 'ssd', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(54, 'tower', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(54, 'typ', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(54, 'uhd', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(54, 'veriton', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(54, 'vga', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(54, 'vx2680g', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(54, 'wifi', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(56, '×', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(56, '128gb', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(56, '1366', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(56, '156', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(56, '28', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(56, '32', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(56, '4×usb', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(56, '56', 'id', 'product', 1, 1, 1, 0, 'visible', ''),
(56, '768', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(56, '8gb', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(56, 'all', 'content', 'product', 2, 1, 1, 0, 'visible', ''),
(56, 'asus', 'title', 'product', 1, 1, 1, 0, 'visible', ''),
(56, 'bez', 'content', 'product', 2, 1, 1, 0, 'visible', ''),
(56, 'black', 'title', 'product', 1, 1, 1, 0, 'visible', ''),
(56, 'celeron', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(56, 'desktopy', 'category', 'product', 1, 1, 1, 25, 'visible', ''),
(56, 'dotykovy', 'title', 'product', 1, 1, 1, 0, 'visible', ''),
(56, 'dsub', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(56, 'gemini', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(56, 'ghz', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(56, 'graphic', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(56, 'hd', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(56, 'hdmi', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(56, 'intel', 'content', 'product', 2, 1, 1, 0, 'visible', ''),
(56, 'klavesnica', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(56, 'lake', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(56, 'mechaniky', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(56, 'mys', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(56, 'n4020', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(56, 'os', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(56, 'pc', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(56, 'ram', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(56, 'skrine', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(56, 'ssd', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(56, 'typ', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(56, 'v161gartbd077d', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(56, 'v161gartbd077d', 'title', 'product', 1, 1, 1, 0, 'visible', ''),
(56, 'vga', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(56, 'wifi', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(58, '11', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(58, '2', 'title', 'product', 1, 1, 1, 0, 'visible', ''),
(58, '2×usb', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(58, '20', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(58, '256gb', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(58, '32', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(58, '4×usb', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(58, '44', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(58, '5', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(58, '5650g', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(58, '58', 'id', 'product', 1, 1, 1, 0, 'visible', ''),
(58, '8gb', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(58, 'amd', 'content', 'product', 2, 1, 1, 0, 'visible', ''),
(58, 'black', 'title', 'product', 1, 1, 1, 0, 'visible', ''),
(58, 'ddr4', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(58, 'desktop', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(58, 'desktopy', 'category', 'product', 1, 1, 1, 25, 'visible', ''),
(58, 'displayport', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(58, 'dvd', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(58, 'gen', 'title', 'product', 1, 1, 1, 0, 'visible', ''),
(58, 'ghz', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(58, 'graphic', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(58, 'hdmi', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(58, 'klavesnica', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(58, 'lenovo', 'title', 'product', 1, 1, 1, 0, 'visible', ''),
(58, 'm75t', 'title', 'product', 1, 1, 1, 0, 'visible', ''),
(58, 'mys', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(58, 'nbd', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(58, 'počitač', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(58, 'pro', 'content', 'product', 2, 1, 1, 0, 'visible', ''),
(58, 'radeon', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(58, 'ram', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(58, 'ryzen', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(58, 'skrine', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(58, 'ssd', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(58, 'thinkcentre', 'title', 'product', 1, 1, 1, 0, 'visible', ''),
(58, 'typ', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(58, 'window', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(60, '11', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(60, '11t00012ck', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(60, '12100', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(60, '2×usb', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(60, '20', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(60, '256gb', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(60, '32', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(60, '4×usb', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(60, '43', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(60, '4gb', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(60, '50s', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(60, '60', 'id', 'product', 1, 1, 0, 0, 'visible', ''),
(60, '730', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(60, 'alder', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(60, 'bez', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(60, 'black', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(60, 'core', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(60, 'ddr4', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(60, 'desktop', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(60, 'desktopy', 'category', 'product', 1, 1, 0, 25, 'visible', ''),
(60, 'displayport', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(60, 'dsub', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(60, 'ghz', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(60, 'graphic', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(60, 'hdmi', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(60, 'home', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(60, 'i3', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(60, 'intel', 'content', 'product', 2, 1, 0, 0, 'visible', ''),
(60, 'klavesnica', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(60, 'lake', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(60, 'lenovo', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(60, 'mechaniky', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(60, 'mys', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(60, 'nbd', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(60, 'neo', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(60, 'počitač', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(60, 'ram', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(60, 'skrine', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(60, 'ssd', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(60, 'thinkcentre', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(60, 'typ', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(60, 'uhd', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(60, 'vga', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(60, 'window', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(62, '×', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(62, '1', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(62, '1080', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(62, '11', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(62, '1135g7', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(62, '156', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(62, '174', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(62, '1920', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(62, '250', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(62, '32', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(62, '5', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(62, '512gb', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(62, '59u11ea', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(62, '62', 'id', 'product', 1, 1, 0, 0, 'visible', ''),
(62, '8gb', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(62, 'antireflexny', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(62, 'asteroid', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(62, 'core', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(62, 'ddr4', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(62, 'g8', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(62, 'gen', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(62, 'graphic', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(62, 'hmotnosť', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(62, 'home', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(62, 'hp', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(62, 'i5', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(62, 'intel', 'content', 'product', 2, 1, 0, 0, 'visible', ''),
(62, 'ips', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(62, 'kg', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(62, 'klavesnica', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(62, 'lake', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(62, 'laptopy', 'category', 'product', 1, 1, 0, 21, 'visible', ''),
(62, 'notebook', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(62, 'numericka', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(62, 'ram', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(62, 'silver', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(62, 'ssd', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(62, 'tiger', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(62, 'uhd', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(62, 'usb', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(62, 'usbc', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(62, 'webkamera', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(62, 'wifi', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(62, 'window', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(64, '×', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(64, '1', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(64, '10', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(64, '1080', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(64, '1115g4', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(64, '14', 'content', 'product', 2, 1, 0, 0, 'visible', ''),
(64, '14', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(64, '1920', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(64, '256gb', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(64, '32', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(64, '6', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(64, '64', 'id', 'product', 1, 1, 0, 0, 'visible', ''),
(64, '8gb', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(64, 'antireflexny', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(64, 'celokovovy', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(64, 'čitačka', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(64, 'core', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(64, 'ddr4', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(64, 'g2', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(64, 'gen', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(64, 'graphic', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(64, 'hmotnosť', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(64, 'home', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(64, 'i3', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(64, 'intel', 'content', 'product', 2, 1, 0, 0, 'visible', ''),
(64, 'ips', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(64, 'itl', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(64, 'kg', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(64, 'klavesnica', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(64, 'lake', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(64, 'laptopy', 'category', 'product', 1, 1, 0, 21, 'visible', ''),
(64, 'lenovo', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(64, 'notebook', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(64, 'odtlačkov', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(64, 'podsvietena', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(64, 'prstov', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(64, 'ram', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(64, 'ssd', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(64, 'thinkbook', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(64, 'tiger', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(64, 'uhd', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(64, 'usb', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(64, 'usbc', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(64, 'webkamera', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(64, 'wifi', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(64, 'window', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(66, '×', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(66, '1', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(66, '1080', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(66, '11', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(66, '1115g4', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(66, '156', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(66, '18', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(66, '1920', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(66, '32', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(66, '512gb', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(66, '6', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(66, '66', 'id', 'product', 1, 1, 0, 0, 'visible', ''),
(66, '8gb', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(66, 'antireflexny', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(66, 'asus', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(66, 'core', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(66, 'ddr4', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(66, 'dreamy', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(66, 'gen', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(66, 'graphic', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(66, 'hmotnosť', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(66, 'home', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(66, 'i3', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(66, 'intel', 'content', 'product', 2, 1, 0, 0, 'visible', ''),
(66, 'ips', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(66, 'kg', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(66, 'klavesnica', 'content', 'product', 2, 1, 0, 0, 'visible', ''),
(66, 'lake', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(66, 'laptopy', 'category', 'product', 1, 1, 0, 21, 'visible', ''),
(66, 'notebook', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(66, 'numericka', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(66, 'podsvietena', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(66, 'ram', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(66, 'ssd', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(66, 'tiger', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(66, 'uhd', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(66, 'usb', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(66, 'usbc', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(66, 'webkamera', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(66, 'white', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(66, 'wifi', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(66, 'window', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(66, 'x513eabq1693w', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(68, '×', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(68, '1', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(68, '1080', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(68, '11', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(68, '156', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(68, '176', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(68, '1920', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(68, '3', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(68, '32', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(68, '5', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(68, '512gb', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(68, '5300u', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(68, '6', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(68, '68', 'id', 'product', 1, 1, 0, 0, 'visible', ''),
(68, '8gb', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(68, 'acer', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(68, 'amd', 'content', 'product', 2, 1, 0, 0, 'visible', ''),
(68, 'antireflexny', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(68, 'aspire', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(68, 'čitačka', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(68, 'ddr4', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(68, 'gen', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(68, 'graphic', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(68, 'hmotnosť', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(68, 'home', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(68, 'ips', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(68, 'kg', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(68, 'klavesnica', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(68, 'kovovy', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(68, 'laptopy', 'category', 'product', 1, 1, 0, 21, 'visible', ''),
(68, 'notebook', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(68, 'nxa82ec00d', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(68, 'odtlačkov', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(68, 'podsvietena', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(68, 'prstov', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(68, 'pure', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(68, 'radeon', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(68, 'ram', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(68, 'ryzen', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(68, 'silver', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(68, 'ssd', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(68, 'usb', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(68, 'usbc', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(68, 'webkamera', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(68, 'wifi', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(68, 'window', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(70, '×', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(70, '1', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(70, '10', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(70, '1080', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(70, '1115g4', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(70, '156', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(70, '18', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(70, '1920', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(70, '256gb', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(70, '32', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(70, '5', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(70, '70', 'id', 'product', 1, 1, 0, 0, 'visible', ''),
(70, '8gb', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(70, 'academic', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(70, 'antireflexny', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(70, 'asus', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(70, 'core', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(70, 'ddr4', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(70, 'gen', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(70, 'graphic', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(70, 'grey', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(70, 'hmotnosť', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(70, 'i3', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(70, 'intel', 'content', 'product', 2, 1, 0, 0, 'visible', ''),
(70, 'ips', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(70, 'kg', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(70, 'klavesnica', 'content', 'product', 2, 1, 0, 0, 'visible', ''),
(70, 'kovovy', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(70, 'lake', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(70, 'laptopy', 'category', 'product', 1, 1, 0, 21, 'visible', ''),
(70, 'notebook', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(70, 'numericka', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(70, 'p1511ceabq1141xa', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(70, 'podsvietena', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(70, 'pro', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(70, 'ram', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(70, 'slate', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(70, 'ssd', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(70, 'std', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(70, 'tiger', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(70, 'uhd', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(70, 'usb', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(70, 'usbc', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(70, 'webkamera', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(70, 'wifi', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(70, 'window', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(72, '×', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(72, '1080', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(72, '10s', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(72, '11', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(72, '13mpx', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(72, '2400', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(72, '33w', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(72, '35mm', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(72, '5000mah', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(72, '64', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(72, '643', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(72, '64gb', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(72, '64mpx', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(72, '6gb', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(72, '72', 'id', 'product', 1, 1, 0, 0, 'visible', ''),
(72, '8jadrovy', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(72, 'amoled', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(72, 'android', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(72, 'bateria', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(72, 'čitačka', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(72, 'dual', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(72, 'f188mpx', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(72, 'f222mpx', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(72, 'f24', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(72, 'f242mpx', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(72, 'fotoaparat', 'content', 'product', 2, 1, 0, 0, 'visible', ''),
(72, 'g95', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(72, 'gb', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(72, 'glonas', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(72, 'gps', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(72, 'helio', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(72, 'interna', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(72, 'irda', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(72, 'jack', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(72, 'karta', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(72, 'lte', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(72, 'mediatek', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(72, 'mobilny', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(72, 'nabijanie', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(72, 'neblokovany', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(72, 'nfc', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(72, 'note', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(72, 'odtlačkov', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(72, 'pamať', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(72, 'pamaťova', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(72, 'predny', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(72, 'procesor', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(72, 'prstov', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(72, 'ram', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(72, 'redmi', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(72, 'rychle', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(72, 'sim', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(72, 'sivy', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(72, 'telefon', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(72, 'telefony', 'category', 'product', 1, 1, 0, 23, 'visible', ''),
(72, 'usbc', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(72, 'xiaomi', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(72, 'zadny', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(74, '×', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(74, '11', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(74, '128', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(74, '128gb', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(74, '12mpx', 'content', 'product', 2, 1, 0, 0, 'visible', ''),
(74, '13', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(74, '1792', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(74, '18w', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(74, '3110mah', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(74, '4gb', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(74, '61', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(74, '6jadrovy', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(74, '74', 'id', 'product', 1, 1, 0, 0, 'visible', ''),
(74, '828', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(74, 'a13', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(74, 'apple', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(74, 'bateria', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(74, 'bezdrotove', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(74, 'bionic', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(74, 'čierny', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(74, 'esim', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(74, 'f1812mpx', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(74, 'f24', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(74, 'fotoaparat', 'content', 'product', 2, 1, 0, 0, 'visible', ''),
(74, 'gb', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(74, 'glonas', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(74, 'gps', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(74, 'interna', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(74, 'ios', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(74, 'ip68', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(74, 'iphone', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(74, 'ips', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(74, 'lightning', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(74, 'lte', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(74, 'mobilny', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(74, 'nabijanie', 'content', 'product', 2, 1, 0, 0, 'visible', ''),
(74, 'neblokovany', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(74, 'nfc', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(74, 'opticka', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(74, 'optickym', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(74, 'pamať', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(74, 'podľa', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(74, 'port', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(74, 'predny', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(74, 'procesor', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(74, 'ram', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(74, 'rychle', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(74, 's', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(74, 'sim', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(74, 'single', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(74, 'stabilizacia', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(74, 'telefon', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(74, 'telefony', 'category', 'product', 1, 1, 0, 23, 'visible', ''),
(74, 'vodoodolny', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(74, 'zadny', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(74, 'zoomom', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(76, '×', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(76, '10', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(76, '1080', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(76, '120hz', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(76, '12mpx', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(76, '15w', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(76, '2400', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(76, '256', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(76, '256gb', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(76, '25w', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(76, '32mpx', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(76, '4500mah', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(76, '45w', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(76, '5g', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(76, '5g', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(76, '65', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(76, '76', 'id', 'product', 1, 1, 0, 0, 'visible', ''),
(76, '865', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(76, '8gb', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(76, '8jadrovy', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(76, 'amoled', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(76, 'android', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(76, 'bateria', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(76, 'bezdrotove', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(76, 'čitačka', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(76, 'displeji', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(76, 'f188mpx', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(76, 'f22', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(76, 'f2412mpx', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(76, 'fe', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(76, 'fotoaparat', 'content', 'product', 2, 1, 0, 0, 'visible', ''),
(76, 'galaxy', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(76, 'gb', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(76, 'glonas', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(76, 'gps', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(76, 'hybridny', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(76, 'interna', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(76, 'ip68', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(76, 'lte', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(76, 'mobilny', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(76, 'modra', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(76, 'na', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(76, 'nabijanie', 'content', 'product', 3, 1, 0, 0, 'visible', ''),
(76, 'neblokovany', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(76, 'nfc', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(76, 'odtlačkov', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(76, 'opticka', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(76, 'optickym', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(76, 'pamať', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(76, 'podľa', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(76, 'predny', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(76, 'procesor', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(76, 'prstov', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(76, 'qualcomm', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(76, 'ram', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(76, 'reverzne', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(76, 'rychle', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(76, 's', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(76, 's20', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(76, 'samsung', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(76, 'slot', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(76, 'snapdragon', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(76, 'stabilizacia', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(76, 'telefon', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(76, 'telefony', 'category', 'product', 1, 1, 0, 23, 'visible', ''),
(76, 'usbc', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(76, 'vodoodolny', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(76, 'zadny', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(76, 'zoomom', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(78, '×', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(78, '1080', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(78, '10mpx', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(78, '12', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(78, '120hz', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(78, '2200', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(78, '2340', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(78, '256', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(78, '256gb', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(78, '25w', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(78, '3700mah', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(78, '50mpx', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(78, '5g', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(78, '5g', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(78, '61', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(78, '78', 'id', 'product', 1, 1, 0, 0, 'visible', ''),
(78, '8gb', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(78, '8jadrovy', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(78, 'amoled', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(78, 'android', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(78, 'bateria', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(78, 'bezdrotove', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(78, 'čierna', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(78, 'čitačka', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(78, 'displeji', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(78, 'esim', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(78, 'exyno', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(78, 'f1810mpx', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(78, 'f22', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(78, 'f2412mpx', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(78, 'fotoaparat', 'content', 'product', 2, 1, 0, 0, 'visible', ''),
(78, 'galaxy', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(78, 'gb', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(78, 'glonas', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(78, 'gps', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(78, 'interna', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(78, 'ip68', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(78, 'lte', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(78, 'mobilny', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(78, 'na', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(78, 'nabijanie', 'content', 'product', 3, 1, 0, 0, 'visible', ''),
(78, 'neblokovany', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(78, 'nfc', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(78, 'odtlačkov', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(78, 'opticka', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(78, 'optickym', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(78, 'pamať', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(78, 'podľa', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(78, 'predny', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(78, 'procesor', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(78, 'prstov', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(78, 'ram', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(78, 'reverzne', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(78, 'rychle', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(78, 's', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(78, 's22', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(78, 'samsung', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(78, 'samsung', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(78, 'sim', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(78, 'single', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(78, 'stabilizacia', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(78, 'telefon', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(78, 'telefony', 'category', 'product', 1, 1, 0, 23, 'visible', ''),
(78, 'usbc', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(78, 'vodoodolny', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(78, 'zadny', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(78, 'zoomom', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(80, '×', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(80, '10', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(80, '1080', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(80, '128gb', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(80, '16mpx', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(80, '2376', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(80, '35mm', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(80, '4300mah', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(80, '64mpx', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(80, '662', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(80, '667', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(80, '66w', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(80, '6gb', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(80, '80', 'id', 'product', 1, 1, 0, 0, 'visible', ''),
(80, '8i', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(80, '8jadrovy', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(80, 'android', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(80, 'bateria', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(80, 'čitačka', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(80, 'dual', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(80, 'elektronicka', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(80, 'f198mpx', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(80, 'f24', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(80, 'f242mpx', 'content', 'product', 2, 1, 0, 0, 'visible', ''),
(80, 'fotoaparat', 'content', 'product', 2, 1, 0, 0, 'visible', ''),
(80, 'glonas', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(80, 'gps', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(80, 'huawei', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(80, 'interna', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(80, 'ips', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(80, 'jack', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(80, 'lte', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(80, 'mobilny', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(80, 'nabijanie', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(80, 'neblokovany', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(80, 'nfc', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(80, 'nova', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(80, 'odtlačkov', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(80, 'pamať', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(80, 'predny', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(80, 'procesor', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(80, 'prstov', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(80, 'qualcomm', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(80, 'ram', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(80, 'rychle', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(80, 'sim', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(80, 'snapdragon', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(80, 'stabilizacia', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(80, 'strieborny', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(80, 'telefon', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(80, 'telefony', 'category', 'product', 1, 1, 0, 23, 'visible', ''),
(80, 'usbc', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(80, 'zadny', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(82, '2022', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(82, '30', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(82, '53', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(82, '6h24h', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(82, '82', 'id', 'product', 1, 1, 0, 0, 'visible', ''),
(82, 'airpod', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(82, 'aktivne', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(82, 'anc', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(82, 'apple', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(82, 'az', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(82, 'baterie', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(82, 'bezdrotove', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(82, 'bluetooth', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(82, 'certifikacia', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(82, 'h', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(82, 'hlasitosti', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(82, 'hluku', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(82, 'hovorov', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(82, 'ipx4', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(82, 'konstrukcia', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(82, 'mikrofonom', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(82, 'ovladanim', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(82, 'potlačenie', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(82, 'prepinanie', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(82, 'prijimanie', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(82, 'pro', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(82, 's', 'content', 'product', 2, 1, 0, 0, 'visible', ''),
(82, 'skladieb', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(82, 'sluchadla', 'category', 'product', 1, 1, 0, 19, 'visible', ''),
(82, 'sluchadla', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(82, 'stuple', 'content', 'product', 1, 1, 0, 0, 'visible', '');
INSERT INTO `wp_aws_index` (`id`, `term`, `term_source`, `type`, `count`, `in_stock`, `on_sale`, `term_id`, `visibility`, `lang`) VALUES
(82, 'true', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(82, 'uzatvorena', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(82, 'vydrz', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(82, 'wireles', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(84, '15m', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(84, '2020000', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(84, '32', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(84, '35', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(84, '40', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(84, '50', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(84, '80', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(84, '84', 'id', 'product', 1, 1, 0, 0, 'visible', ''),
(84, '99', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(84, 'az', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(84, 'baterie', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(84, 'bezdrotove', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(84, 'black', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(84, 'bluetooth', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(84, 'bt', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(84, 'cez', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(84, 'citlivosť', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(84, 'dbmw', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(84, 'frekvenčny', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(84, 'h', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(84, 'hlasitosti', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(84, 'hlavu', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(84, 'hovorov', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(84, 'hz', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(84, 'impedancia', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(84, 'iv', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(84, 'jack', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(84, 'kabel', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(84, 'konstrukcia', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(84, 'major', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(84, 'marshall', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(84, 'menič', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(84, 'mikrofonom', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(84, 'mm', 'content', 'product', 2, 1, 0, 0, 'visible', ''),
(84, 'na', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(84, 'odnimateľny', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(84, 'ohm', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(84, 'ovladanim', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(84, 'prepinanie', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(84, 'prijimanie', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(84, 'rozsah', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(84, 's', 'content', 'product', 2, 1, 0, 0, 'visible', ''),
(84, 'skladieb', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(84, 'sluchadla', 'category', 'product', 1, 1, 0, 19, 'visible', ''),
(84, 'sluchadla', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(84, 'usi', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(84, 'uzatvorena', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(84, 'vydrz', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(86, '1', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(86, '1525000', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(86, '35mm', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(86, '4', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(86, '5', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(86, '53', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(86, '60', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(86, '71', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(86, '86', 'id', 'product', 1, 1, 0, 0, 'visible', ''),
(86, '98', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(86, 'aac', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(86, 'citlivosť', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(86, 'cloud', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(86, 'dbmw', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(86, 'frekvenčny', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(86, 'herne', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(86, 'herny', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(86, 'hlasitosti', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(86, 'hlavu', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(86, 'hovorov', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(86, 'hyperx', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(86, 'hz', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(86, 'ii', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(86, 'impedancia', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(86, 'jack', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(86, 'kabel', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(86, 'kablove', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(86, 'konstrukcia', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(86, 'm', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(86, 'menič', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(86, 'mikrofonom', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(86, 'mm', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(86, 'na', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(86, 'ohm', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(86, 'okolo', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(86, 'ovladanim', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(86, 'pc', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(86, 'playstation', 'content', 'product', 2, 1, 0, 0, 'visible', ''),
(86, 'podpora', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(86, 'pre', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(86, 'prepinanie', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(86, 'priestorovy', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(86, 'prijimanie', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(86, 'red', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(86, 'rezim', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(86, 'rozsah', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(86, 's', 'content', 'product', 2, 1, 0, 0, 'visible', ''),
(86, 'sbc', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(86, 'series', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(86, 'skladieb', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(86, 'sluchadla', 'category', 'product', 1, 1, 0, 19, 'visible', ''),
(86, 'sluchadla', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(86, 'usba', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(86, 'usi', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(86, 'uzatvorena', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(86, 'xbox', 'content', 'product', 2, 1, 0, 0, 'visible', ''),
(86, 'zvuk', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(88, '10', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(88, '2020000', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(88, '27', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(88, '38', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(88, '50', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(88, '88', 'id', 'product', 1, 1, 0, 0, 'visible', ''),
(88, 'aktivne', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(88, 'anc', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(88, 'asus', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(88, 'az', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(88, 'baterie', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(88, 'bezdrotove', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(88, 'bluetooth', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(88, 'certifikacia', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(88, 'cetra', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(88, 'citlivosť', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(88, 'dbmw', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(88, 'frekvenčny', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(88, 'h', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(88, 'herne', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(88, 'herny', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(88, 'hlasitosti', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(88, 'hluku', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(88, 'hovorov', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(88, 'hz', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(88, 'ipx4', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(88, 'konstrukcia', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(88, 'menič', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(88, 'mikrofonom', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(88, 'mm', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(88, 'ovladanim', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(88, 'pc', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(88, 'potlačenie', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(88, 'pre', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(88, 'prepinanie', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(88, 'prijimanie', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(88, 'rezim', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(88, 'rog', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(88, 'rozsah', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(88, 's', 'content', 'product', 2, 1, 0, 0, 'visible', ''),
(88, 'skladieb', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(88, 'sluchadla', 'category', 'product', 1, 1, 0, 19, 'visible', ''),
(88, 'sluchadla', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(88, 'stuple', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(88, 'true', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(88, 'true', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(88, 'usbc', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(88, 'uzatvorena', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(88, 'vydrz', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(88, 'wireles', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(88, 'wireles', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(90, '2020000', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(90, '32', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(90, '35', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(90, '40', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(90, '50', 'content', 'product', 2, 1, 0, 0, 'visible', ''),
(90, '660nc', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(90, '90', 'id', 'product', 1, 1, 0, 0, 'visible', ''),
(90, '97', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(90, 'aktivne', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(90, 'ambient', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(90, 'anc', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(90, 'asistent', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(90, 'az', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(90, 'baterie', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(90, 'bezdrotove', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(90, 'bluetooth', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(90, 'cez', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(90, 'čierne', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(90, 'citlivosť', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(90, 'dbmw', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(90, 'frekvenčny', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(90, 'h', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(90, 'hlasitosti', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(90, 'hlasovy', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(90, 'hlavu', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(90, 'hluku', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(90, 'hovorov', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(90, 'hz', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(90, 'impedancia', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(90, 'jack', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(90, 'jbl', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(90, 'konstrukcia', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(90, 'live', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(90, 'menič', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(90, 'mikrofonom', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(90, 'mm', 'content', 'product', 2, 1, 0, 0, 'visible', ''),
(90, 'ohm', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(90, 'okolo', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(90, 'ovladanim', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(90, 'potlačenie', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(90, 'prepinanie', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(90, 'prijimanie', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(90, 'rozsah', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(90, 's', 'content', 'product', 2, 1, 0, 0, 'visible', ''),
(90, 'skladieb', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(90, 'sluchadla', 'category', 'product', 1, 1, 0, 19, 'visible', ''),
(90, 'sluchadla', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(90, 'sound', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(90, 'usi', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(90, 'uzatvorena', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(90, 'vydrz', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(92, '1', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(92, '128', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(92, '128', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(92, '200', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(92, '30', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(92, '32', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(92, '60', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(92, '92', 'id', 'product', 1, 1, 0, 0, 'visible', ''),
(92, 'az', 'content', 'product', 2, 1, 0, 0, 'visible', ''),
(92, 'čitania', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(92, 'datatraveler', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(92, 'farba', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(92, 'gb', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(92, 'gb', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(92, 'gen', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(92, 'kapacita', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(92, 'kingston', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(92, 'kľuč', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(92, 'kľuče', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(92, 'kov', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(92, 'kyson', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(92, 'mbs', 'content', 'product', 2, 1, 0, 0, 'visible', ''),
(92, 'na', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(92, 'prislusenstvo', 'category', 'product', 1, 1, 0, 24, 'visible', ''),
(92, 'putkom', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(92, 'rychlosť', 'content', 'product', 2, 1, 0, 0, 'visible', ''),
(92, 's', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(92, 'siva', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(92, 'stylovy', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(92, 'usb', 'content', 'product', 3, 1, 0, 0, 'visible', ''),
(92, 'usba', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(92, 'zapisu', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(94, '94', 'id', 'product', 1, 1, 0, 0, 'visible', ''),
(94, 'česka', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(94, 'čierna', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(94, 'czsk', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(94, 'drotova', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(94, 'k120', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(94, 'kancelarska', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(94, 'keyboard', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(94, 'klavesnica', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(94, 'klavesov', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(94, 'logitech', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(94, 'lokalizacia', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(94, 'membranova', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(94, 'oem', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(94, 'prislusenstvo', 'category', 'product', 1, 1, 0, 24, 'visible', ''),
(94, 'slovenska', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(94, 'usb', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(96, '21', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(96, '6', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(96, '8000dpi', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(96, '96', 'id', 'product', 1, 1, 0, 0, 'visible', ''),
(96, 'black', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(96, 'čierna', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(96, 'dĺzka', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(96, 'dpi', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(96, 'drotova', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(96, 'g102', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(96, 'herna', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(96, 'kabla', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(96, 'lightsync', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(96, 'logitech', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(96, 'm', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(96, 'mys', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(96, 'opticka', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(96, 'podsvietenie', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(96, 'pozivateľske', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(96, 'pravakov', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(96, 'pre', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(96, 'prislusenstvo', 'category', 'product', 1, 1, 0, 24, 'visible', ''),
(96, 'profily', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(96, 'rgb', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(96, 'tlačidiel', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(96, 'usb', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(96, 'vhodna', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(96, 'zmena', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(98, '1×', 'content', 'product', 2, 1, 0, 0, 'visible', ''),
(98, '18w', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(98, '2', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(98, '45', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(98, '45', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(98, '45w', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(98, '4safe', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(98, '98', 'id', 'product', 1, 1, 0, 0, 'visible', ''),
(98, 'a145', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(98, 'alzapower', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(98, 'automaticku', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(98, 'biela', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(98, 'celkovy', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(98, 'charge', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(98, 'ďalsie', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(98, 'detekciu', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(98, 'distribuciu', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(98, 'fast', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(98, 'ic', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(98, 'mobilne', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(98, 'na', 'content', 'product', 2, 1, 0, 0, 'visible', ''),
(98, 'nabijačka', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(98, 'nabijania', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(98, 'notebooky', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(98, 'ochrana', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(98, 'optimalnu', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(98, 'pmic', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(98, 'podobne', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(98, 'podpora', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(98, 'prehriatiu', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(98, 'prepatiu', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(98, 'preťazeniu', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(98, 'pripojeneho', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(98, 'prislusenstvo', 'category', 'product', 1, 1, 0, 24, 'visible', ''),
(98, 'proti', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(98, 'rychleho', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(98, 'siete', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(98, 'skratu', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(98, 'smart', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(98, 'telefony', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(98, 'usba', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(98, 'usbc', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(98, 'vstavany', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(98, 'vykon', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(98, 'vykonu', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(98, 'vystupy', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(98, 'w', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(98, 'w', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(98, 'zariadenia', 'content', 'product', 2, 1, 0, 0, 'visible', ''),
(100, '100', 'id', 'product', 1, 1, 0, 0, 'visible', ''),
(100, '18', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(100, '6', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(100, '8500dpi', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(100, 'čierna', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(100, 'deathadder', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(100, 'dĺzka', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(100, 'dpi', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(100, 'drotova', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(100, 'herna', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(100, 'kabla', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(100, 'm', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(100, 'mini', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(100, 'mys', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(100, 'opticka', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(100, 'podsvietenie', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(100, 'pozivateľske', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(100, 'pravakov', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(100, 'pre', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(100, 'prislusenstvo', 'category', 'product', 1, 1, 0, 24, 'visible', ''),
(100, 'profily', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(100, 'razer', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(100, 'rgb', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(100, 'tlačidiel', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(100, 'usb', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(100, 'v2', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(100, 'vhodna', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(100, 'zmena', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(102, '08x', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(102, '0921mpx', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(102, '102', 'id', 'product', 1, 1, 0, 0, 'visible', ''),
(102, '1855', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(102, '1855', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(102, '2000d', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(102, '24mpx', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(102, '3', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(102, '475g', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(102, '75300', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(102, '75300', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(102, 'apsc', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(102, 'az', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(102, 'bajonet', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(102, 'canon', 'content', 'product', 3, 1, 0, 0, 'visible', ''),
(102, 'canon', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(102, 'dc', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(102, 'dc', 'title', 'product', 2, 1, 0, 0, 'visible', ''),
(102, 'digitalny', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(102, 'displej', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(102, 'ef', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(102, 'efs', 'content', 'product', 2, 1, 0, 0, 'visible', ''),
(102, 'eos', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(102, 'f3556', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(102, 'f456', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(102, 'fotoaparat', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(102, 'fotoaparaty', 'category', 'product', 1, 1, 0, 22, 'visible', ''),
(102, 'hd', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(102, 'hdmi', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(102, 'hľadačik', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(102, 'hmotnosť', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(102, 'iii', 'content', 'product', 2, 1, 0, 0, 'visible', ''),
(102, 'iii', 'title', 'product', 2, 1, 0, 0, 'visible', ''),
(102, 'mini', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(102, 'mm', 'content', 'product', 2, 1, 0, 0, 'visible', ''),
(102, 'mm', 'title', 'product', 2, 1, 0, 0, 'visible', ''),
(102, 'nfc', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(102, 'objektiv', 'content', 'product', 2, 1, 0, 0, 'visible', ''),
(102, 'opticky', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(102, 'pevny', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(102, 'sd', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(102, 'snimač', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(102, 'video', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(102, 'wifi', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(102, 'zrkadlovka', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(104, '104', 'id', 'product', 1, 1, 0, 0, 'visible', ''),
(104, '10bitove', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(104, '162mpx', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(104, '214mpx', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(104, '3', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(104, '35mm', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(104, '369mpx', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(104, '4k', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(104, '680g', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(104, 'az', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(104, 'bajonet', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(104, 'bezzrkadlovka', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(104, 'bluetooth', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(104, 'canon', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(104, 'canon', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(104, 'digitalny', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(104, 'displej', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(104, 'dotykovy', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(104, 'elektronicky', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(104, 'eos', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(104, 'fotoaparat', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(104, 'fotoaparaty', 'category', 'product', 1, 1, 0, 22, 'visible', ''),
(104, 'frame', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(104, 'hdmi', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(104, 'hľadačik', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(104, 'hlg', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(104, 'hmotnosť', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(104, 'ibi', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(104, 'jack', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(104, 'log', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(104, 'micro', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(104, 'r6', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(104, 'rf', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(104, 's', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(104, 'sd', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(104, 'snimač', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(104, 'telo', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(104, 'video', 'content', 'product', 2, 1, 0, 0, 'visible', ''),
(104, 'vyklopny', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(104, 'wifi', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(106, '104mpx', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(106, '106', 'id', 'product', 1, 1, 1, 0, 'visible', ''),
(106, '12', 'title', 'product', 1, 1, 1, 0, 'visible', ''),
(106, '12100', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(106, '204mpx', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(106, '236mpx', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(106, '3', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(106, '35mm', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(106, '40', 'title', 'product', 1, 1, 1, 0, 'visible', ''),
(106, '43', 'content', 'product', 2, 1, 1, 0, 'visible', ''),
(106, '4k', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(106, '504g', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(106, 'az', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(106, 'bajonet', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(106, 'bezzrkadlovka', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(106, 'čiernyčierny', 'title', 'product', 1, 1, 1, 0, 'visible', ''),
(106, 'digitalny', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(106, 'displej', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(106, 'dotykovy', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(106, 'ed', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(106, 'elektronicky', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(106, 'em1', 'title', 'product', 1, 1, 1, 0, 'visible', ''),
(106, 'f4', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(106, 'fotoaparat', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(106, 'fotoaparaty', 'category', 'product', 1, 1, 1, 22, 'visible', ''),
(106, 'hdmi', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(106, 'hľadačik', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(106, 'hmotnosť', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(106, 'ibi', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(106, 'iii', 'title', 'product', 1, 1, 1, 0, 'visible', ''),
(106, 'jack', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(106, 'log', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(106, 'mark', 'title', 'product', 1, 1, 1, 0, 'visible', ''),
(106, 'micro', 'content', 'product', 3, 1, 1, 0, 'visible', ''),
(106, 'mm', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(106, 'mm', 'title', 'product', 1, 1, 1, 0, 'visible', ''),
(106, 'mzuiko', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(106, 'objektiv', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(106, 'objektiv', 'title', 'product', 1, 1, 1, 0, 'visible', ''),
(106, 'olympus', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(106, 'olympus', 'title', 'product', 1, 1, 1, 0, 'visible', ''),
(106, 'pro', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(106, 's', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(106, 'sd', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(106, 'sdhc', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(106, 'sdxc', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(106, 'snimač', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(106, 'telo', 'title', 'product', 1, 1, 1, 0, 'visible', ''),
(106, 'video', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(106, 'vyklopny', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(106, 'wifi', 'content', 'product', 1, 1, 1, 0, 'visible', ''),
(108, '108', 'id', 'product', 1, 1, 0, 0, 'visible', ''),
(108, '21mpx', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(108, '24200', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(108, '24200', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(108, '25mpx', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(108, '32', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(108, '35mm', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(108, '369mpx', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(108, '4k', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(108, '705g', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(108, 'az', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(108, 'b', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(108, 'bajonet', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(108, 'bezzrkadlovka', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(108, 'bluetooth', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(108, 'cfexpres', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(108, 'digitalny', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(108, 'displej', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(108, 'dotykovy', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(108, 'elektronicky', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(108, 'f463', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(108, 'f463', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(108, 'fotoaparat', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(108, 'fotoaparaty', 'category', 'product', 1, 1, 0, 22, 'visible', ''),
(108, 'frame', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(108, 'hdmi', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(108, 'hľadačik', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(108, 'hmotnosť', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(108, 'ibi', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(108, 'ii', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(108, 'jack', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(108, 'log', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(108, 'micro', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(108, 'mm', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(108, 'mm', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(108, 'nikon', 'content', 'product', 2, 1, 0, 0, 'visible', ''),
(108, 'nikon', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(108, 'objektiv', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(108, 's', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(108, 'sd', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(108, 'sdhc', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(108, 'sdxc', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(108, 'snimač', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(108, 'type', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(108, 'video', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(108, 'vr', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(108, 'vr', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(108, 'vyklopny', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(108, 'wifi', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(108, 'xqd', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(108, 'z', 'content', 'product', 2, 1, 0, 0, 'visible', ''),
(108, 'z6', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(110, '110', 'id', 'product', 1, 1, 0, 0, 'visible', ''),
(110, '123', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(110, '182mpx', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(110, '242g', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(110, '28×', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(110, '3', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(110, '4k', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(110, 'az', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(110, 'bez', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(110, 'bluetooth', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(110, 'čierny', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(110, 'cybershot', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(110, 'digitalny', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(110, 'displej', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(110, 'dotykovy', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(110, 'dschx99', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(110, 'fotoaparat', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(110, 'fotoaparaty', 'category', 'product', 1, 1, 0, 22, 'visible', ''),
(110, 'hdmi', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(110, 'hľadačika', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(110, 'hmotnosť', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(110, 'memory', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(110, 'micro', 'content', 'product', 4, 1, 0, 0, 'visible', ''),
(110, 'microsd', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(110, 'nfc', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(110, 'opticky', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(110, 'otočny', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(110, 'sdhc', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(110, 'sdxc', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(110, 'snimač', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(110, 'sony', 'title', 'product', 1, 1, 0, 0, 'visible', ''),
(110, 'stick', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(110, 'ultrazoom', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(110, 'video', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(110, 'wifi', 'content', 'product', 1, 1, 0, 0, 'visible', ''),
(110, 'zoom', 'content', 'product', 1, 1, 0, 0, 'visible', '');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Sťahujem dáta pre tabuľku `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'WordPress komentátor', 'wapuu@wordpress.example', 'https://sk.wordpress.org/', '', '2022-10-04 13:39:14', '2022-10-04 11:39:14', 'Ahoj, toto je komentár.\nPre správu, úpravu alebo mazanie komentárov si pozrite sekciu Komentáre na nástenke.\nProfilové obrázky komentujúcich sprostredkúva služba <a href=\"https://sk.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0),
(7, 42, 'WooCommerce', '', '', '', '2022-10-18 21:38:30', '2022-10-18 19:38:30', 'platba musí byť vykonaná pri dodaní Stav objednávky zmenený z Prijatá na Spracováva sa.', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(8, 112, 'WooCommerce', '', '', '', '2022-10-22 15:43:16', '2022-10-22 13:43:16', 'platba musí byť vykonaná pri dodaní Stav objednávky zmenený z Prijatá na Spracováva sa.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(9, 112, 'admin', 'rzeszotodaniel@gmail.com', '', '', '2022-10-22 15:46:39', '2022-10-22 13:46:39', 'Stav objednávky zmenený z Spracováva sa na Vybavená.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(10, 114, 'WooCommerce', '', '', '', '2022-10-22 21:48:13', '2022-10-22 19:48:13', 'platba musí byť vykonaná pri dodaní Stav objednávky zmenený z Prijatá na Spracováva sa.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(11, 114, 'admin', 'rzeszotodaniel@gmail.com', '', '', '2022-10-22 21:48:52', '2022-10-22 19:48:52', 'Stav objednávky zmenený z Spracováva sa na Vybavená.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(12, 115, 'WooCommerce', '', '', '', '2022-10-22 21:51:06', '2022-10-22 19:51:06', 'platba musí byť vykonaná pri dodaní Stav objednávky zmenený z Prijatá na Spracováva sa.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(13, 115, 'admin', 'rzeszotodaniel@gmail.com', '', '', '2022-10-22 21:51:43', '2022-10-22 19:51:43', 'Stav objednávky zmenený z Spracováva sa na Vybavená.', 0, '1', 'WooCommerce', 'order_note', 0, 0);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Sťahujem dáta pre tabuľku `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/shop', 'yes'),
(2, 'home', 'http://localhost/shop', 'yes'),
(3, 'blogname', 'E-shop', 'yes'),
(4, 'blogdescription', 'Len ďalšia WordPress stránka', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'rzeszotodaniel@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j. F Y', 'yes'),
(24, 'time_format', 'G:i', 'yes'),
(25, 'links_updated_date_format', 'j. F Y G:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:162:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:9:\"obchod/?$\";s:27:\"index.php?post_type=product\";s:39:\"obchod/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:34:\"obchod/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:26:\"obchod/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:57:\"kategoria-produktu/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:52:\"kategoria-produktu/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:33:\"kategoria-produktu/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:45:\"kategoria-produktu/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:27:\"kategoria-produktu/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:56:\"znacka-produktu/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:51:\"znacka-produktu/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:32:\"znacka-produktu/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:44:\"znacka-produktu/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:26:\"znacka-produktu/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"produkt/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"produkt/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"produkt/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"produkt/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"produkt/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"produkt/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"produkt/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"produkt/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"produkt/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"produkt/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"produkt/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"produkt/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"produkt/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"produkt/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"produkt/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"produkt/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"produkt/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"produkt/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"produkt/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"produkt/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"produkt/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"produkt/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=12&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:43:\"advanced-woo-search/advanced-woo-search.php\";i:1;s:27:\"woocommerce/woocommerce.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'PawsGang-eCommerce-Theme-WooCommerce-main', 'yes'),
(41, 'stylesheet', 'PawsGang-eCommerce-Theme-WooCommerce-main', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '53496', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', 'Europe/Bratislava', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '12', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1680435554', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'sk_SK', 'yes'),
(103, 'user_count', '1', 'no'),
(104, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:161:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Najnovšie články</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:233:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Najnovšie komentáre</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:145:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archív</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Kategórie</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'sidebars_widgets', 'a:6:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:9:\"sidebar-1\";a:0:{}s:21:\"footer-widget-col-one\";a:0:{}s:21:\"footer-widget-col-two\";a:0:{}s:23:\"footer-widget-col-three\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(106, 'cron', 'a:18:{i:1666642415;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1666643434;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1666643954;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1666645870;a:1:{s:33:\"wc_admin_process_orders_milestone\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1666645877;a:1:{s:29:\"wc_admin_unsnooze_admin_notes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1666648800;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1666654754;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1666654765;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1666662396;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1666684006;a:2:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1666694796;a:2:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:31:\"woocommerce_cleanup_rate_limits\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1666697954;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1666697965;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1666697966;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1666721469;a:1:{s:14:\"wc_admin_daily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1666784354;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1667634456;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:11:\"fifteendays\";s:4:\"args\";a:0:{}s:8:\"interval\";i:1296000;}}}s:7:\"version\";i:2;}', 'yes'),
(107, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'recovery_keys', 'a:0:{}', 'yes'),
(123, 'theme_mods_twentytwentytwo', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1666120109;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(126, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:21:\"Overenie SSL zlyhalo.\";}}', 'yes'),
(146, 'can_compress_scripts', '1', 'no'),
(159, 'finished_updating_comment_type', '1', 'yes'),
(171, '_transient_health-check-site-status-result', '{\"good\":12,\"recommended\":5,\"critical\":2}', 'yes'),
(192, 'recently_activated', 'a:0:{}', 'yes'),
(199, 'action_scheduler_hybrid_store_demarkation', '5', 'yes'),
(200, 'schema-ActionScheduler_StoreSchema', '6.0.1664993466', 'yes'),
(201, 'schema-ActionScheduler_LoggerSchema', '3.0.1664993466', 'yes'),
(204, 'woocommerce_schema_version', '430', 'yes'),
(205, 'woocommerce_store_address', 'Nanterská 17', 'yes'),
(206, 'woocommerce_store_address_2', '', 'yes'),
(207, 'woocommerce_store_city', 'Žilina', 'yes'),
(208, 'woocommerce_default_country', 'SK', 'yes'),
(209, 'woocommerce_store_postcode', '01008', 'yes'),
(210, 'woocommerce_allowed_countries', 'all', 'yes'),
(211, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(212, 'woocommerce_specific_allowed_countries', 'a:0:{}', 'yes'),
(213, 'woocommerce_ship_to_countries', '', 'yes'),
(214, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(215, 'woocommerce_default_customer_address', 'base', 'yes'),
(216, 'woocommerce_calc_taxes', 'no', 'yes'),
(217, 'woocommerce_enable_coupons', 'yes', 'yes'),
(218, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(219, 'woocommerce_currency', 'EUR', 'yes'),
(220, 'woocommerce_currency_pos', 'right_space', 'yes'),
(221, 'woocommerce_price_thousand_sep', ' ', 'yes'),
(222, 'woocommerce_price_decimal_sep', ',', 'yes'),
(223, 'woocommerce_price_num_decimals', '2', 'yes'),
(224, 'woocommerce_shop_page_id', '6', 'yes'),
(225, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(226, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(227, 'woocommerce_placeholder_image', '5', 'yes'),
(228, 'woocommerce_weight_unit', 'kg', 'yes'),
(229, 'woocommerce_dimension_unit', 'cm', 'yes'),
(230, 'woocommerce_enable_reviews', 'yes', 'yes'),
(231, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(232, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(233, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(234, 'woocommerce_review_rating_required', 'yes', 'no'),
(235, 'woocommerce_manage_stock', 'yes', 'yes'),
(236, 'woocommerce_hold_stock_minutes', '60', 'no'),
(237, 'woocommerce_notify_low_stock', 'yes', 'no'),
(238, 'woocommerce_notify_no_stock', 'yes', 'no'),
(239, 'woocommerce_stock_email_recipient', 'rzeszotodaniel@gmail.com', 'no'),
(240, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(241, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(242, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(243, 'woocommerce_stock_format', '', 'yes'),
(244, 'woocommerce_file_download_method', 'force', 'no'),
(245, 'woocommerce_downloads_redirect_fallback_allowed', 'no', 'no'),
(246, 'woocommerce_downloads_require_login', 'no', 'no'),
(247, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(248, 'woocommerce_downloads_add_hash_to_filename', 'yes', 'yes'),
(250, 'woocommerce_attribute_lookup_direct_updates', 'no', 'yes'),
(251, 'woocommerce_prices_include_tax', 'no', 'yes'),
(252, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(253, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(254, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(255, 'woocommerce_tax_classes', '', 'yes'),
(256, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(257, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(258, 'woocommerce_price_display_suffix', '', 'yes'),
(259, 'woocommerce_tax_total_display', 'itemized', 'no'),
(260, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(261, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(262, 'woocommerce_ship_to_destination', 'billing', 'no'),
(263, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(264, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(265, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(266, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(267, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(268, 'woocommerce_registration_generate_username', 'yes', 'no'),
(269, 'woocommerce_registration_generate_password', 'yes', 'no'),
(270, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(271, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(272, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(273, 'woocommerce_registration_privacy_policy_text', 'Vaše osobné údaje budú použité na zjednodušenie používania tejto webovej stránky, na správu prihlasovania do vášho účtu a na iné účely opísané v dokumente [privacy_policy].', 'yes'),
(274, 'woocommerce_checkout_privacy_policy_text', 'Vaše osobné údaje budú použité na spracovanie vašej objednávky, zjednodušenie používania tejto webovej stránky a na iné účely opísané v dokumente [privacy_policy].', 'yes'),
(275, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(276, 'woocommerce_trash_pending_orders', '', 'no'),
(277, 'woocommerce_trash_failed_orders', '', 'no'),
(278, 'woocommerce_trash_cancelled_orders', '', 'no'),
(279, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(280, 'woocommerce_email_from_name', 'E-shop', 'no'),
(281, 'woocommerce_email_from_address', 'rzeszotodaniel@gmail.com', 'no'),
(282, 'woocommerce_email_header_image', '', 'no'),
(283, 'woocommerce_email_footer_text', '{site_title} &mdash; Built with {WooCommerce}', 'no'),
(284, 'woocommerce_email_base_color', '#7f54b3', 'no'),
(285, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(286, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(287, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(288, 'woocommerce_merchant_email_notifications', 'no', 'no'),
(289, 'woocommerce_cart_page_id', '39', 'no'),
(290, 'woocommerce_checkout_page_id', '8', 'no'),
(291, 'woocommerce_myaccount_page_id', '9', 'no'),
(292, 'woocommerce_terms_page_id', '', 'no'),
(293, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(294, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(295, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(296, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(297, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(298, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(299, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(300, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(301, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(302, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(303, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(304, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(305, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(306, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(307, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(308, 'woocommerce_api_enabled', 'no', 'yes'),
(309, 'woocommerce_allow_tracking', 'no', 'no'),
(310, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
(311, 'woocommerce_single_image_width', '600', 'yes'),
(312, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(313, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(314, 'woocommerce_demo_store', 'no', 'no'),
(315, 'wc_downloads_approved_directories_mode', 'enabled', 'yes'),
(316, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"produkt\";s:13:\"category_base\";s:18:\"kategoria-produktu\";s:8:\"tag_base\";s:15:\"znacka-produktu\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(317, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(318, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(321, 'default_product_cat', '15', 'yes'),
(323, 'woocommerce_refund_returns_page_id', '10', 'yes'),
(326, 'woocommerce_paypal_settings', 'a:23:{s:7:\"enabled\";s:2:\"no\";s:5:\"title\";s:6:\"PayPal\";s:11:\"description\";s:105:\"Platba prostredníctvom PayPal. Môžete zaplatiť vašou kreditnou kartou aj keď nemáte PayPal účet.\";s:5:\"email\";s:24:\"rzeszotodaniel@gmail.com\";s:8:\"advanced\";s:0:\"\";s:8:\"testmode\";s:2:\"no\";s:5:\"debug\";s:2:\"no\";s:16:\"ipn_notification\";s:3:\"yes\";s:14:\"receiver_email\";s:24:\"rzeszotodaniel@gmail.com\";s:14:\"identity_token\";s:0:\"\";s:14:\"invoice_prefix\";s:3:\"WC-\";s:13:\"send_shipping\";s:3:\"yes\";s:16:\"address_override\";s:2:\"no\";s:13:\"paymentaction\";s:4:\"sale\";s:9:\"image_url\";s:0:\"\";s:11:\"api_details\";s:0:\"\";s:12:\"api_username\";s:0:\"\";s:12:\"api_password\";s:0:\"\";s:13:\"api_signature\";s:0:\"\";s:20:\"sandbox_api_username\";s:0:\"\";s:20:\"sandbox_api_password\";s:0:\"\";s:21:\"sandbox_api_signature\";s:0:\"\";s:12:\"_should_load\";s:2:\"no\";}', 'yes'),
(327, 'woocommerce_version', '6.9.4', 'yes'),
(328, 'woocommerce_db_version', '6.9.4', 'yes'),
(329, 'woocommerce_admin_install_timestamp', '1664993469', 'yes'),
(330, 'woocommerce_inbox_variant_assignment', '12', 'yes'),
(334, '_transient_jetpack_autoloader_plugin_paths', 'a:1:{i:0;s:29:\"{{WP_PLUGIN_DIR}}/woocommerce\";}', 'yes'),
(335, 'action_scheduler_lock_async-request-runner', '1666639904', 'yes'),
(336, 'woocommerce_admin_notices', 'a:2:{i:0;s:20:\"no_secure_connection\";i:1;s:14:\"template_files\";}', 'yes'),
(337, 'woocommerce_maxmind_geolocation_settings', 'a:1:{s:15:\"database_prefix\";s:32:\"gofLDlbdUnvIilgUkHxzgNtRiLlKJhK3\";}', 'yes'),
(338, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'yes'),
(339, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(340, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(341, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(342, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(343, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(344, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(345, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(346, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(347, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(348, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(349, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(350, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(354, '_transient_timeout_woocommerce_admin_remote_inbox_notifications_specs', '1667244654', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(355, '_transient_woocommerce_admin_remote_inbox_notifications_specs', 'a:1:{s:5:\"sk_SK\";a:34:{s:27:\"new_in_app_marketplace_2021\";O:8:\"stdClass\":8:{s:4:\"slug\";s:27:\"new_in_app_marketplace_2021\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:36:\"Customize your store with extensions\";s:7:\"content\";s:164:\"Check out our NEW Extensions tab to see our favorite extensions for customizing your store, and discover the most popular extensions in the WooCommerce Marketplace.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:17:\"browse_extensions\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:17:\"Browse extensions\";}}s:3:\"url\";s:24:\"admin.php?page=wc-addons\";s:18:\"url_is_admin_query\";b:1;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:14:23\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"5.7\";}}}s:21:\"wayflyer_bnpl_q4_2021\";O:8:\"stdClass\":8:{s:4:\"slug\";s:21:\"wayflyer_bnpl_q4_2021\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:48:\"Grow your business with funding through Wayflyer\";s:7:\"content\";s:261:\"Fast, flexible financing to boost cash flow and help your business grow – one fee, no interest rates, penalties, equity, or personal guarantees. Based on your store’s performance, Wayflyer provides funding and analytical insights to invest in your business.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:21:\"wayflyer_bnpl_q4_2021\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:21:\"Level up with funding\";}}s:3:\"url\";s:118:\"https://woocommerce.com/products/wayflyer/?utm_source=inbox_note&utm_medium=product&utm_campaign=wayflyer_bnpl_q4_2021\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2021-11-17 00:00:00\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2021-12-18 00:00:00\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:7:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"AU\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"BE\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"CA\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"IE\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NL\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"GB\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"US\";}}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:26:\"woocommerce-gateway-affirm\";}}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:32:\"afterpay-gateway-for-woocommerce\";}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:31:\"klarna-payments-for-woocommerce\";}}}}}}s:35:\"wc_shipping_mobile_app_usps_q4_2021\";O:8:\"stdClass\":8:{s:4:\"slug\";s:35:\"wc_shipping_mobile_app_usps_q4_2021\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:94:\"Print and manage your shipping labels with WooCommerce Shipping and the WooCommerce Mobile App\";s:7:\"content\";s:210:\"Save time by printing, purchasing, refunding, and tracking shipping labels generated by <a href=\"https://woocommerce.com/woocommerce-shipping/\">WooCommerce Shipping</a> – all directly from your mobile device!\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:35:\"wc_shipping_mobile_app_usps_q4_2021\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:24:\"Get WooCommerce Shipping\";}}s:3:\"url\";s:135:\"https://woocommerce.com/woocommerce-shipping/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc_shipping_mobile_app_usps_q4_2021\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:5:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2021-11-12 00:00:00\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2021-11-27 00:00:00\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"US\";}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:25:\"woocommerce-shipping-usps\";}}i:4;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-services\";}}}}}}s:30:\"wc_shipping_mobile_app_q4_2021\";O:8:\"stdClass\":8:{s:4:\"slug\";s:30:\"wc_shipping_mobile_app_q4_2021\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:69:\"Print and manage your shipping labels with the WooCommerce Mobile App\";s:7:\"content\";s:210:\"Save time by printing, purchasing, refunding, and tracking shipping labels generated by <a href=\"https://woocommerce.com/woocommerce-shipping/\">WooCommerce Shipping</a> – all directly from your mobile device!\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:30:\"wc_shipping_mobile_app_q4_2021\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:30:\"Get the WooCommerce Mobile App\";}}s:3:\"url\";s:116:\"https://woocommerce.com/mobile/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc_shipping_mobile_app_q4_2021\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2021-11-12 00:00:00\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2021-11-27 00:00:00\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"US\";}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-services\";}}}}s:37:\"ecomm-need-help-setting-up-your-store\";O:8:\"stdClass\":8:{s:4:\"slug\";s:37:\"ecomm-need-help-setting-up-your-store\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:32:\"Need help setting up your Store?\";s:7:\"content\";s:350:\"Schedule a free 30-min <a href=\"https://wordpress.com/support/concierge-support/\">quick start session</a> and get help from our specialists. We’re happy to walk through setup steps, show you around the WordPress.com dashboard, troubleshoot any issues you may have, and help you the find the features you need to accomplish your goals for your site.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:16:\"set-up-concierge\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:21:\"Schedule free session\";}}s:3:\"url\";s:34:\"https://wordpress.com/me/concierge\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:16:48\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:3:{i:0;s:35:\"woocommerce-shipping-australia-post\";i:1;s:32:\"woocommerce-shipping-canada-post\";i:2;s:30:\"woocommerce-shipping-royalmail\";}}}}s:20:\"woocommerce-services\";O:8:\"stdClass\":8:{s:4:\"slug\";s:20:\"woocommerce-services\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:26:\"WooCommerce Shipping & Tax\";s:7:\"content\";s:251:\"WooCommerce Shipping & Tax helps get your store \"ready to sell\" as quickly as possible. You create your products. We take care of tax calculation, payment processing, and shipping label printing! Learn more about the extension that you just installed.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:84:\"https://docs.woocommerce.com/document/woocommerce-shipping-and-tax/?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:17:25\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-services\";}}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\"<\";s:4:\"days\";i:2;}}}s:32:\"ecomm-unique-shopping-experience\";O:8:\"stdClass\":8:{s:4:\"slug\";s:32:\"ecomm-unique-shopping-experience\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:53:\"For a shopping experience as unique as your customers\";s:7:\"content\";s:270:\"Product Add-Ons allow your customers to personalize products while they\'re shopping on your online store. No more follow-up email requests—customers get what they want, before they\'re done checking out. Learn more about this extension that comes included in your plan.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:43:\"learn-more-ecomm-unique-shopping-experience\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:71:\"https://docs.woocommerce.com/document/product-add-ons/?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:18:01\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:3:{i:0;s:35:\"woocommerce-shipping-australia-post\";i:1;s:32:\"woocommerce-shipping-canada-post\";i:2;s:30:\"woocommerce-shipping-royalmail\";}}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\"<\";s:4:\"days\";i:2;}}}s:37:\"wc-admin-getting-started-in-ecommerce\";O:8:\"stdClass\":8:{s:4:\"slug\";s:37:\"wc-admin-getting-started-in-ecommerce\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:38:\"Getting Started in eCommerce - webinar\";s:7:\"content\";s:174:\"We want to make eCommerce and this process of getting started as easy as possible for you. Watch this webinar to get tips on how to have our store up and running in a breeze.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:17:\"watch-the-webinar\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:17:\"Watch the webinar\";}}s:3:\"url\";s:28:\"https://youtu.be/V_2XtCOyZ7o\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:18:37\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:12:\"setup_client\";s:9:\"operation\";s:2:\"!=\";s:5:\"value\";b:1;}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:3:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:13:\"product_count\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:1:\"0\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:7:\"revenue\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:4:\"none\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:7:\"revenue\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:10:\"up-to-2500\";}}}}}s:18:\"your-first-product\";O:8:\"stdClass\":8:{s:4:\"slug\";s:18:\"your-first-product\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:18:\"Your first product\";s:7:\"content\";s:467:\"That’s huge! You’re well on your way to building a successful online store — now it’s time to think about how you’ll fulfill your orders.<br/><br/>Read our shipping guide to learn best practices and options for putting together your shipping strategy. And for WooCommerce stores in the United States, you can print discounted shipping labels via USPS with <a href=\"https://href.li/?https://woocommerce.com/shipping\" target=\"_blank\">WooCommerce Shipping</a>.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:130:\"https://woocommerce.com/posts/ecommerce-shipping-solutions-guide/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:5:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:19:13\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:12:\"stored_state\";s:5:\"index\";s:22:\"there_were_no_products\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";b:1;}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:12:\"stored_state\";s:5:\"index\";s:22:\"there_are_now_products\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";b:1;}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:13:\"product_count\";s:9:\"operation\";s:2:\">=\";s:5:\"value\";i:1;}i:4;O:8:\"stdClass\":5:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:13:\"product_types\";s:9:\"operation\";s:8:\"contains\";s:5:\"value\";s:8:\"physical\";s:7:\"default\";a:0:{}}}}s:37:\"wc-admin-optimizing-the-checkout-flow\";O:8:\"stdClass\":8:{s:4:\"slug\";s:37:\"wc-admin-optimizing-the-checkout-flow\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:28:\"Optimizing the checkout flow\";s:7:\"content\";s:177:\"It’s crucial to get your store’s checkout as smooth as possible to avoid losing sales. Let’s take a look at how you can optimize the checkout experience for your shoppers.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:28:\"optimizing-the-checkout-flow\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:144:\"https://woocommerce.com/posts/optimizing-woocommerce-checkout?utm_source=inbox_note&utm_medium=product&utm_campaign=optimizing-the-checkout-flow\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:19:49\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\">\";s:4:\"days\";i:3;}i:2;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:45:\"woocommerce_task_list_tracked_completed_tasks\";s:9:\"operation\";s:8:\"contains\";s:5:\"value\";s:8:\"payments\";s:7:\"default\";a:0:{}}}}s:39:\"wc-admin-first-five-things-to-customize\";O:8:\"stdClass\":8:{s:4:\"slug\";s:39:\"wc-admin-first-five-things-to-customize\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:45:\"The first 5 things to customize in your store\";s:7:\"content\";s:175:\"Deciding what to start with first is tricky. To help you properly prioritize, we’ve put together this short list of the first few things you should customize in WooCommerce.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:130:\"https://woocommerce.com/posts/first-things-customize-woocommerce/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:20:31\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\">\";s:4:\"days\";i:2;}i:2;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:45:\"woocommerce_task_list_tracked_completed_tasks\";s:5:\"value\";s:9:\"NOT EMPTY\";s:7:\"default\";s:9:\"NOT EMPTY\";s:9:\"operation\";s:2:\"!=\";}}}s:32:\"wc-payments-qualitative-feedback\";O:8:\"stdClass\":8:{s:4:\"slug\";s:32:\"wc-payments-qualitative-feedback\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:55:\"WooCommerce Payments setup - let us know what you think\";s:7:\"content\";s:146:\"Congrats on enabling WooCommerce Payments for your store. Please share your feedback in this 2 minute survey to help us improve the setup process.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:35:\"qualitative-feedback-from-new-users\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:14:\"Share feedback\";}}s:3:\"url\";s:39:\"https://automattic.survey.fm/wc-pay-new\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:21:13\";}i:1;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:45:\"woocommerce_task_list_tracked_completed_tasks\";s:9:\"operation\";s:8:\"contains\";s:5:\"value\";s:20:\"woocommerce-payments\";s:7:\"default\";a:0:{}}}}s:29:\"share-your-feedback-on-paypal\";O:8:\"stdClass\":8:{s:4:\"slug\";s:29:\"share-your-feedback-on-paypal\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:29:\"Share your feedback on PayPal\";s:7:\"content\";s:127:\"Share your feedback in this 2 minute survey about how we can make the process of accepting payments more useful for your store.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:14:\"share-feedback\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:14:\"Share feedback\";}}s:3:\"url\";s:43:\"http://automattic.survey.fm/paypal-feedback\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:21:50\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:26:\"woocommerce-gateway-stripe\";}}}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:43:\"woocommerce-gateway-paypal-express-checkout\";}}}}s:31:\"google_listings_and_ads_install\";O:8:\"stdClass\":8:{s:4:\"slug\";s:31:\"google_listings_and_ads_install\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:35:\"Drive traffic and sales with Google\";s:7:\"content\";s:123:\"Reach online shoppers to drive traffic and sales for your store by showcasing products across Google, for free or with ads.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:11:\"get-started\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:11:\"Get started\";}}s:3:\"url\";s:122:\"https://woocommerce.com/products/google-listings-and-ads?utm_source=inbox_note&utm_medium=product&utm_campaign=get-started\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2021-06-09 00:00:00\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:23:\"google_listings_and_ads\";}}}}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:11:\"order_count\";s:9:\"operation\";s:1:\">\";s:5:\"value\";i:10;}}}s:39:\"wc-subscriptions-security-update-3-0-15\";O:8:\"stdClass\":8:{s:4:\"slug\";s:39:\"wc-subscriptions-security-update-3-0-15\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:42:\"WooCommerce Subscriptions security update!\";s:7:\"content\";s:738:\"We recently released an important security update to WooCommerce Subscriptions. To ensure your site’s data is protected, please upgrade <strong>WooCommerce Subscriptions to version 3.0.15</strong> or later.<br/><br/>Click the button below to view and update to the latest Subscriptions version, or log in to <a href=\"https://woocommerce.com/my-dashboard\">WooCommerce.com Dashboard</a> and navigate to your <strong>Downloads</strong> page.<br/><br/>We recommend always using the latest version of WooCommerce Subscriptions, and other software running on your site, to ensure maximum security.<br/><br/>If you have any questions we are here to help — just <a href=\"https://woocommerce.com/my-account/create-a-ticket/\">open a ticket</a>.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:30:\"update-wc-subscriptions-3-0-15\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:19:\"View latest version\";}}s:3:\"url\";s:30:\"&page=wc-addons&section=helper\";s:18:\"url_is_admin_query\";b:1;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:30:32\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:25:\"woocommerce-subscriptions\";s:8:\"operator\";s:1:\"<\";s:7:\"version\";s:6:\"3.0.15\";}}}s:29:\"woocommerce-core-update-5-4-0\";O:8:\"stdClass\":8:{s:4:\"slug\";s:29:\"woocommerce-core-update-5-4-0\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:31:\"Update to WooCommerce 5.4.1 now\";s:7:\"content\";s:140:\"WooCommerce 5.4.1 addresses a checkout issue discovered in WooCommerce 5.4. We recommend upgrading to WooCommerce 5.4.1 as soon as possible.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:20:\"update-wc-core-5-4-0\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:25:\"How to update WooCommerce\";}}s:3:\"url\";s:64:\"https://docs.woocommerce.com/document/how-to-update-woocommerce/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:31:08\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.4.0\";}}}s:19:\"wcpay-promo-2020-11\";O:8:\"stdClass\":8:{s:4:\"slug\";s:19:\"wcpay-promo-2020-11\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:19:\"wcpay-promo-2020-11\";s:7:\"content\";s:19:\"wcpay-promo-2020-11\";}}s:7:\"actions\";a:0:{}s:5:\"rules\";a:0:{}}s:19:\"wcpay-promo-2020-12\";O:8:\"stdClass\":8:{s:4:\"slug\";s:19:\"wcpay-promo-2020-12\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:19:\"wcpay-promo-2020-12\";s:7:\"content\";s:19:\"wcpay-promo-2020-12\";}}s:7:\"actions\";a:0:{}s:5:\"rules\";a:0:{}}s:34:\"ppxo-pps-upgrade-paypal-payments-1\";O:8:\"stdClass\":8:{s:4:\"slug\";s:34:\"ppxo-pps-upgrade-paypal-payments-1\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:47:\"Get the latest PayPal extension for WooCommerce\";s:7:\"content\";s:442:\"Heads up! There’s a new PayPal on the block!<br/><br/>Now is a great time to upgrade to our latest <a href=\"https://woocommerce.com/products/woocommerce-paypal-payments/\" target=\"_blank\">PayPal extension</a> to continue to receive support and updates with PayPal.<br/><br/>Get access to a full suite of PayPal payment methods, extensive currency and country coverage, and pay later options with the all-new PayPal extension for WooCommerce.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:34:\"ppxo-pps-install-paypal-payments-1\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:18:\"View upgrade guide\";}}s:3:\"url\";s:96:\"https://docs.woocommerce.com/document/woocommerce-paypal-payments/paypal-payments-upgrade-guide/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:5:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:33:53\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"5.5\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:27:\"woocommerce-paypal-payments\";}}}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:43:\"woocommerce-gateway-paypal-express-checkout\";}}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:1:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:7:\"enabled\";}}}s:11:\"option_name\";s:27:\"woocommerce_paypal_settings\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:3:\"yes\";s:7:\"default\";b:0;}}}i:4;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:36:\"woocommerce_inbox_variant_assignment\";s:5:\"value\";i:7;s:7:\"default\";i:1;s:9:\"operation\";s:1:\"<\";}}}s:34:\"ppxo-pps-upgrade-paypal-payments-2\";O:8:\"stdClass\":8:{s:4:\"slug\";s:34:\"ppxo-pps-upgrade-paypal-payments-2\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:31:\"Upgrade your PayPal experience!\";s:7:\"content\";s:358:\"Get access to a full suite of PayPal payment methods, extensive currency and country coverage, offer subscription and recurring payments, and the new PayPal pay later options.<br /><br />Start using our <a href=\"https://woocommerce.com/products/woocommerce-paypal-payments/\" target=\"_blank\">latest PayPal today</a> to continue to receive support and updates.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:34:\"ppxo-pps-install-paypal-payments-2\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:18:\"View upgrade guide\";}}s:3:\"url\";s:96:\"https://docs.woocommerce.com/document/woocommerce-paypal-payments/paypal-payments-upgrade-guide/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:5:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:34:30\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"5.5\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:27:\"woocommerce-paypal-payments\";}}}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:43:\"woocommerce-gateway-paypal-express-checkout\";}}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:1:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:7:\"enabled\";}}}s:11:\"option_name\";s:27:\"woocommerce_paypal_settings\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:3:\"yes\";s:7:\"default\";b:0;}}}i:4;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:36:\"woocommerce_inbox_variant_assignment\";s:5:\"value\";i:6;s:7:\"default\";i:1;s:9:\"operation\";s:1:\">\";}}}s:46:\"woocommerce-core-sqli-july-2021-need-to-update\";O:8:\"stdClass\":8:{s:4:\"slug\";s:46:\"woocommerce-core-sqli-july-2021-need-to-update\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:56:\"Action required: Critical vulnerabilities in WooCommerce\";s:7:\"content\";s:574:\"In response to a critical vulnerability identified on July 13, 2021, we are working with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br />Our investigation into this vulnerability is ongoing, but <strong>we wanted to let you know now about the importance of updating immediately</strong>.<br /><br />For more information on which actions you should take, as well as answers to FAQs, please urgently review our blog post detailing this issue.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:137:\"https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:7:\"dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";s:0:\"\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:59:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:35:06\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.3.6\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.4.8\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.5.9\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.6.6\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.7.2\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.8.2\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.9.4\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.0.2\";}i:9;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.0.3\";}i:10;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.1.2\";}i:11;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.1.3\";}i:12;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.2.3\";}i:13;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.2.4\";}i:14;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.3.4\";}i:15;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.3.5\";}i:16;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.4.2\";}i:17;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.4.3\";}i:18;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.5.3\";}i:19;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.5.4\";}i:20;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.6.3\";}i:21;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.6.4\";}i:22;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.7.2\";}i:23;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.7.3\";}i:24;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.8.1\";}i:25;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.8.2\";}i:26;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.9.3\";}i:27;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.9.4\";}i:28;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.0.1\";}i:29;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.0.2\";}i:30;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.1.1\";}i:31;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.1.2\";}i:32;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.2.3\";}i:33;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.2.4\";}i:34;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.3.1\";}i:35;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.3.2\";}i:36;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.4.2\";}i:37;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.4.3\";}i:38;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"<\";s:7:\"version\";s:5:\"5.5.1\";}i:39;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:6:\"3.5.10\";}i:40;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.6.7\";}i:41;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.7.3\";}i:42;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.8.3\";}i:43;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.9.5\";}i:44;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.0.4\";}i:45;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.1.4\";}i:46;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.2.5\";}i:47;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.3.6\";}i:48;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.4.4\";}i:49;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.5.5\";}i:50;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.6.5\";}i:51;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.7.4\";}i:52;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.8.3\";}i:53;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.9.5\";}i:54;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.0.3\";}i:55;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.1.3\";}i:56;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.2.5\";}i:57;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.3.3\";}i:58;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.4.4\";}}}s:48:\"woocommerce-blocks-sqli-july-2021-need-to-update\";O:8:\"stdClass\":8:{s:4:\"slug\";s:48:\"woocommerce-blocks-sqli-july-2021-need-to-update\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:63:\"Action required: Critical vulnerabilities in WooCommerce Blocks\";s:7:\"content\";s:570:\"In response to a critical vulnerability identified on July 13, 2021, we are working with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br/><br/>Our investigation into this vulnerability is ongoing, but <strong>we wanted to let you know now about the importance of updating immediately</strong>.<br/><br/>For more information on which actions you should take, as well as answers to FAQs, please urgently review our blog post detailing this issue.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:137:\"https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:7:\"dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";b:0;s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:32:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:35:42\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:6:\"2.5.16\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"2.6.2\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"2.7.2\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"2.8.1\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"2.9.1\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.0.1\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.1.1\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.2.1\";}i:9;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.3.1\";}i:10;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.4.1\";}i:11;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.5.1\";}i:12;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.6.1\";}i:13;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.7.2\";}i:14;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.8.1\";}i:15;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.9.1\";}i:16;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.0.1\";}i:17;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.1.1\";}i:18;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.2.1\";}i:19;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.3.1\";}i:20;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.4.3\";}i:21;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.5.3\";}i:22;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.6.1\";}i:23;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.7.1\";}i:24;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.8.1\";}i:25;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.9.2\";}i:26;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.0.1\";}i:27;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.1.1\";}i:28;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.2.1\";}i:29;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.3.2\";}i:30;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.4.1\";}i:31;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"<\";s:7:\"version\";s:5:\"5.5.1\";}}}s:45:\"woocommerce-core-sqli-july-2021-store-patched\";O:8:\"stdClass\":8:{s:4:\"slug\";s:45:\"woocommerce-core-sqli-july-2021-store-patched\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:55:\"Solved: Critical vulnerabilities patched in WooCommerce\";s:7:\"content\";s:433:\"In response to a critical vulnerability identified on July 13, 2021, we worked with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br/><br/><strong>Your store has been updated to the latest secure version(s)</strong>. For more information and answers to FAQs, please review our blog post detailing this issue.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:137:\"https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:7:\"dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";b:0;s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:36:18\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:46:\"woocommerce-core-sqli-july-2021-need-to-update\";s:6:\"status\";s:7:\"pending\";s:9:\"operation\";s:1:\"=\";}}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:48:\"woocommerce-blocks-sqli-july-2021-need-to-update\";s:6:\"status\";s:7:\"pending\";s:9:\"operation\";s:1:\"=\";}}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:23:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.3.6\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.4.8\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.5.9\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.6.6\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.7.2\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.8.2\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.9.4\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.0.2\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.1.2\";}i:9;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.2.3\";}i:10;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.3.4\";}i:11;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.4.2\";}i:12;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.5.3\";}i:13;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.6.3\";}i:14;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.7.2\";}i:15;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.8.1\";}i:16;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.9.3\";}i:17;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.0.1\";}i:18;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.1.1\";}i:19;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.2.3\";}i:20;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.3.1\";}i:21;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.4.2\";}i:22;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:5:\"5.5.1\";}}}}}s:47:\"woocommerce-blocks-sqli-july-2021-store-patched\";O:8:\"stdClass\":8:{s:4:\"slug\";s:47:\"woocommerce-blocks-sqli-july-2021-store-patched\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:62:\"Solved: Critical vulnerabilities patched in WooCommerce Blocks\";s:7:\"content\";s:433:\"In response to a critical vulnerability identified on July 13, 2021, we worked with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br/><br/><strong>Your store has been updated to the latest secure version(s)</strong>. For more information and answers to FAQs, please review our blog post detailing this issue.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:137:\"https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:7:\"dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";b:0;s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:36:54\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:46:\"woocommerce-core-sqli-july-2021-need-to-update\";s:6:\"status\";s:7:\"pending\";s:9:\"operation\";s:1:\"=\";}}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:48:\"woocommerce-blocks-sqli-july-2021-need-to-update\";s:6:\"status\";s:7:\"pending\";s:9:\"operation\";s:1:\"=\";}}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:31:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:6:\"2.5.16\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"2.6.2\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"2.7.2\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"2.8.1\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"2.9.1\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.0.1\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.1.1\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.2.1\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.3.1\";}i:9;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.4.1\";}i:10;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.5.1\";}i:11;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.6.1\";}i:12;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.7.2\";}i:13;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.8.1\";}i:14;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.9.1\";}i:15;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.0.1\";}i:16;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.1.1\";}i:17;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.2.1\";}i:18;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.3.1\";}i:19;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.4.3\";}i:20;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.5.3\";}i:21;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.6.1\";}i:22;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.7.1\";}i:23;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.8.1\";}i:24;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.9.2\";}i:25;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.0.1\";}i:26;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.1.1\";}i:27;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.2.1\";}i:28;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.3.2\";}i:29;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.4.1\";}i:30;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:5:\"5.5.1\";}}}}}s:19:\"habit-moment-survey\";O:8:\"stdClass\":8:{s:4:\"slug\";s:19:\"habit-moment-survey\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:63:\"We’re all ears! Share your experience so far with WooCommerce\";s:7:\"content\";s:136:\"We’d love your input to shape the future of WooCommerce together. Feel free to share any feedback, ideas or suggestions that you have.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:14:\"share-feedback\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:14:\"Share feedback\";}}s:3:\"url\";s:45:\"https://automattic.survey.fm/store-management\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:37:30\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\">\";s:4:\"days\";i:3;}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:11:\"order_count\";s:9:\"operation\";s:1:\">\";s:5:\"value\";i:30;}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:13:\"product_count\";s:9:\"operation\";s:1:\">\";s:5:\"value\";i:0;}}}s:26:\"ecomm-wc-navigation-survey\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"ecomm-wc-navigation-survey\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:55:\"We’d like your feedback on the WooCommerce navigation\";s:7:\"content\";s:134:\"We’re making improvements to the WooCommerce navigation and would love your feedback. Share your experience in this 2 minute survey.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:32:\"share-navigation-survey-feedback\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:14:\"Share feedback\";}}s:3:\"url\";s:63:\"https://automattic.survey.fm/feedback-on-woocommerce-navigation\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:38:07\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:12:\"is_ecommerce\";s:5:\"value\";b:1;}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\">\";s:4:\"days\";i:90;}}}s:42:\"woocommerce-core-paypal-march-2022-updated\";O:8:\"stdClass\":8:{s:4:\"slug\";s:42:\"woocommerce-core-paypal-march-2022-updated\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:35:\"Security auto-update of WooCommerce\";s:7:\"content\";s:391:\"<strong>Your store has been updated to the latest secure version of WooCommerce</strong>. We worked with WordPress to deploy PayPal Standard security updates for stores running WooCommerce (version 3.5 to 6.3). It’s recommended to disable PayPal Standard, and use <a href=\"https://woocommerce.com/products/woocommerce-paypal-payments/\" target=\"_blank\">PayPal Payments</a> to accept PayPal.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:88:\"https://developer.woocommerce.com/2022/03/10/woocommerce-3-5-10-6-3-1-security-releases/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:42:\"woocommerce-core-paypal-march-2022-dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";s:0:\"\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-03-10 18:44:57\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:28:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:6:\"3.5.10\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.6.7\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.7.3\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.8.3\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.9.5\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.0.4\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.1.4\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.2.5\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.3.6\";}i:9;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.4.4\";}i:10;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.5.5\";}i:11;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.6.5\";}i:12;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.7.4\";}i:13;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.8.3\";}i:14;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.9.5\";}i:15;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.0.3\";}i:16;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.1.3\";}i:17;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.2.5\";}i:18;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.3.3\";}i:19;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.4.4\";}i:20;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.5.4\";}i:21;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.6.2\";}i:22;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.7.2\";}i:23;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.8.1\";}i:24;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.9.1\";}i:25;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"6.0.1\";}i:26;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"6.1.2\";}i:27;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"6.2.2\";}}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:2:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"<\";s:7:\"version\";s:3:\"5.5\";}i:1;a:2:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"5.5\";}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:27:\"woocommerce_paypal_settings\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:3:\"yes\";s:7:\"default\";b:0;s:12:\"transformers\";a:1:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:7:\"enabled\";}}}}}}}}}s:47:\"woocommerce-core-paypal-march-2022-updated-nopp\";O:8:\"stdClass\":8:{s:4:\"slug\";s:47:\"woocommerce-core-paypal-march-2022-updated-nopp\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:35:\"Security auto-update of WooCommerce\";s:7:\"content\";s:237:\"<strong>Your store has been updated to the latest secure version of WooCommerce</strong>. We worked with WordPress to deploy security updates related to PayPal Standard payment gateway for stores running WooCommerce (version 3.5 to 6.3).\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:88:\"https://developer.woocommerce.com/2022/03/10/woocommerce-3-5-10-6-3-1-security-releases/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:7:\"dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";s:0:\"\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-03-10 18:45:04\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:28:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:6:\"3.5.10\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.6.7\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.7.3\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.8.3\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.9.5\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.0.4\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.1.4\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.2.5\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.3.6\";}i:9;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.4.4\";}i:10;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.5.5\";}i:11;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.6.5\";}i:12;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.7.4\";}i:13;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.8.3\";}i:14;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.9.5\";}i:15;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.0.3\";}i:16;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.1.3\";}i:17;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.2.5\";}i:18;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.3.3\";}i:19;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.4.4\";}i:20;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.5.4\";}i:21;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.6.2\";}i:22;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.7.2\";}i:23;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.8.1\";}i:24;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.9.1\";}i:25;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"6.0.1\";}i:26;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"6.1.2\";}i:27;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"6.2.2\";}}}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:42:\"woocommerce-core-paypal-march-2022-updated\";s:6:\"status\";s:7:\"pending\";s:9:\"operation\";s:1:\"=\";}}}s:24:\"pinterest_03_2022_update\";O:8:\"stdClass\":8:{s:4:\"slug\";s:24:\"pinterest_03_2022_update\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:53:\"Your Pinterest for WooCommerce plugin is out of date!\";s:7:\"content\";s:262:\"Update to the latest version of Pinterest for WooCommerce to continue using this plugin and keep your store connected with Pinterest. To update, visit <strong>Plugins &gt; Installed Plugins</strong>, and click on “update now” under Pinterest for WooCommerce.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:24:\"pinterest_03_2022_update\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:19:\"Update Instructions\";}}s:3:\"url\";s:148:\"https://woocommerce.com/document/pinterest-for-woocommerce/?utm_source=inbox_note&utm_medium=product&utm_campaign=pinterest_03_2022_update#section-3\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-03-23 00:00:39\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:25:\"pinterest-for-woocommerce\";s:8:\"operator\";s:1:\"<\";s:7:\"version\";s:5:\"1.0.8\";}}}s:33:\"store_setup_survey_survey_q2_2022\";O:8:\"stdClass\":8:{s:4:\"slug\";s:33:\"store_setup_survey_survey_q2_2022\";s:4:\"type\";s:6:\"survey\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:30:\"How is your store setup going?\";s:7:\"content\";s:232:\"Our goal is to make sure you have all the right tools to start setting up your store in the smoothest way possible.\r\nWe’d love to know if we hit our mark and how we can improve. To collect your thoughts, we made a 2-minute survey.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:53:\"store_setup_survey_survey_q2_2022_share_your_thoughts\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:24:\"Tell us how it’s going\";}}s:3:\"url\";s:52:\"https://automattic.survey.fm/store-setup-survey-2022\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-05-09 08:42:10\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\">\";s:4:\"days\";i:7;}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\"<\";s:4:\"days\";i:9;}}}s:17:\"wc-admin-wisepad3\";O:8:\"stdClass\":8:{s:4:\"slug\";s:17:\"wc-admin-wisepad3\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:74:\"Take your business on the go in Canada with WooCommerce In-Person Payments\";s:7:\"content\";s:275:\"Quickly create new orders, accept payment in person for orders placed online, and automatically sync your inventory – no matter where your business takes you. With WooCommerce In-Person Payments and the WisePad 3 card reader, you can bring the power of your store anywhere.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:17:\"wc-admin-wisepad3\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:24:\"Grow my business offline\";}}s:3:\"url\";s:126:\"https://woocommerce.com/products/wisepad3-card-reader/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc-admin-wisepad3\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-06-15 10:00:28\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"CA\";}}}s:47:\"woocommerce-payments-august-2022-need-to-update\";O:8:\"stdClass\":8:{s:4:\"slug\";s:47:\"woocommerce-payments-august-2022-need-to-update\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:51:\"Action required: Please update WooCommerce Payments\";s:7:\"content\";s:213:\"An updated secure version of WooCommerce Payments is available – please ensure that you’re using the latest patch version. For more information on what action you need to take, please review the article below.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:13:\"Find out more\";}}s:3:\"url\";s:96:\"https://developer.woocommerce.com/2022/08/09/woocommerce-payments-3-9-4-4-5-1-security-releases/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:7:\"dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";s:0:\"\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:9:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-08-09 14:44:17\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"3.9\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"<\";s:7:\"version\";s:5:\"4.5.1\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.9.4\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.0.3\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.1.1\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.2.2\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.3.1\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.4.1\";}}}s:46:\"woocommerce-payments-august-2022-store-patched\";O:8:\"stdClass\":8:{s:4:\"slug\";s:46:\"woocommerce-payments-august-2022-store-patched\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:51:\"WooCommerce Payments has been automatically updated\";s:7:\"content\";s:265:\"You’re now running the latest secure version of WooCommerce Payments. We’ve worked with the WordPress Plugins team to deploy a security update to stores running WooCommerce Payments (version 3.9 to 4.5). For further information, please review the article below.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:13:\"Find out more\";}}s:3:\"url\";s:96:\"https://developer.woocommerce.com/2022/08/09/woocommerce-payments-3-9-4-4-5-1-security-releases/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:7:\"dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";s:0:\"\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-08-09 14:41:13\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:47:\"woocommerce-payments-august-2022-need-to-update\";s:6:\"status\";s:7:\"pending\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:7:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.9.4\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.0.3\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.1.1\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.2.2\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.3.1\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.4.1\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.5.1\";}}}}}s:25:\"shipping_category_q4_2022\";O:8:\"stdClass\":8:{s:4:\"slug\";s:25:\"shipping_category_q4_2022\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:21:\"Save time on shipping\";s:7:\"content\";s:197:\"Is your store all set to ship? Save valuable time (and money!) by automating your fulfillment process for the busiest shopping season. Explore our range of trusted shipping partners to get started.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:31:\"shipping_category_q4_2022_click\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:20:\"Automate my shipping\";}}s:3:\"url\";s:229:\"https://woocommerce.com/product-category/woocommerce-extensions/shipping-delivery-and-fulfillment/?categoryIds=28685&collections=product&page=1&utm_source=inbox_note&utm_medium=product&utm_campaign=shipping_category_q4_2022_click\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-10-10 14:01:31\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2022-11-10 23:59:00\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:23:\"shipstation-integration\";}}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:12:\"packlink-pro\";}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:6:\"shippo\";}}}}}}}}}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(356, 'wc_remote_inbox_notifications_stored_state', 'O:8:\"stdClass\":2:{s:22:\"there_were_no_products\";b:1;s:22:\"there_are_now_products\";b:1;}', 'no'),
(364, 'wc_blocks_db_schema_version', '260', 'yes'),
(367, '_transient_woocommerce_reports-transient-version', '1666553543', 'yes'),
(379, 'woocommerce_task_list_tracked_completed_tasks', 'a:9:{i:0;s:8:\"purchase\";i:1;s:13:\"store_details\";i:2;s:8:\"shipping\";i:3;s:8:\"products\";i:4;s:8:\"payments\";i:5;s:3:\"tax\";i:6;s:10:\"appearance\";i:7;s:9:\"marketing\";i:8;s:15:\"review-shipping\";}', 'yes'),
(380, 'woocommerce_task_list_completed_lists', 'a:4:{i:0;s:8:\"extended\";i:1;s:19:\"extended_two_column\";i:2;s:5:\"setup\";i:3;s:16:\"setup_two_column\";}', 'yes'),
(388, 'woocommerce_onboarding_profile', 'a:10:{s:18:\"is_agree_marketing\";b:0;s:11:\"store_email\";s:24:\"rzeszotodaniel@gmail.com\";s:8:\"industry\";a:1:{i:0;a:1:{s:4:\"slug\";s:21:\"electronics-computers\";}}s:13:\"product_types\";a:1:{i:0;s:8:\"physical\";}s:13:\"product_count\";s:1:\"0\";s:14:\"selling_venues\";s:2:\"no\";s:12:\"setup_client\";b:0;s:19:\"business_extensions\";a:0:{}s:5:\"theme\";s:15:\"twentytwentytwo\";s:9:\"completed\";b:1;}', 'yes'),
(389, 'woocommerce_task_list_dismissed_tasks', 'a:0:{}', 'yes'),
(390, 'action_scheduler_migration_status', 'complete', 'yes'),
(391, '_transient_shipping-transient-version', '1664993570', 'yes'),
(392, 'woocommerce_admin_created_default_shipping_zones', 'yes', 'yes'),
(393, '_transient_woocommerce_shipping_task_zone_count_transient', '1', 'yes'),
(394, 'woocommerce_task_list_prompt_shown', '1', 'yes'),
(434, '_transient_timeout_wc_shipping_method_count_legacy', '1667586710', 'no'),
(435, '_transient_wc_shipping_method_count_legacy', 'a:2:{s:7:\"version\";s:10:\"1664993570\";s:5:\"value\";i:1;}', 'no'),
(441, '_transient_product_query-transient-version', '1666465519', 'yes'),
(442, '_transient_product-transient-version', '1666465519', 'yes'),
(452, 'woocommerce_cod_settings', 'a:6:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:8:\"Dobierka\";s:11:\"description\";s:43:\"Platba v hotovosti pri prebratí zásielky.\";s:12:\"instructions\";s:43:\"Platba v hotovosti pri prebratí zásielky.\";s:18:\"enable_for_methods\";a:0:{}s:18:\"enable_for_virtual\";s:3:\"yes\";}', 'yes'),
(453, 'woocommerce_no_sales_tax', '1', 'yes'),
(459, 'woocommerce_onboarding_homepage_post_id', '12', 'yes'),
(460, 'woocommerce_demo_store_notice', '', 'yes'),
(461, 'woocommerce_task_list_tracked_completed_actions', 'a:2:{i:0;s:10:\"appearance\";i:1;s:9:\"marketing\";}', 'yes'),
(462, 'woocommerce_default_homepage_layout', 'two_columns', 'yes'),
(463, 'woocommerce_task_list_hidden_lists', 'a:1:{i:0;s:5:\"setup\";}', 'yes'),
(464, '_transient_timeout_wc_shipping_method_count', '1667587011', 'no'),
(465, '_transient_wc_shipping_method_count', 'a:2:{s:7:\"version\";s:10:\"1664993570\";s:5:\"value\";i:1;}', 'no'),
(466, 'woocommerce_admin_reviewed_default_shipping_zones', 'yes', 'yes'),
(475, '_transient_timeout_wc_blocks_query_8ead99c4e93e453aac77df5171d13640', '1668711846', 'no'),
(476, '_transient_wc_blocks_query_8ead99c4e93e453aac77df5171d13640', 'a:2:{s:7:\"version\";s:10:\"1665934280\";s:5:\"value\";a:3:{i:0;i:21;i:1;i:20;i:2;i:11;}}', 'no'),
(496, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(497, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(500, 'theme_mods_shop', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1666450896;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'yes'),
(509, '_transient_timeout_wc_blocks_query_b830d3785c97bb55310e03a8f188db53', '1667587237', 'no'),
(510, '_transient_wc_blocks_query_b830d3785c97bb55310e03a8f188db53', 'a:2:{s:7:\"version\";s:10:\"1664995207\";s:5:\"value\";a:1:{i:0;i:11;}}', 'no'),
(528, '_transient_orders-transient-version', '1666468301', 'yes'),
(570, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(576, 'woocommerce_attribute_lookup_enabled', 'yes', 'yes'),
(597, '_transient_timeout_wc_customer_bought_product_ac06974699ab1c93fb0d71487bde937d', '1667634758', 'no'),
(598, '_transient_wc_customer_bought_product_ac06974699ab1c93fb0d71487bde937d', 'a:2:{s:7:\"version\";s:10:\"1664997631\";s:5:\"value\";a:0:{}}', 'no'),
(649, 'current_theme', 'pawsgang', 'yes'),
(650, 'theme_switched', '', 'yes'),
(651, 'woocommerce_maybe_regenerate_images_hash', '991b1ca641921cf0f5baf7a2fe85861b', 'yes'),
(661, 'theme_mods_twentytwenty', 'a:5:{i:0;b:0;s:16:\"background_color\";s:3:\"fff\";s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1665046239;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:9:\"sidebar-1\";a:0:{}s:9:\"sidebar-2\";a:0:{}}}}', 'yes'),
(859, 'recovery_mode_email_last_sent', '1665070983', 'yes'),
(895, '_transient_timeout_wc_product_loop_4235233d361346e65c68887b0034338f', '1668023838', 'no'),
(896, '_transient_wc_product_loop_4235233d361346e65c68887b0034338f', 'a:2:{s:7:\"version\";s:10:\"1665050004\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:0:{}s:5:\"total\";i:0;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:12;s:12:\"current_page\";i:1;}}', 'no'),
(944, '_transient_timeout_wc_product_loop_1d54b22d1cd304a755094f0db114ce82', '1668023919', 'no'),
(945, '_transient_wc_product_loop_1d54b22d1cd304a755094f0db114ce82', 'a:2:{s:7:\"version\";s:10:\"1665431916\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:1:{i:0;i:11;}s:5:\"total\";i:1;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:12;s:12:\"current_page\";i:1;}}', 'no'),
(951, '_transient_timeout_wc_product_loop_9c6305d94775ed2e852f0abe629a745d', '1668024001', 'no'),
(952, '_transient_wc_product_loop_9c6305d94775ed2e852f0abe629a745d', 'a:2:{s:7:\"version\";s:10:\"1665431916\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:1:{i:0;i:11;}s:5:\"total\";i:1;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:3;s:12:\"current_page\";i:1;}}', 'no'),
(964, '_transient_timeout_wc_product_loop_6bba3234ab70291c7baf981d08d106bc', '1668110551', 'no'),
(965, '_transient_wc_product_loop_6bba3234ab70291c7baf981d08d106bc', 'a:2:{s:7:\"version\";s:10:\"1665518528\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:3:{i:0;i:21;i:1;i:11;i:2;i:20;}s:5:\"total\";i:3;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:3;s:12:\"current_page\";i:1;}}', 'no'),
(967, '_transient_timeout_wc_product_loop_8a7feeaddc2a0e9c65f66baf2b267f0c', '1668024099', 'no'),
(968, '_transient_wc_product_loop_8a7feeaddc2a0e9c65f66baf2b267f0c', 'a:2:{s:7:\"version\";s:10:\"1665432062\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:2:{i:0;i:21;i:1;i:11;}s:5:\"total\";i:2;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:2;s:12:\"current_page\";i:1;}}', 'no'),
(983, '_transient_timeout_wc_blocks_query_557681ccd1248020c5eaa7f1e2889a96', '1668024295', 'no'),
(984, '_transient_wc_blocks_query_557681ccd1248020c5eaa7f1e2889a96', 'a:2:{s:7:\"version\";s:10:\"1665432062\";s:5:\"value\";a:3:{i:0;i:21;i:1;i:20;i:2;i:11;}}', 'no'),
(985, '_transient_timeout_wc_blocks_query_2f3a39324c7568222c867659df5c2cfe', '1668024300', 'no'),
(986, '_transient_wc_blocks_query_2f3a39324c7568222c867659df5c2cfe', 'a:2:{s:7:\"version\";s:10:\"1665432062\";s:5:\"value\";a:3:{i:0;i:21;i:1;i:20;i:2;i:11;}}', 'no'),
(987, '_transient_timeout_wc_blocks_query_046b031ca6a9416f18d00102dab12c79', '1668024313', 'no'),
(988, '_transient_wc_blocks_query_046b031ca6a9416f18d00102dab12c79', 'a:2:{s:7:\"version\";s:10:\"1665432062\";s:5:\"value\";a:3:{i:0;i:21;i:1;i:20;i:2;i:11;}}', 'no'),
(989, '_transient_timeout_wc_blocks_query_f119b1786725096f0e19f43ef2cd99ec', '1668024317', 'no'),
(990, '_transient_wc_blocks_query_f119b1786725096f0e19f43ef2cd99ec', 'a:2:{s:7:\"version\";s:10:\"1665432062\";s:5:\"value\";a:3:{i:0;i:21;i:1;i:20;i:2;i:11;}}', 'no'),
(1471, 'category_children', 'a:0:{}', 'yes'),
(1472, '_transient_timeout_orders-all-statuses', '1667073084', 'no'),
(1473, '_transient_orders-all-statuses', 'a:2:{s:7:\"version\";s:10:\"1666468281\";s:5:\"value\";a:3:{i:0;s:8:\"wc-trash\";i:1;s:12:\"wc-completed\";i:2;s:13:\"wc-processing\";}}', 'no'),
(1547, '_transient_timeout_wc_product_loop_0c7163e51e281d9b3fbb8dabf2cd7fda', '1668518205', 'no'),
(1548, '_transient_wc_product_loop_0c7163e51e281d9b3fbb8dabf2cd7fda', 'a:2:{s:7:\"version\";s:10:\"1665925302\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:3:{i:0;i:21;i:1;i:11;i:2;i:20;}s:5:\"total\";i:3;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:-1;s:12:\"current_page\";i:1;}}', 'no'),
(1595, '_transient_timeout_wc_product_loop_c02d3de3ae44db741c59a634c7b6d3d7', '1668515992', 'no'),
(1596, '_transient_wc_product_loop_c02d3de3ae44db741c59a634c7b6d3d7', 'a:2:{s:7:\"version\";s:10:\"1665518528\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:0:{}s:5:\"total\";i:0;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:-1;s:12:\"current_page\";i:1;}}', 'no'),
(1601, '_transient_timeout_wc_product_loop_fff7b8cabb3b90103a87c641764959e9', '1668516113', 'no'),
(1602, '_transient_wc_product_loop_fff7b8cabb3b90103a87c641764959e9', 'a:2:{s:7:\"version\";s:10:\"1665518528\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:0:{}s:5:\"total\";i:0;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:-1;s:12:\"current_page\";i:1;}}', 'no'),
(1609, '_transient_timeout_wc_product_loop_cd7daaafba2815ae72905a35a90e461a', '1668516337', 'no'),
(1610, '_transient_wc_product_loop_cd7daaafba2815ae72905a35a90e461a', 'a:2:{s:7:\"version\";s:10:\"1665518528\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:0:{}s:5:\"total\";i:0;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:8;s:12:\"current_page\";i:1;}}', 'no'),
(1619, 'theme_mods_PawsGang-eCommerce-Theme-WooCommerce-main', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1666450780;s:4:\"data\";a:5:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:9:\"sidebar-1\";a:0:{}s:21:\"footer-widget-col-one\";a:0:{}s:21:\"footer-widget-col-two\";a:0:{}s:23:\"footer-widget-col-three\";a:0:{}}}}', 'yes'),
(1626, '_transient_timeout_wc_product_loop_11cdaf508e97c76fbe4c110cd5383515', '1669037782', 'no'),
(1627, '_transient_wc_product_loop_11cdaf508e97c76fbe4c110cd5383515', 'a:2:{s:7:\"version\";s:10:\"1666445728\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:68;i:1;i:54;i:2;i:52;i:3;i:98;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}}', 'no'),
(1628, '_transient_timeout_wc_product_loop_fa9313bac93cb2dad857e450ee21f25b', '1668517304', 'no'),
(1629, '_transient_wc_product_loop_fa9313bac93cb2dad857e450ee21f25b', 'a:2:{s:7:\"version\";s:10:\"1665925302\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:3:{i:0;i:21;i:1;i:11;i:2;i:20;}s:5:\"total\";i:3;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}}', 'no'),
(1649, '_transient_timeout_wc_product_loop_35544193ee87d7d483c8a98a1fec39f8', '1668796877', 'no'),
(1650, '_transient_wc_product_loop_35544193ee87d7d483c8a98a1fec39f8', 'a:2:{s:7:\"version\";s:10:\"1666200210\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:3:{i:0;i:21;i:1;i:11;i:2;i:20;}s:5:\"total\";i:3;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:3;s:12:\"current_page\";i:1;}}', 'no'),
(1713, '_transient_timeout_wc_blocks_query_2467a8c1337ab57890905d7cc3d1bfc9', '1668519595', 'no'),
(1714, '_transient_wc_blocks_query_2467a8c1337ab57890905d7cc3d1bfc9', 'a:2:{s:7:\"version\";s:10:\"1665925302\";s:5:\"value\";a:3:{i:0;i:21;i:1;i:20;i:2;i:11;}}', 'no'),
(1723, '_transient_timeout_wc_product_loop_c564c32472086d2d4e310bbb8bb81d64', '1668520017', 'no'),
(1724, '_transient_wc_product_loop_c564c32472086d2d4e310bbb8bb81d64', 'a:2:{s:7:\"version\";s:10:\"1665925302\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:0:{}s:5:\"total\";i:0;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:12;s:12:\"current_page\";i:1;}}', 'no'),
(2063, '_transient_timeout_wc_report_orders_stats_268fb4acc564be315b0742312922c140', '1666726793', 'no'),
(2064, '_transient_wc_report_orders_stats_268fb4acc564be315b0742312922c140', 'a:2:{s:7:\"version\";s:10:\"1666121916\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:1;s:14:\"num_items_sold\";i:3;s:11:\"gross_sales\";d:105;s:11:\"total_sales\";d:105;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:105;s:19:\"avg_items_per_order\";d:3;s:15:\"avg_order_value\";d:105;s:15:\"total_customers\";i:1;s:8:\"products\";i:1;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:4:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-42\";s:10:\"date_start\";s:19:\"2022-10-17 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-16 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-18 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-18 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:1;s:14:\"num_items_sold\";i:3;s:11:\"gross_sales\";d:105;s:11:\"total_sales\";d:105;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:105;s:19:\"avg_items_per_order\";d:3;s:15:\"avg_order_value\";d:105;s:15:\"total_customers\";i:1;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2022-41\";s:10:\"date_start\";s:19:\"2022-10-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-09 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-16 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-16 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:7:\"2022-40\";s:10:\"date_start\";s:19:\"2022-10-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-02 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-09 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:7:\"2022-39\";s:10:\"date_start\";s:19:\"2022-10-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-09-30 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-02 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:4;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(2065, '_transient_timeout_wc_report_orders_stats_0b12ebbaa7ac2fcfebaf78f3b4ef6b6f', '1666726793', 'no'),
(2066, '_transient_wc_report_orders_stats_0b12ebbaa7ac2fcfebaf78f3b4ef6b6f', 'a:2:{s:7:\"version\";s:10:\"1666121916\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:1;s:14:\"num_items_sold\";i:3;s:11:\"gross_sales\";d:105;s:11:\"total_sales\";d:105;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:105;s:19:\"avg_items_per_order\";d:3;s:15:\"avg_order_value\";d:105;s:15:\"total_customers\";i:1;s:8:\"products\";i:1;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:4:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-42\";s:10:\"date_start\";s:19:\"2022-10-17 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-16 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-18 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-18 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:1;s:14:\"num_items_sold\";i:3;s:11:\"gross_sales\";d:105;s:11:\"total_sales\";d:105;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:105;s:19:\"avg_items_per_order\";d:3;s:15:\"avg_order_value\";d:105;s:15:\"total_customers\";i:1;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2022-41\";s:10:\"date_start\";s:19:\"2022-10-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-09 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-16 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-16 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:7:\"2022-40\";s:10:\"date_start\";s:19:\"2022-10-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-02 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-09 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:7:\"2022-39\";s:10:\"date_start\";s:19:\"2022-10-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-09-30 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-02 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:4;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(2067, '_transient_timeout_wc_report_products_stats_8493033b364781b560f666a7f1f6a818', '1666726793', 'no'),
(2068, '_transient_wc_report_products_stats_8493033b364781b560f666a7f1f6a818', 'a:2:{s:7:\"version\";s:10:\"1666121916\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":6:{s:10:\"items_sold\";i:3;s:11:\"net_revenue\";d:105;s:12:\"orders_count\";i:1;s:14:\"products_count\";i:1;s:16:\"variations_count\";i:1;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:4:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-42\";s:10:\"date_start\";s:19:\"2022-10-17 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-16 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-18 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-18 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:10:\"items_sold\";i:3;s:11:\"net_revenue\";d:105;s:12:\"orders_count\";i:1;s:14:\"products_count\";i:1;s:16:\"variations_count\";i:1;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2022-41\";s:10:\"date_start\";s:19:\"2022-10-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-09 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-16 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-16 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:14:\"products_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:7:\"2022-40\";s:10:\"date_start\";s:19:\"2022-10-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-02 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-09 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:14:\"products_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:7:\"2022-39\";s:10:\"date_start\";s:19:\"2022-10-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-09-30 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-02 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:14:\"products_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:4;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(2069, '_transient_timeout_wc_report_variations_stats_60158af82f5b17e983bb69eefc4c8113', '1666726793', 'no'),
(2070, '_transient_wc_report_variations_stats_60158af82f5b17e983bb69eefc4c8113', 'a:2:{s:7:\"version\";s:10:\"1666121916\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":5:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:4:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-42\";s:10:\"date_start\";s:19:\"2022-10-17 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-16 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-18 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-18 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":5:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2022-41\";s:10:\"date_start\";s:19:\"2022-10-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-09 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-16 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-16 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":5:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:7:\"2022-40\";s:10:\"date_start\";s:19:\"2022-10-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-02 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-09 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":5:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:7:\"2022-39\";s:10:\"date_start\";s:19:\"2022-10-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-09-30 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-02 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":5:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:4;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(2071, '_transient_timeout_wc_report_orders_stats_4a0787d61a98c3c9ae82d19dc90316af', '1666726793', 'no'),
(2072, '_transient_wc_report_orders_stats_4a0787d61a98c3c9ae82d19dc90316af', 'a:2:{s:7:\"version\";s:10:\"1666121916\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":4:{s:11:\"net_revenue\";d:105;s:8:\"products\";i:1;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:18:{i:0;a:6:{s:8:\"interval\";s:10:\"2022-10-01\";s:10:\"date_start\";s:19:\"2022-10-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-09-30 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-01 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:10:\"2022-10-02\";s:10:\"date_start\";s:19:\"2022-10-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-01 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-02 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:10:\"2022-10-03\";s:10:\"date_start\";s:19:\"2022-10-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-02 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-03 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:10:\"2022-10-04\";s:10:\"date_start\";s:19:\"2022-10-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-03 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-04 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:10:\"2022-10-05\";s:10:\"date_start\";s:19:\"2022-10-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-04 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-05 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:5;a:6:{s:8:\"interval\";s:10:\"2022-10-06\";s:10:\"date_start\";s:19:\"2022-10-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-05 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-06 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:6;a:6:{s:8:\"interval\";s:10:\"2022-10-07\";s:10:\"date_start\";s:19:\"2022-10-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-06 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-07 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:7;a:6:{s:8:\"interval\";s:10:\"2022-10-08\";s:10:\"date_start\";s:19:\"2022-10-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-07 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-08 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:8;a:6:{s:8:\"interval\";s:10:\"2022-10-09\";s:10:\"date_start\";s:19:\"2022-10-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-08 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-09 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:9;a:6:{s:8:\"interval\";s:10:\"2022-10-10\";s:10:\"date_start\";s:19:\"2022-10-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-09 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-10 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:10;a:6:{s:8:\"interval\";s:10:\"2022-10-11\";s:10:\"date_start\";s:19:\"2022-10-11 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-10 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-11 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-11 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:11;a:6:{s:8:\"interval\";s:10:\"2022-10-12\";s:10:\"date_start\";s:19:\"2022-10-12 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-11 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-12 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-12 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:12;a:6:{s:8:\"interval\";s:10:\"2022-10-13\";s:10:\"date_start\";s:19:\"2022-10-13 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-12 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-13 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-13 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:13;a:6:{s:8:\"interval\";s:10:\"2022-10-14\";s:10:\"date_start\";s:19:\"2022-10-14 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-13 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-14 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-14 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:14;a:6:{s:8:\"interval\";s:10:\"2022-10-15\";s:10:\"date_start\";s:19:\"2022-10-15 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-14 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-15 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-15 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:15;a:6:{s:8:\"interval\";s:10:\"2022-10-16\";s:10:\"date_start\";s:19:\"2022-10-16 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-15 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-16 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-16 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:16;a:6:{s:8:\"interval\";s:10:\"2022-10-17\";s:10:\"date_start\";s:19:\"2022-10-17 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-16 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-17 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-17 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:17;a:6:{s:8:\"interval\";s:10:\"2022-10-18\";s:10:\"date_start\";s:19:\"2022-10-18 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-17 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-18 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-18 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:105;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:18;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(2073, '_transient_timeout_wc_report_products_stats_64fa144a2550920c0a5e33c540193e24', '1666722451', 'no'),
(2074, '_transient_wc_report_products_stats_64fa144a2550920c0a5e33c540193e24', 'a:2:{s:7:\"version\";s:10:\"1666117641\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:1;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:18:{i:0;a:6:{s:8:\"interval\";s:10:\"2022-10-01\";s:10:\"date_start\";s:19:\"2022-10-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-09-30 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-01 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:10:\"2022-10-02\";s:10:\"date_start\";s:19:\"2022-10-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-01 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-02 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:10:\"2022-10-03\";s:10:\"date_start\";s:19:\"2022-10-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-02 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-03 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:10:\"2022-10-04\";s:10:\"date_start\";s:19:\"2022-10-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-03 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-04 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:10:\"2022-10-05\";s:10:\"date_start\";s:19:\"2022-10-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-04 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-05 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:5;a:6:{s:8:\"interval\";s:10:\"2022-10-06\";s:10:\"date_start\";s:19:\"2022-10-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-05 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-06 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:6;a:6:{s:8:\"interval\";s:10:\"2022-10-07\";s:10:\"date_start\";s:19:\"2022-10-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-06 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-07 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:7;a:6:{s:8:\"interval\";s:10:\"2022-10-08\";s:10:\"date_start\";s:19:\"2022-10-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-07 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-08 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:8;a:6:{s:8:\"interval\";s:10:\"2022-10-09\";s:10:\"date_start\";s:19:\"2022-10-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-08 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-09 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:9;a:6:{s:8:\"interval\";s:10:\"2022-10-10\";s:10:\"date_start\";s:19:\"2022-10-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-09 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-10 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:10;a:6:{s:8:\"interval\";s:10:\"2022-10-11\";s:10:\"date_start\";s:19:\"2022-10-11 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-10 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-11 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-11 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:11;a:6:{s:8:\"interval\";s:10:\"2022-10-12\";s:10:\"date_start\";s:19:\"2022-10-12 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-11 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-12 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-12 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:12;a:6:{s:8:\"interval\";s:10:\"2022-10-13\";s:10:\"date_start\";s:19:\"2022-10-13 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-12 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-13 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-13 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:13;a:6:{s:8:\"interval\";s:10:\"2022-10-14\";s:10:\"date_start\";s:19:\"2022-10-14 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-13 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-14 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-14 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:14;a:6:{s:8:\"interval\";s:10:\"2022-10-15\";s:10:\"date_start\";s:19:\"2022-10-15 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-14 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-15 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-15 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:15;a:6:{s:8:\"interval\";s:10:\"2022-10-16\";s:10:\"date_start\";s:19:\"2022-10-16 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-15 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-16 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-16 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:16;a:6:{s:8:\"interval\";s:10:\"2022-10-17\";s:10:\"date_start\";s:19:\"2022-10-17 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-16 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-17 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-17 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:17;a:6:{s:8:\"interval\";s:10:\"2022-10-18\";s:10:\"date_start\";s:19:\"2022-10-18 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-17 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-18 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-18 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:1;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:18;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(2102, 'aws_hide_welcome_notice', 'false', 'no'),
(2103, 'widget_aws_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(2104, 'aws_settings', 'a:41:{s:8:\"seamless\";s:5:\"false\";s:9:\"search_in\";a:7:{s:5:\"title\";s:1:\"1\";s:7:\"content\";s:1:\"1\";s:3:\"sku\";s:1:\"1\";s:7:\"excerpt\";s:1:\"1\";s:8:\"category\";s:1:\"0\";s:3:\"tag\";s:1:\"0\";s:2:\"id\";s:1:\"0\";}s:15:\"search_archives\";a:2:{s:16:\"archive_category\";s:1:\"0\";s:11:\"archive_tag\";s:1:\"0\";}s:9:\"stopwords\";s:533:\"a, also, am, an, and, are, as, at, be, but, by, call, can, co, con, de, do, due, eg, eight, etc, even, ever, every, for, from, full, go, had, has, hasnt, have, he, hence, her, here, his, how, ie, if, in, inc, into, is, it, its, ltd, me, my, no, none, nor, not, now, of, off, on, once, one, only, onto, or, our, ours, out, over, own, part, per, put, re, see, so, some, ten, than, that, the, their, there, these, they, this, three, thru, thus, to, too, top, un, up, us, very, via, was, we, well, were, what, when, where, who, why, will\";s:8:\"synonyms\";s:64:\"buy, pay, purchase, acquire&#13;&#10;box, housing, unit, package\";s:13:\"use_analytics\";s:5:\"false\";s:11:\"search_page\";s:4:\"true\";s:19:\"search_page_res_num\";s:3:\"100\";s:24:\"search_page_res_per_page\";s:0:\"\";s:17:\"search_page_query\";s:7:\"default\";s:11:\"search_rule\";s:8:\"contains\";s:14:\"search_timeout\";s:3:\"300\";s:5:\"cache\";s:4:\"true\";s:13:\"index_sources\";a:7:{s:5:\"title\";s:1:\"1\";s:7:\"content\";s:1:\"1\";s:3:\"sku\";s:1:\"1\";s:7:\"excerpt\";s:1:\"1\";s:8:\"category\";s:1:\"1\";s:3:\"tag\";s:1:\"1\";s:2:\"id\";s:1:\"1\";}s:16:\"index_variations\";s:4:\"true\";s:11:\"autoupdates\";s:4:\"true\";s:17:\"search_field_text\";s:6:\"Search\";s:14:\"show_more_text\";s:16:\"View all results\";s:14:\"not_found_text\";s:13:\"Nothing found\";s:9:\"min_chars\";s:1:\"1\";s:11:\"enable_ajax\";s:4:\"true\";s:11:\"show_loader\";s:4:\"true\";s:10:\"show_clear\";s:4:\"true\";s:9:\"show_more\";s:4:\"true\";s:14:\"mobile_overlay\";s:5:\"false\";s:13:\"buttons_order\";s:1:\"1\";s:11:\"desc_source\";s:7:\"content\";s:10:\"mark_words\";s:4:\"true\";s:14:\"excerpt_length\";s:2:\"20\";s:11:\"results_num\";s:2:\"10\";s:17:\"pages_results_num\";s:2:\"10\";s:10:\"outofstock\";s:4:\"true\";s:9:\"highlight\";s:4:\"true\";s:10:\"show_image\";s:4:\"true\";s:12:\"show_excerpt\";s:4:\"true\";s:10:\"show_price\";s:4:\"true\";s:21:\"show_outofstock_price\";s:4:\"true\";s:9:\"show_sale\";s:4:\"true\";s:8:\"show_sku\";s:5:\"false\";s:10:\"show_stock\";s:5:\"false\";s:13:\"show_featured\";s:5:\"false\";}', 'yes'),
(2105, 'aws_plugin_ver', '2.65', 'yes'),
(2124, 'aws_reindex_version', '2.65', 'yes'),
(2201, '_transient_timeout_wc_report_orders_stats_f0742a636aedd6cb80b1b06be1a31f04', '1666725086', 'no'),
(2202, '_transient_wc_report_orders_stats_f0742a636aedd6cb80b1b06be1a31f04', 'a:2:{s:7:\"version\";s:10:\"1666117670\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-42\";s:10:\"date_start\";s:19:\"2022-10-18 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-17 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-18 21:11:23\";s:12:\"date_end_gmt\";s:19:\"2022-10-18 19:11:23\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(2203, '_transient_timeout_wc_report_orders_stats_d8a388a2c58334b234a5fe6fa47af0a1', '1666725086', 'no'),
(2204, '_transient_wc_report_orders_stats_d8a388a2c58334b234a5fe6fa47af0a1', 'a:2:{s:7:\"version\";s:10:\"1666117670\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-42\";s:10:\"date_start\";s:19:\"2022-10-18 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-17 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-18 21:11:23\";s:12:\"date_end_gmt\";s:19:\"2022-10-18 19:11:23\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(2205, '_transient_timeout_wc_report_orders_stats_b891aae62f64d373accae272b297ff01', '1666725087', 'no'),
(2206, '_transient_wc_report_orders_stats_b891aae62f64d373accae272b297ff01', 'a:2:{s:7:\"version\";s:10:\"1666117670\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-42\";s:10:\"date_start\";s:19:\"2022-10-17 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-16 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-17 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-17 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(2207, '_transient_timeout_wc_report_orders_stats_1ada1faee8b0859e187863337a6f4653', '1666725087', 'no'),
(2208, '_transient_wc_report_orders_stats_1ada1faee8b0859e187863337a6f4653', 'a:2:{s:7:\"version\";s:10:\"1666117670\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-42\";s:10:\"date_start\";s:19:\"2022-10-17 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-16 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-17 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-17 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(2247, '_transient_timeout_wc_report_orders_stats_aa57c2bd10a703ffd6d9b0903e50d116', '1666725739', 'no'),
(2248, '_transient_wc_report_orders_stats_aa57c2bd10a703ffd6d9b0903e50d116', 'a:2:{s:7:\"version\";s:10:\"1666117670\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-42\";s:10:\"date_start\";s:19:\"2022-10-18 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-17 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-18 21:22:17\";s:12:\"date_end_gmt\";s:19:\"2022-10-18 19:22:17\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(2249, '_transient_timeout_wc_report_orders_stats_542ab3acb1867be62fa2260f751a94c4', '1666725739', 'no'),
(2250, '_transient_wc_report_orders_stats_542ab3acb1867be62fa2260f751a94c4', 'a:2:{s:7:\"version\";s:10:\"1666117670\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-42\";s:10:\"date_start\";s:19:\"2022-10-18 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-17 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-18 21:22:17\";s:12:\"date_end_gmt\";s:19:\"2022-10-18 19:22:17\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(2252, '_transient_timeout_woocommerce_admin_payment_gateway_suggestions_specs', '1666725775', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(2253, '_transient_woocommerce_admin_payment_gateway_suggestions_specs', 'a:1:{s:5:\"sk_SK\";a:20:{s:7:\"payfast\";O:8:\"stdClass\":9:{s:2:\"id\";s:7:\"payfast\";s:5:\"title\";s:7:\"PayFast\";s:7:\"content\";s:299:\"The PayFast extension for WooCommerce enables you to accept payments by Credit Card and EFT via one of South Africa’s most popular payment gateways. No setup fees or monthly subscription costs. Selecting this extension will configure your store to use South African rands as the selected currency.\";s:5:\"image\";s:80:\"https://woocommerce.com/wp-content/plugins/woocommerce/assets/images/payfast.png\";s:11:\"image_72x72\";s:109:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/payfast.png\";s:7:\"plugins\";a:1:{i:0;s:27:\"woocommerce-payfast-gateway\";}s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:3:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ZA\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GH\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NG\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}}s:14:\"category_other\";a:3:{i:0;s:2:\"ZA\";i:1;s:2:\"GH\";i:2;s:2:\"NG\";}s:19:\"category_additional\";a:0:{}}s:6:\"stripe\";O:8:\"stdClass\":11:{s:2:\"id\";s:6:\"stripe\";s:5:\"title\";s:6:\"Stripe\";s:7:\"content\";s:95:\"Prijímajte debetné a kreditné karty v 135+ menách, spôsoby platby ako Alipay, a Apple Pay.\";s:5:\"image\";s:79:\"https://woocommerce.com/wp-content/plugins/woocommerce/assets/images/stripe.png\";s:11:\"image_72x72\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/stripe.png\";s:12:\"square_image\";s:102:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/stripe.svg\";s:7:\"plugins\";a:1:{i:0;s:26:\"woocommerce-gateway-stripe\";}s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:40:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AU\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AT\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BE\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BG\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BR\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CY\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CZ\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DK\";s:9:\"operation\";s:1:\"=\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"EE\";s:9:\"operation\";s:1:\"=\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FI\";s:9:\"operation\";s:1:\"=\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FR\";s:9:\"operation\";s:1:\"=\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DE\";s:9:\"operation\";s:1:\"=\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GR\";s:9:\"operation\";s:1:\"=\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"HK\";s:9:\"operation\";s:1:\"=\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IN\";s:9:\"operation\";s:1:\"=\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IE\";s:9:\"operation\";s:1:\"=\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IT\";s:9:\"operation\";s:1:\"=\";}i:18;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"JP\";s:9:\"operation\";s:1:\"=\";}i:19;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"LV\";s:9:\"operation\";s:1:\"=\";}i:20;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"LT\";s:9:\"operation\";s:1:\"=\";}i:21;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"LU\";s:9:\"operation\";s:1:\"=\";}i:22;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"MY\";s:9:\"operation\";s:1:\"=\";}i:23;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"MT\";s:9:\"operation\";s:1:\"=\";}i:24;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"MX\";s:9:\"operation\";s:1:\"=\";}i:25;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NL\";s:9:\"operation\";s:1:\"=\";}i:26;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NZ\";s:9:\"operation\";s:1:\"=\";}i:27;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NO\";s:9:\"operation\";s:1:\"=\";}i:28;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PL\";s:9:\"operation\";s:1:\"=\";}i:29;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PT\";s:9:\"operation\";s:1:\"=\";}i:30;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"RO\";s:9:\"operation\";s:1:\"=\";}i:31;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SG\";s:9:\"operation\";s:1:\"=\";}i:32;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SK\";s:9:\"operation\";s:1:\"=\";}i:33;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SI\";s:9:\"operation\";s:1:\"=\";}i:34;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ES\";s:9:\"operation\";s:1:\"=\";}i:35;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SE\";s:9:\"operation\";s:1:\"=\";}i:36;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CH\";s:9:\"operation\";s:1:\"=\";}i:37;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GB\";s:9:\"operation\";s:1:\"=\";}i:38;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:39;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PR\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}}s:14:\"category_other\";a:40:{i:0;s:2:\"AU\";i:1;s:2:\"AT\";i:2;s:2:\"BE\";i:3;s:2:\"BG\";i:4;s:2:\"BR\";i:5;s:2:\"CA\";i:6;s:2:\"CY\";i:7;s:2:\"CZ\";i:8;s:2:\"DK\";i:9;s:2:\"EE\";i:10;s:2:\"FI\";i:11;s:2:\"FR\";i:12;s:2:\"DE\";i:13;s:2:\"GR\";i:14;s:2:\"HK\";i:15;s:2:\"IN\";i:16;s:2:\"IE\";i:17;s:2:\"IT\";i:18;s:2:\"JP\";i:19;s:2:\"LV\";i:20;s:2:\"LT\";i:21;s:2:\"LU\";i:22;s:2:\"MY\";i:23;s:2:\"MT\";i:24;s:2:\"MX\";i:25;s:2:\"NL\";i:26;s:2:\"NZ\";i:27;s:2:\"NO\";i:28;s:2:\"PL\";i:29;s:2:\"PT\";i:30;s:2:\"RO\";i:31;s:2:\"SG\";i:32;s:2:\"SK\";i:33;s:2:\"SI\";i:34;s:2:\"ES\";i:35;s:2:\"SE\";i:36;s:2:\"CH\";i:37;s:2:\"GB\";i:38;s:2:\"US\";i:39;s:2:\"PR\";}s:19:\"category_additional\";a:0:{}s:23:\"recommendation_priority\";i:3;}s:8:\"paystack\";O:8:\"stdClass\":10:{s:2:\"id\";s:8:\"paystack\";s:5:\"title\";s:8:\"Paystack\";s:7:\"content\";s:127:\"Paystack helps African merchants accept one-time and recurring payments online with a modern, safe, and secure payment gateway.\";s:5:\"image\";s:104:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/paystack.png\";s:12:\"square_image\";s:111:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/paystack-square.png\";s:11:\"image_72x72\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/paystack.png\";s:7:\"plugins\";a:1:{i:0;s:12:\"woo-paystack\";}s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:3:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ZA\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GH\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NG\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}}s:14:\"category_other\";a:3:{i:0;s:2:\"ZA\";i:1;s:2:\"GH\";i:2;s:2:\"NG\";}s:19:\"category_additional\";a:0:{}}s:3:\"kco\";O:8:\"stdClass\":9:{s:2:\"id\";s:3:\"kco\";s:5:\"title\";s:16:\"Klarna pokladňa\";s:7:\"content\";s:137:\"Vyberte platbu, zaplaťte teraz, plaťte neskôr alebo ju rozdelte. Žiadne čísla kreditných kariet, žiadne heslá, žiadne starosti.\";s:5:\"image\";s:85:\"https://woocommerce.com/wp-content/plugins/woocommerce/assets/images/klarna-black.png\";s:11:\"image_72x72\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/klarna.png\";s:7:\"plugins\";a:1:{i:0;s:31:\"klarna-checkout-for-woocommerce\";}s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:3:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SE\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FI\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NO\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}}s:14:\"category_other\";a:3:{i:0;s:2:\"SE\";i:1;s:2:\"FI\";i:2;s:2:\"NO\";}s:19:\"category_additional\";a:0:{}}s:15:\"klarna_payments\";O:8:\"stdClass\":9:{s:2:\"id\";s:15:\"klarna_payments\";s:5:\"title\";s:21:\"Spôsob platby Klarna\";s:7:\"content\";s:137:\"Vyberte platbu, zaplaťte teraz, plaťte neskôr alebo ju rozdelte. Žiadne čísla kreditných kariet, žiadne heslá, žiadne starosti.\";s:5:\"image\";s:85:\"https://woocommerce.com/wp-content/plugins/woocommerce/assets/images/klarna-black.png\";s:11:\"image_72x72\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/klarna.png\";s:7:\"plugins\";a:1:{i:0;s:31:\"klarna-payments-for-woocommerce\";}s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:21:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DK\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DE\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AT\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NL\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CH\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BE\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SP\";s:9:\"operation\";s:1:\"=\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PL\";s:9:\"operation\";s:1:\"=\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FR\";s:9:\"operation\";s:1:\"=\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IT\";s:9:\"operation\";s:1:\"=\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GB\";s:9:\"operation\";s:1:\"=\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ES\";s:9:\"operation\";s:1:\"=\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FI\";s:9:\"operation\";s:1:\"=\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NO\";s:9:\"operation\";s:1:\"=\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SE\";s:9:\"operation\";s:1:\"=\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ES\";s:9:\"operation\";s:1:\"=\";}i:18;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FI\";s:9:\"operation\";s:1:\"=\";}i:19;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NO\";s:9:\"operation\";s:1:\"=\";}i:20;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SE\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}}s:14:\"category_other\";a:0:{}s:19:\"category_additional\";a:21:{i:0;s:2:\"US\";i:1;s:2:\"CA\";i:2;s:2:\"DK\";i:3;s:2:\"DE\";i:4;s:2:\"AT\";i:5;s:2:\"NL\";i:6;s:2:\"CH\";i:7;s:2:\"BE\";i:8;s:2:\"SP\";i:9;s:2:\"PL\";i:10;s:2:\"FR\";i:11;s:2:\"IT\";i:12;s:2:\"GB\";i:13;s:2:\"ES\";i:14;s:2:\"FI\";i:15;s:2:\"NO\";i:16;s:2:\"SE\";i:17;s:2:\"ES\";i:18;s:2:\"FI\";i:19;s:2:\"NO\";i:20;s:2:\"SE\";}}s:30:\"mollie_wc_gateway_banktransfer\";O:8:\"stdClass\":10:{s:2:\"id\";s:30:\"mollie_wc_gateway_banktransfer\";s:5:\"title\";s:6:\"Mollie\";s:7:\"content\";s:128:\"Effortless payments by Mollie: Offer global and local payment methods, get onboarded in minutes, and supported in your language.\";s:5:\"image\";s:102:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/mollie.svg\";s:11:\"image_72x72\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/mollie.png\";s:12:\"square_image\";s:109:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/mollie-square.png\";s:7:\"plugins\";a:1:{i:0;s:31:\"mollie-payments-for-woocommerce\";}s:10:\"is_visible\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:11:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FR\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DE\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GB\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AT\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CH\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ES\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IT\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PL\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FI\";s:9:\"operation\";s:1:\"=\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NL\";s:9:\"operation\";s:1:\"=\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BE\";s:9:\"operation\";s:1:\"=\";}}}}s:14:\"category_other\";a:11:{i:0;s:2:\"FR\";i:1;s:2:\"DE\";i:2;s:2:\"GB\";i:3;s:2:\"AT\";i:4;s:2:\"CH\";i:5;s:2:\"ES\";i:6;s:2:\"IT\";i:7;s:2:\"PL\";i:8;s:2:\"FI\";i:9;s:2:\"NL\";i:10;s:2:\"BE\";}s:19:\"category_additional\";a:0:{}}s:23:\"woo-mercado-pago-custom\";O:8:\"stdClass\":11:{s:2:\"id\";s:23:\"woo-mercado-pago-custom\";s:5:\"title\";s:34:\"Mercado Pago Checkout Pro & Custom\";s:7:\"content\";s:183:\"Accept credit and debit cards, offline (cash or bank transfer) and logged-in payments with money in Mercado Pago. Safe and secure payments with the leading payment processor in LATAM.\";s:5:\"image\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/mercadopago.png\";s:11:\"image_72x72\";s:113:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/mercadopago.png\";s:7:\"plugins\";a:1:{i:0;s:23:\"woocommerce-mercadopago\";}s:10:\"is_visible\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:7:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AR\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BR\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CL\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CO\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"MX\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PE\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"UY\";s:9:\"operation\";s:1:\"=\";}}}}s:23:\"recommendation_priority\";i:2;s:16:\"is_local_partner\";b:1;s:14:\"category_other\";a:7:{i:0;s:2:\"AR\";i:1;s:2:\"BR\";i:2;s:2:\"CL\";i:3;s:2:\"CO\";i:4;s:2:\"MX\";i:5;s:2:\"PE\";i:6;s:2:\"UY\";}s:19:\"category_additional\";a:0:{}}s:12:\"ppcp-gateway\";O:8:\"stdClass\":10:{s:2:\"id\";s:12:\"ppcp-gateway\";s:5:\"title\";s:13:\"PayPal Platby\";s:7:\"content\";s:100:\"Bezpečné a spoľahlivé platby pomocou kreditných kariet alebo účtu PayPal vášho zákazníka.\";s:5:\"image\";s:79:\"https://woocommerce.com/wp-content/plugins/woocommerce/assets/images/paypal.png\";s:11:\"image_72x72\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/paypal.png\";s:12:\"square_image\";s:102:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/paypal.svg\";s:7:\"plugins\";a:1:{i:0;s:27:\"woocommerce-paypal-payments\";}s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IN\";s:9:\"operation\";s:2:\"!=\";}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}}s:14:\"category_other\";a:51:{i:0;s:2:\"US\";i:1;s:2:\"CA\";i:2;s:2:\"AT\";i:3;s:2:\"BE\";i:4;s:2:\"BG\";i:5;s:2:\"HR\";i:6;s:2:\"CH\";i:7;s:2:\"CY\";i:8;s:2:\"CZ\";i:9;s:2:\"DK\";i:10;s:2:\"EE\";i:11;s:2:\"ES\";i:12;s:2:\"FI\";i:13;s:2:\"FR\";i:14;s:2:\"DE\";i:15;s:2:\"GB\";i:16;s:2:\"GR\";i:17;s:2:\"HU\";i:18;s:2:\"IE\";i:19;s:2:\"IT\";i:20;s:2:\"LV\";i:21;s:2:\"LT\";i:22;s:2:\"LU\";i:23;s:2:\"MT\";i:24;s:2:\"NL\";i:25;s:2:\"NO\";i:26;s:2:\"PL\";i:27;s:2:\"PT\";i:28;s:2:\"RO\";i:29;s:2:\"SK\";i:30;s:2:\"SL\";i:31;s:2:\"SE\";i:32;s:2:\"MX\";i:33;s:2:\"BR\";i:34;s:2:\"AR\";i:35;s:2:\"CL\";i:36;s:2:\"CO\";i:37;s:2:\"EC\";i:38;s:2:\"PE\";i:39;s:2:\"UY\";i:40;s:2:\"VE\";i:41;s:2:\"AU\";i:42;s:2:\"NZ\";i:43;s:2:\"HK\";i:44;s:2:\"JP\";i:45;s:2:\"SG\";i:46;s:2:\"CN\";i:47;s:2:\"ID\";i:48;s:2:\"ZA\";i:49;s:2:\"NG\";i:50;s:2:\"GH\";}s:19:\"category_additional\";a:52:{i:0;s:2:\"US\";i:1;s:2:\"CA\";i:2;s:2:\"AT\";i:3;s:2:\"BE\";i:4;s:2:\"BG\";i:5;s:2:\"HR\";i:6;s:2:\"CH\";i:7;s:2:\"CY\";i:8;s:2:\"CZ\";i:9;s:2:\"DK\";i:10;s:2:\"EE\";i:11;s:2:\"ES\";i:12;s:2:\"FI\";i:13;s:2:\"FR\";i:14;s:2:\"DE\";i:15;s:2:\"GB\";i:16;s:2:\"GR\";i:17;s:2:\"HU\";i:18;s:2:\"IE\";i:19;s:2:\"IT\";i:20;s:2:\"LV\";i:21;s:2:\"LT\";i:22;s:2:\"LU\";i:23;s:2:\"MT\";i:24;s:2:\"NL\";i:25;s:2:\"NO\";i:26;s:2:\"PL\";i:27;s:2:\"PT\";i:28;s:2:\"RO\";i:29;s:2:\"SK\";i:30;s:2:\"SL\";i:31;s:2:\"SE\";i:32;s:2:\"MX\";i:33;s:2:\"BR\";i:34;s:2:\"AR\";i:35;s:2:\"CL\";i:36;s:2:\"CO\";i:37;s:2:\"EC\";i:38;s:2:\"PE\";i:39;s:2:\"UY\";i:40;s:2:\"VE\";i:41;s:2:\"AU\";i:42;s:2:\"NZ\";i:43;s:2:\"HK\";i:44;s:2:\"JP\";i:45;s:2:\"SG\";i:46;s:2:\"CN\";i:47;s:2:\"ID\";i:48;s:2:\"IN\";i:49;s:2:\"ZA\";i:50;s:2:\"NG\";i:51;s:2:\"GH\";}}s:3:\"cod\";O:8:\"stdClass\":7:{s:2:\"id\";s:3:\"cod\";s:5:\"title\";s:8:\"Dobierka\";s:7:\"content\";s:30:\"Prijímať platby na dobierku.\";s:5:\"image\";s:99:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/cod.svg\";s:11:\"image_72x72\";s:105:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/cod.png\";s:10:\"is_visible\";a:1:{i:0;O:8:\"stdClass\":1:{s:4:\"type\";s:4:\"pass\";}}s:10:\"is_offline\";b:1;}s:4:\"bacs\";O:8:\"stdClass\":7:{s:2:\"id\";s:4:\"bacs\";s:5:\"title\";s:22:\"Priamy vklad na účet\";s:7:\"content\";s:37:\"Prijímať platby bankovým prevodom.\";s:5:\"image\";s:100:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/bacs.svg\";s:11:\"image_72x72\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/bacs.png\";s:10:\"is_visible\";a:1:{i:0;O:8:\"stdClass\":1:{s:4:\"type\";s:4:\"pass\";}}s:10:\"is_offline\";b:1;}s:20:\"woocommerce_payments\";O:8:\"stdClass\":10:{s:2:\"id\";s:20:\"woocommerce_payments\";s:5:\"title\";s:18:\"WooCommerce Platby\";s:7:\"content\";s:93:\"Manage transactions without leaving your WordPress Dashboard. Only with WooCommerce Payments.\";s:5:\"image\";s:101:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/wcpay.svg\";s:12:\"square_image\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/woocommerce.svg\";s:11:\"image_72x72\";s:101:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/wcpay.svg\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-payments\";}s:11:\"description\";s:234:\"With WooCommerce Payments, you can securely accept major cards, Apple Pay, and payments in over 100 currencies. Track cash flow and manage recurring revenue directly from your store’s dashboard - with no setup costs or monthly fees.\";s:10:\"is_visible\";a:4:{i:0;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:19:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PR\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AU\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DE\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ES\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FR\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GB\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IE\";s:9:\"operation\";s:1:\"=\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IT\";s:9:\"operation\";s:1:\"=\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NZ\";s:9:\"operation\";s:1:\"=\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AT\";s:9:\"operation\";s:1:\"=\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BE\";s:9:\"operation\";s:1:\"=\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NL\";s:9:\"operation\";s:1:\"=\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PL\";s:9:\"operation\";s:1:\"=\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PT\";s:9:\"operation\";s:1:\"=\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CH\";s:9:\"operation\";s:1:\"=\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"HK\";s:9:\"operation\";s:1:\"=\";}i:18;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SG\";s:9:\"operation\";s:1:\"=\";}}}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:7:\"version\";s:10:\"5.10.0-dev\";s:8:\"operator\";s:1:\"<\";}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";O:8:\"stdClass\":2:{s:1:\"0\";O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:17:\"woocommerce-admin\";}}}}s:1:\"1\";O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:17:\"woocommerce-admin\";s:7:\"version\";s:9:\"2.9.0-dev\";s:8:\"operator\";s:1:\"<\";}}}}s:23:\"recommendation_priority\";i:1;}s:47:\"woocommerce_payments:without-in-person-payments\";O:8:\"stdClass\":10:{s:2:\"id\";s:47:\"woocommerce_payments:without-in-person-payments\";s:5:\"title\";s:18:\"WooCommerce Platby\";s:7:\"content\";s:93:\"Manage transactions without leaving your WordPress Dashboard. Only with WooCommerce Payments.\";s:5:\"image\";s:101:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/wcpay.svg\";s:11:\"image_72x72\";s:101:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/wcpay.svg\";s:12:\"square_image\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/woocommerce.svg\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-payments\";}s:11:\"description\";s:234:\"With WooCommerce Payments, you can securely accept major cards, Apple Pay, and payments in over 100 currencies. Track cash flow and manage recurring revenue directly from your store’s dashboard - with no setup costs or monthly fees.\";s:10:\"is_visible\";a:3:{i:0;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:17:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PR\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AU\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DE\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ES\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FR\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GB\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IE\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IT\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NZ\";s:9:\"operation\";s:1:\"=\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AT\";s:9:\"operation\";s:1:\"=\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BE\";s:9:\"operation\";s:1:\"=\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NL\";s:9:\"operation\";s:1:\"=\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PL\";s:9:\"operation\";s:1:\"=\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PT\";s:9:\"operation\";s:1:\"=\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CH\";s:9:\"operation\";s:1:\"=\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"HK\";s:9:\"operation\";s:1:\"=\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SG\";s:9:\"operation\";s:1:\"=\";}}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";O:8:\"stdClass\":2:{s:1:\"0\";O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:17:\"woocommerce-admin\";s:7:\"version\";s:9:\"2.9.0-dev\";s:8:\"operator\";s:2:\">=\";}s:1:\"1\";O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:7:\"version\";s:10:\"5.10.0-dev\";s:8:\"operator\";s:2:\">=\";}}}}s:23:\"recommendation_priority\";i:1;}s:44:\"woocommerce_payments:with-in-person-payments\";O:8:\"stdClass\":10:{s:2:\"id\";s:44:\"woocommerce_payments:with-in-person-payments\";s:5:\"title\";s:18:\"WooCommerce Platby\";s:7:\"content\";s:93:\"Manage transactions without leaving your WordPress Dashboard. Only with WooCommerce Payments.\";s:5:\"image\";s:101:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/wcpay.svg\";s:11:\"image_72x72\";s:101:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/wcpay.svg\";s:12:\"square_image\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/woocommerce.svg\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-payments\";}s:11:\"description\";s:221:\"With WooCommerce Payments, you can securely accept major cards, Apple Pay, and payments in over 100 currencies – with no setup costs or monthly fees – and you can now accept in-person payments with the Woo mobile app.\";s:10:\"is_visible\";a:3:{i:0;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:2:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";O:8:\"stdClass\":2:{s:1:\"0\";O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:17:\"woocommerce-admin\";s:7:\"version\";s:9:\"2.9.0-dev\";s:8:\"operator\";s:2:\">=\";}s:1:\"1\";O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:7:\"version\";s:10:\"5.10.0-dev\";s:8:\"operator\";s:2:\">=\";}}}}s:23:\"recommendation_priority\";i:1;}s:8:\"razorpay\";O:8:\"stdClass\":9:{s:2:\"id\";s:8:\"razorpay\";s:5:\"title\";s:8:\"Razorpay\";s:7:\"content\";s:158:\"Oficiálne rozšírenie Razorpay pre WooCommerce vám umožňuje prijímať platby kreditnými kartami, debetnými kartami, netbankingom, peňaženkami a UPI.\";s:5:\"image\";s:104:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/razorpay.svg\";s:11:\"image_72x72\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/razorpay.png\";s:7:\"plugins\";a:1:{i:0;s:12:\"woo-razorpay\";}s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IN\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}}s:14:\"category_other\";a:1:{i:0;s:2:\"IN\";}s:19:\"category_additional\";a:0:{}}s:7:\"payubiz\";O:8:\"stdClass\":9:{s:2:\"id\";s:7:\"payubiz\";s:5:\"title\";s:20:\"PayU for WooCommerce\";s:7:\"content\";s:169:\"Enable PayU’s exclusive plugin for WooCommerce to start accepting payments in 100+ payment methods available in India including credit cards, debit cards, UPI, & more!\";s:5:\"image\";s:100:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/payu.svg\";s:11:\"image_72x72\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/payu.png\";s:7:\"plugins\";a:1:{i:0;s:10:\"payu-india\";}s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IN\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}}s:14:\"category_other\";a:1:{i:0;s:2:\"IN\";}s:19:\"category_additional\";a:0:{}}s:4:\"eway\";O:8:\"stdClass\":10:{s:2:\"id\";s:4:\"eway\";s:5:\"title\";s:4:\"Eway\";s:7:\"content\";s:171:\"The Eway extension for WooCommerce allows you to take credit card payments directly on your store without redirecting your customers to a third party site to make payment.\";s:5:\"image\";s:100:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/eway.png\";s:11:\"image_72x72\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/eway.png\";s:12:\"square_image\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/eway-square.png\";s:7:\"plugins\";a:1:{i:0;s:24:\"woocommerce-gateway-eway\";}s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:2:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AU\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NZ\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}}s:14:\"category_other\";a:2:{i:0;s:2:\"AU\";i:1;s:2:\"NZ\";}s:19:\"category_additional\";a:0:{}}s:18:\"square_credit_card\";O:8:\"stdClass\":9:{s:2:\"id\";s:18:\"square_credit_card\";s:5:\"title\";s:6:\"Square\";s:7:\"content\";s:225:\"Bezpečne prijímajte kreditné a debetné karty s nízkou sadzbou, bez akýchkoľvek prekvapivých poplatkov (k dispozícii sú vlastné sadzby). Predávajte online a v obchode a sledujte predaj a inventár na jednom mieste.\";s:5:\"image\";s:85:\"https://woocommerce.com/wp-content/plugins/woocommerce/assets/images/square-black.png\";s:11:\"image_72x72\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/square.png\";s:7:\"plugins\";a:1:{i:0;s:18:\"woocommerce-square\";}s:10:\"is_visible\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";O:8:\"stdClass\":2:{s:1:\"0\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:1:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:8:\"contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}}s:1:\"1\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:9:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"JP\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GB\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AU\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IE\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FR\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ES\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FI\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:2:{i:0;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:1:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:14:\"selling_venues\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:12:\"brick-mortar\";}i:1;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:1:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:14:\"selling_venues\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:18:\"brick-mortar-other\";}}}}}}}s:14:\"category_other\";a:9:{i:0;s:2:\"US\";i:1;s:2:\"CA\";i:2;s:2:\"JP\";i:3;s:2:\"GB\";i:4;s:2:\"AU\";i:5;s:2:\"IE\";i:6;s:2:\"FR\";i:7;s:2:\"ES\";i:8;s:2:\"FI\";}s:19:\"category_additional\";a:0:{}}s:8:\"afterpay\";O:8:\"stdClass\":9:{s:2:\"id\";s:8:\"afterpay\";s:5:\"title\";s:8:\"Afterpay\";s:7:\"content\";s:125:\"Afterpay allows customers to receive products immediately and pay for purchases over four installments, always interest-free.\";s:5:\"image\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/afterpay.png\";s:11:\"image_72x72\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/afterpay.png\";s:7:\"plugins\";a:1:{i:0;s:32:\"afterpay-gateway-for-woocommerce\";}s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:2:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:7:\"version\";s:9:\"6.5.0-dev\";s:8:\"operator\";s:2:\">=\";}}s:14:\"category_other\";a:0:{}s:19:\"category_additional\";a:2:{i:0;s:2:\"US\";i:1;s:2:\"CA\";}}s:24:\"amazon_payments_advanced\";O:8:\"stdClass\":9:{s:2:\"id\";s:24:\"amazon_payments_advanced\";s:5:\"title\";s:10:\"Amazon Pay\";s:7:\"content\";s:94:\"Enable a familiar, fast checkout for hundreds of millions of active Amazon customers globally.\";s:5:\"image\";s:111:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/amazonpay.png\";s:11:\"image_72x72\";s:111:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/amazonpay.png\";s:7:\"plugins\";a:1:{i:0;s:44:\"woocommerce-gateway-amazon-payments-advanced\";}s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:2:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:7:\"version\";s:9:\"6.5.0-dev\";s:8:\"operator\";s:2:\">=\";}}s:14:\"category_other\";a:0:{}s:19:\"category_additional\";a:2:{i:0;s:2:\"US\";i:1;s:2:\"CA\";}}s:6:\"affirm\";O:8:\"stdClass\":10:{s:2:\"id\";s:6:\"affirm\";s:5:\"title\";s:6:\"Affirm\";s:7:\"content\";s:169:\"Affirm’s tailored Buy Now Pay Later programs remove price as a barrier, turning browsers into buyers, increasing average order value, and expanding your customer base.\";s:5:\"image\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/affirm.png\";s:11:\"image_72x72\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/affirm.png\";s:7:\"plugins\";a:0:{}s:13:\"external_link\";s:59:\"https://woocommerce.com/products/woocommerce-gateway-affirm\";s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:2:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:7:\"version\";s:9:\"6.5.0-dev\";s:8:\"operator\";s:2:\">=\";}}s:14:\"category_other\";a:0:{}s:19:\"category_additional\";a:2:{i:0;s:2:\"US\";i:1;s:2:\"CA\";}}}}', 'no'),
(2291, '_transient_timeout_wc_report_products_stats_24e6da21840098f03f2d59a85b53ea02', '1666726793', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(2292, '_transient_wc_report_products_stats_24e6da21840098f03f2d59a85b53ea02', 'a:2:{s:7:\"version\";s:10:\"1666121916\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:3;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:18:{i:0;a:6:{s:8:\"interval\";s:10:\"2022-10-01\";s:10:\"date_start\";s:19:\"2022-10-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-09-30 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-01 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:10:\"2022-10-02\";s:10:\"date_start\";s:19:\"2022-10-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-01 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-02 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:10:\"2022-10-03\";s:10:\"date_start\";s:19:\"2022-10-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-02 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-03 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:10:\"2022-10-04\";s:10:\"date_start\";s:19:\"2022-10-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-03 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-04 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:10:\"2022-10-05\";s:10:\"date_start\";s:19:\"2022-10-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-04 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-05 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:5;a:6:{s:8:\"interval\";s:10:\"2022-10-06\";s:10:\"date_start\";s:19:\"2022-10-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-05 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-06 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:6;a:6:{s:8:\"interval\";s:10:\"2022-10-07\";s:10:\"date_start\";s:19:\"2022-10-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-06 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-07 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:7;a:6:{s:8:\"interval\";s:10:\"2022-10-08\";s:10:\"date_start\";s:19:\"2022-10-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-07 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-08 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:8;a:6:{s:8:\"interval\";s:10:\"2022-10-09\";s:10:\"date_start\";s:19:\"2022-10-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-08 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-09 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:9;a:6:{s:8:\"interval\";s:10:\"2022-10-10\";s:10:\"date_start\";s:19:\"2022-10-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-09 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-10 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:10;a:6:{s:8:\"interval\";s:10:\"2022-10-11\";s:10:\"date_start\";s:19:\"2022-10-11 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-10 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-11 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-11 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:11;a:6:{s:8:\"interval\";s:10:\"2022-10-12\";s:10:\"date_start\";s:19:\"2022-10-12 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-11 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-12 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-12 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:12;a:6:{s:8:\"interval\";s:10:\"2022-10-13\";s:10:\"date_start\";s:19:\"2022-10-13 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-12 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-13 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-13 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:13;a:6:{s:8:\"interval\";s:10:\"2022-10-14\";s:10:\"date_start\";s:19:\"2022-10-14 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-13 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-14 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-14 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:14;a:6:{s:8:\"interval\";s:10:\"2022-10-15\";s:10:\"date_start\";s:19:\"2022-10-15 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-14 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-15 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-15 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:15;a:6:{s:8:\"interval\";s:10:\"2022-10-16\";s:10:\"date_start\";s:19:\"2022-10-16 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-15 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-16 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-16 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:16;a:6:{s:8:\"interval\";s:10:\"2022-10-17\";s:10:\"date_start\";s:19:\"2022-10-17 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-16 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-17 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-17 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:17;a:6:{s:8:\"interval\";s:10:\"2022-10-18\";s:10:\"date_start\";s:19:\"2022-10-18 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-17 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-18 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-18 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:3;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:18;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(2383, '_transient_timeout_wc_report_orders_stats_e558ce2fe3827be8b1af87029731e8eb', '1666805010', 'no'),
(2384, '_transient_wc_report_orders_stats_e558ce2fe3827be8b1af87029731e8eb', 'a:2:{s:7:\"version\";s:10:\"1666122148\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:4:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-42\";s:10:\"date_start\";s:19:\"2022-10-17 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-16 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-19 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-19 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2022-41\";s:10:\"date_start\";s:19:\"2022-10-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-09 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-16 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-16 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:7:\"2022-40\";s:10:\"date_start\";s:19:\"2022-10-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-02 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-09 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:7:\"2022-39\";s:10:\"date_start\";s:19:\"2022-10-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-09-30 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-02 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:4;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(2385, '_transient_timeout_wc_report_orders_stats_ab94c2ed0ceadabde1daf087d8f7993d', '1666805010', 'no'),
(2386, '_transient_wc_report_orders_stats_ab94c2ed0ceadabde1daf087d8f7993d', 'a:2:{s:7:\"version\";s:10:\"1666122148\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:4:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-42\";s:10:\"date_start\";s:19:\"2022-10-17 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-16 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-19 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-19 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2022-41\";s:10:\"date_start\";s:19:\"2022-10-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-09 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-16 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-16 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:7:\"2022-40\";s:10:\"date_start\";s:19:\"2022-10-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-02 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-09 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:7:\"2022-39\";s:10:\"date_start\";s:19:\"2022-10-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-09-30 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-02 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:4;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(2387, '_transient_timeout_wc_report_products_stats_99cdd7135ae0056aecf20d2da32741d0', '1666805010', 'no'),
(2388, '_transient_wc_report_products_stats_99cdd7135ae0056aecf20d2da32741d0', 'a:2:{s:7:\"version\";s:10:\"1666122148\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":6:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:14:\"products_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:4:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-42\";s:10:\"date_start\";s:19:\"2022-10-17 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-16 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-19 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-19 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:14:\"products_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2022-41\";s:10:\"date_start\";s:19:\"2022-10-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-09 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-16 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-16 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:14:\"products_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:7:\"2022-40\";s:10:\"date_start\";s:19:\"2022-10-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-02 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-09 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:14:\"products_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:7:\"2022-39\";s:10:\"date_start\";s:19:\"2022-10-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-09-30 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-02 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:14:\"products_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:4;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(2389, '_transient_timeout_wc_report_variations_stats_2b24285240001f2c0766df75bfdf9dea', '1666805010', 'no'),
(2390, '_transient_wc_report_variations_stats_2b24285240001f2c0766df75bfdf9dea', 'a:2:{s:7:\"version\";s:10:\"1666122148\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":5:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:4:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-42\";s:10:\"date_start\";s:19:\"2022-10-17 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-16 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-19 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-19 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":5:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2022-41\";s:10:\"date_start\";s:19:\"2022-10-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-09 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-16 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-16 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":5:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:7:\"2022-40\";s:10:\"date_start\";s:19:\"2022-10-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-02 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-09 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":5:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:7:\"2022-39\";s:10:\"date_start\";s:19:\"2022-10-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-09-30 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-02 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":5:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:4;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(2391, '_transient_timeout_wc_report_orders_stats_b516ac0a634a024400e1dc7e2067d6a8', '1666805010', 'no'),
(2392, '_transient_wc_report_orders_stats_b516ac0a634a024400e1dc7e2067d6a8', 'a:2:{s:7:\"version\";s:10:\"1666122148\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":4:{s:11:\"net_revenue\";d:0;s:8:\"products\";i:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:19:{i:0;a:6:{s:8:\"interval\";s:10:\"2022-10-01\";s:10:\"date_start\";s:19:\"2022-10-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-09-30 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-01 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:10:\"2022-10-02\";s:10:\"date_start\";s:19:\"2022-10-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-01 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-02 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:10:\"2022-10-03\";s:10:\"date_start\";s:19:\"2022-10-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-02 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-03 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:10:\"2022-10-04\";s:10:\"date_start\";s:19:\"2022-10-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-03 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-04 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:10:\"2022-10-05\";s:10:\"date_start\";s:19:\"2022-10-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-04 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-05 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:5;a:6:{s:8:\"interval\";s:10:\"2022-10-06\";s:10:\"date_start\";s:19:\"2022-10-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-05 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-06 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:6;a:6:{s:8:\"interval\";s:10:\"2022-10-07\";s:10:\"date_start\";s:19:\"2022-10-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-06 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-07 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:7;a:6:{s:8:\"interval\";s:10:\"2022-10-08\";s:10:\"date_start\";s:19:\"2022-10-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-07 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-08 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:8;a:6:{s:8:\"interval\";s:10:\"2022-10-09\";s:10:\"date_start\";s:19:\"2022-10-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-08 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-09 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:9;a:6:{s:8:\"interval\";s:10:\"2022-10-10\";s:10:\"date_start\";s:19:\"2022-10-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-09 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-10 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:10;a:6:{s:8:\"interval\";s:10:\"2022-10-11\";s:10:\"date_start\";s:19:\"2022-10-11 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-10 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-11 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-11 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:11;a:6:{s:8:\"interval\";s:10:\"2022-10-12\";s:10:\"date_start\";s:19:\"2022-10-12 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-11 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-12 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-12 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:12;a:6:{s:8:\"interval\";s:10:\"2022-10-13\";s:10:\"date_start\";s:19:\"2022-10-13 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-12 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-13 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-13 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:13;a:6:{s:8:\"interval\";s:10:\"2022-10-14\";s:10:\"date_start\";s:19:\"2022-10-14 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-13 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-14 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-14 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:14;a:6:{s:8:\"interval\";s:10:\"2022-10-15\";s:10:\"date_start\";s:19:\"2022-10-15 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-14 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-15 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-15 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:15;a:6:{s:8:\"interval\";s:10:\"2022-10-16\";s:10:\"date_start\";s:19:\"2022-10-16 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-15 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-16 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-16 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:16;a:6:{s:8:\"interval\";s:10:\"2022-10-17\";s:10:\"date_start\";s:19:\"2022-10-17 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-16 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-17 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-17 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:17;a:6:{s:8:\"interval\";s:10:\"2022-10-18\";s:10:\"date_start\";s:19:\"2022-10-18 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-17 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-18 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-18 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:18;a:6:{s:8:\"interval\";s:10:\"2022-10-19\";s:10:\"date_start\";s:19:\"2022-10-19 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-18 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-19 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-19 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:19;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(2494, '_site_transient_timeout_php_check_26328e95a1a09d326a615e4b43668741', '1666809666', 'no'),
(2495, '_site_transient_php_check_26328e95a1a09d326a615e4b43668741', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(2675, '_transient_timeout_woocommerce_admin_remote_free_extensions_specs', '1667045245', 'no'),
(2676, '_transient_woocommerce_admin_remote_free_extensions_specs', 'a:1:{s:5:\"sk_SK\";a:4:{s:10:\"obw/basics\";O:8:\"stdClass\":3:{s:3:\"key\";s:10:\"obw/basics\";s:5:\"title\";s:32:\"Získajte základné informácie\";s:7:\"plugins\";a:4:{i:0;O:8:\"stdClass\":4:{s:11:\"description\";s:163:\"Accept credit cards and other popular payment methods with <a href=\"https://woocommerce.com/products/woocommerce-payments\" target=\"_blank\">WooCommerce Payments</a>\";s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:19:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PR\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AU\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DE\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ES\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FR\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GB\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IE\";s:9:\"operation\";s:1:\"=\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IT\";s:9:\"operation\";s:1:\"=\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NZ\";s:9:\"operation\";s:1:\"=\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AT\";s:9:\"operation\";s:1:\"=\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BE\";s:9:\"operation\";s:1:\"=\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NL\";s:9:\"operation\";s:1:\"=\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PL\";s:9:\"operation\";s:1:\"=\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PT\";s:9:\"operation\";s:1:\"=\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CH\";s:9:\"operation\";s:1:\"=\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"HK\";s:9:\"operation\";s:1:\"=\";}i:18;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SG\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}}s:14:\"is_built_by_wc\";b:1;s:3:\"key\";s:20:\"woocommerce-payments\";}i:1;O:8:\"stdClass\":4:{s:11:\"description\";s:119:\"Print shipping labels with <a href=\"https://woocommerce.com/products/shipping\" target=\"_blank\">WooCommerce Shipping</a>\";s:10:\"is_visible\";a:3:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-services\";}}}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:2:{i:0;a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:13:\"product_types\";}}i:1;O:8:\"stdClass\":1:{s:3:\"use\";s:5:\"count\";}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:5:\"value\";i:1;s:7:\"default\";a:0:{}s:9:\"operation\";s:2:\"!=\";}}i:1;a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:1:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:15:\"product_types.0\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:5:\"value\";s:9:\"downloads\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:2:\"!=\";}}}}}s:14:\"is_built_by_wc\";b:1;s:3:\"key\";s:29:\"woocommerce-services:shipping\";}i:2;O:8:\"stdClass\":4:{s:11:\"description\";s:111:\"Get automated sales tax with <a href=\"https://woocommerce.com/products/tax\" target=\"_blank\">WooCommerce Tax</a>\";s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:11:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FR\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GB\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DE\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AU\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GR\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BE\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PT\";s:9:\"operation\";s:1:\"=\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DK\";s:9:\"operation\";s:1:\"=\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SE\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-services\";}}}}}s:14:\"is_built_by_wc\";b:1;s:3:\"key\";s:24:\"woocommerce-services:tax\";}i:3;O:8:\"stdClass\":4:{s:11:\"description\";s:110:\"Enhance speed and security with <a href=\"https://woocommerce.com/products/jetpack\" target=\"_blank\">Jetpack</a>\";s:10:\"is_visible\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:7:\"jetpack\";}}}}}s:14:\"is_built_by_wc\";b:0;s:3:\"key\";s:7:\"jetpack\";}}}s:8:\"obw/grow\";O:8:\"stdClass\":3:{s:3:\"key\";s:8:\"obw/grow\";s:5:\"title\";s:15:\"Grow your store\";s:7:\"plugins\";a:3:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:8:\"MailPoet\";s:11:\"description\";s:115:\"Level up your email marketing with <a href=\"https://woocommerce.com/products/mailpoet\" target=\"_blank\">MailPoet</a>\";s:10:\"manage_url\";s:35:\"admin.php?page=mailpoet-newsletters\";s:10:\"is_visible\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:8:\"mailpoet\";}}}}}s:14:\"is_built_by_wc\";b:1;s:3:\"key\";s:8:\"mailpoet\";}i:1;O:8:\"stdClass\":7:{s:4:\"name\";s:21:\"Google Listings & Ads\";s:11:\"description\";s:127:\"Drive sales with <a href=\"https://woocommerce.com/products/google-listings-and-ads\" target=\"_blank\">Google Listings and Ads</a>\";s:9:\"image_url\";s:111:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/google-listings-and-ads.png\";s:10:\"manage_url\";s:46:\"admin.php?page=wc-admin&path=%2Fgoogle%2Fstart\";s:10:\"is_visible\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:23:\"google-listings-and-ads\";}}}}}s:14:\"is_built_by_wc\";b:1;s:3:\"key\";s:23:\"google-listings-and-ads\";}i:2;O:8:\"stdClass\":6:{s:4:\"name\";s:24:\"Facebook pre WooCommerce\";s:11:\"description\";s:141:\"List products and create ads on Facebook and Instagram with <a href=\"https://woocommerce.com/products/facebook/\">Facebook for WooCommerce</a>\";s:9:\"image_url\";s:96:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/facebook.png\";s:10:\"manage_url\";s:26:\"admin.php?page=wc-facebook\";s:14:\"is_built_by_wc\";b:0;s:3:\"key\";s:24:\"facebook-for-woocommerce\";}}}s:15:\"task-list/reach\";O:8:\"stdClass\":3:{s:3:\"key\";s:15:\"task-list/reach\";s:5:\"title\";s:22:\"Reach out to customers\";s:7:\"plugins\";a:3:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:8:\"MailPoet\";s:11:\"description\";s:111:\"Create and send purchase follow-up emails, newsletters, and promotional campaigns straight from your dashboard.\";s:9:\"image_url\";s:96:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/mailpoet.png\";s:10:\"manage_url\";s:35:\"admin.php?page=mailpoet-newsletters\";s:14:\"is_built_by_wc\";b:1;s:3:\"key\";s:12:\"mailpoet:alt\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:9:\"MailChimp\";s:11:\"description\";s:84:\"Odosielajte cielené kampane, obnovte opustené košíky a mnoho iného s Mailchimp.\";s:9:\"image_url\";s:113:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/mailchimp-for-woocommerce.png\";s:10:\"manage_url\";s:36:\"admin.php?page=mailchimp-woocommerce\";s:14:\"is_built_by_wc\";b:0;s:3:\"key\";s:25:\"mailchimp-for-woocommerce\";}i:2;O:8:\"stdClass\":6:{s:4:\"name\";s:29:\"Creative Mail for WooCommerce\";s:11:\"description\";s:99:\"Create on-brand store campaigns, fast email promotions and customer retargeting with Creative Mail.\";s:9:\"image_url\";s:121:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/creative-mail-by-constant-contact.png\";s:10:\"manage_url\";s:27:\"admin.php?page=creativemail\";s:14:\"is_built_by_wc\";b:0;s:3:\"key\";s:33:\"creative-mail-by-constant-contact\";}}}s:14:\"task-list/grow\";O:8:\"stdClass\":3:{s:3:\"key\";s:14:\"task-list/grow\";s:5:\"title\";s:15:\"Grow your store\";s:7:\"plugins\";a:4:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:21:\"Google Listings & Ads\";s:11:\"description\";s:134:\"Reach more shoppers and drive sales for your store. Integrate with Google to list your products for free and launch paid ad campaigns.\";s:9:\"image_url\";s:111:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/google-listings-and-ads.png\";s:10:\"manage_url\";s:46:\"admin.php?page=wc-admin&path=%2Fgoogle%2Fstart\";s:14:\"is_built_by_wc\";b:1;s:3:\"key\";s:27:\"google-listings-and-ads:alt\";}i:1;O:8:\"stdClass\":7:{s:4:\"name\";s:22:\"TikTok for WooCommerce\";s:9:\"image_url\";s:94:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/tiktok.svg\";s:11:\"description\";s:118:\"Grow your online sales by promoting your products on TikTok to over one billion monthly active users around the world.\";s:10:\"manage_url\";s:21:\"admin.php?page=tiktok\";s:10:\"is_visible\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:40:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"MX\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AT\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BE\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CZ\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DK\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FI\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FR\";s:9:\"operation\";s:1:\"=\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DE\";s:9:\"operation\";s:1:\"=\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GR\";s:9:\"operation\";s:1:\"=\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"HU\";s:9:\"operation\";s:1:\"=\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IE\";s:9:\"operation\";s:1:\"=\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IT\";s:9:\"operation\";s:1:\"=\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NL\";s:9:\"operation\";s:1:\"=\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PL\";s:9:\"operation\";s:1:\"=\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PT\";s:9:\"operation\";s:1:\"=\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"RO\";s:9:\"operation\";s:1:\"=\";}i:18;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ES\";s:9:\"operation\";s:1:\"=\";}i:19;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SE\";s:9:\"operation\";s:1:\"=\";}i:20;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GB\";s:9:\"operation\";s:1:\"=\";}i:21;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CH\";s:9:\"operation\";s:1:\"=\";}i:22;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NO\";s:9:\"operation\";s:1:\"=\";}i:23;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AU\";s:9:\"operation\";s:1:\"=\";}i:24;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NZ\";s:9:\"operation\";s:1:\"=\";}i:25;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SG\";s:9:\"operation\";s:1:\"=\";}i:26;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"MY\";s:9:\"operation\";s:1:\"=\";}i:27;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PH\";s:9:\"operation\";s:1:\"=\";}i:28;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ID\";s:9:\"operation\";s:1:\"=\";}i:29;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"VN\";s:9:\"operation\";s:1:\"=\";}i:30;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"TH\";s:9:\"operation\";s:1:\"=\";}i:31;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"KR\";s:9:\"operation\";s:1:\"=\";}i:32;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IL\";s:9:\"operation\";s:1:\"=\";}i:33;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AE\";s:9:\"operation\";s:1:\"=\";}i:34;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"RU\";s:9:\"operation\";s:1:\"=\";}i:35;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"UA\";s:9:\"operation\";s:1:\"=\";}i:36;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"TR\";s:9:\"operation\";s:1:\"=\";}i:37;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SA\";s:9:\"operation\";s:1:\"=\";}i:38;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BR\";s:9:\"operation\";s:1:\"=\";}i:39;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"JP\";s:9:\"operation\";s:1:\"=\";}}}}s:14:\"is_built_by_wc\";b:0;s:3:\"key\";s:19:\"tiktok-for-business\";}i:2;O:8:\"stdClass\":6:{s:4:\"name\";s:24:\"Facebook pre WooCommerce\";s:11:\"description\";s:55:\"List products and create ads on Facebook and Instagram.\";s:9:\"image_url\";s:96:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/facebook.png\";s:10:\"manage_url\";s:26:\"admin.php?page=wc-facebook\";s:14:\"is_built_by_wc\";b:0;s:3:\"key\";s:28:\"facebook-for-woocommerce:alt\";}i:3;O:8:\"stdClass\":6:{s:4:\"name\";s:25:\"Pinterest for WooCommerce\";s:11:\"description\";s:159:\"Get your products in front of Pinterest users searching for ideas and things to buy. Get started with Pinterest and make your entire product catalog browsable.\";s:9:\"image_url\";s:97:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/pinterest.png\";s:10:\"manage_url\";s:51:\"admin.php?page=wc-admin&path=%2Fpinterest%2Flanding\";s:14:\"is_built_by_wc\";b:1;s:3:\"key\";s:25:\"pinterest-for-woocommerce\";}}}}}', 'no'),
(2677, '_site_transient_timeout_browser_acff52a1652901ae7e446fb41b9189b7', '1667045246', 'no'),
(2678, '_site_transient_browser_acff52a1652901ae7e446fb41b9189b7', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"106.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(2679, '_transient_timeout_wc_report_orders_stats_5e51a3a493328afffadfbc21f620f306', '1667072993', 'no'),
(2680, '_transient_wc_report_orders_stats_5e51a3a493328afffadfbc21f620f306', 'a:2:{s:7:\"version\";s:10:\"1666468180\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:2;s:14:\"num_items_sold\";i:2;s:11:\"gross_sales\";d:579.89;s:11:\"total_sales\";d:579.89;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:579.89;s:19:\"avg_items_per_order\";d:1;s:15:\"avg_order_value\";d:289.945;s:15:\"total_customers\";i:1;s:8:\"products\";i:2;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:4:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-42\";s:10:\"date_start\";s:19:\"2022-10-17 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-16 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-22 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-22 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:2;s:14:\"num_items_sold\";i:2;s:11:\"gross_sales\";d:579.89;s:11:\"total_sales\";d:579.89;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:579.89;s:19:\"avg_items_per_order\";d:1;s:15:\"avg_order_value\";d:289.945;s:15:\"total_customers\";i:1;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2022-41\";s:10:\"date_start\";s:19:\"2022-10-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-09 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-16 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-16 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:7:\"2022-40\";s:10:\"date_start\";s:19:\"2022-10-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-02 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-09 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:7:\"2022-39\";s:10:\"date_start\";s:19:\"2022-10-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-09-30 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-02 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:4;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(2681, '_transient_timeout_wc_report_orders_stats_e6fabfbe0c2c739303873fed5b8c537e', '1667072993', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(2682, '_transient_wc_report_orders_stats_e6fabfbe0c2c739303873fed5b8c537e', 'a:2:{s:7:\"version\";s:10:\"1666468180\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:2;s:14:\"num_items_sold\";i:2;s:11:\"gross_sales\";d:579.89;s:11:\"total_sales\";d:579.89;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:579.89;s:19:\"avg_items_per_order\";d:1;s:15:\"avg_order_value\";d:289.945;s:15:\"total_customers\";i:1;s:8:\"products\";i:2;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:4:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-42\";s:10:\"date_start\";s:19:\"2022-10-17 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-16 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-22 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-22 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:2;s:14:\"num_items_sold\";i:2;s:11:\"gross_sales\";d:579.89;s:11:\"total_sales\";d:579.89;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:579.89;s:19:\"avg_items_per_order\";d:1;s:15:\"avg_order_value\";d:289.945;s:15:\"total_customers\";i:1;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2022-41\";s:10:\"date_start\";s:19:\"2022-10-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-09 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-16 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-16 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:7:\"2022-40\";s:10:\"date_start\";s:19:\"2022-10-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-02 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-09 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:7:\"2022-39\";s:10:\"date_start\";s:19:\"2022-10-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-09-30 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-02 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:4;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(2683, '_transient_timeout_wc_report_products_stats_2e5b495abc7946f5f06a99a58297768c', '1667072993', 'no'),
(2684, '_transient_wc_report_products_stats_2e5b495abc7946f5f06a99a58297768c', 'a:2:{s:7:\"version\";s:10:\"1666468180\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":6:{s:10:\"items_sold\";i:2;s:11:\"net_revenue\";d:579.89;s:12:\"orders_count\";i:2;s:14:\"products_count\";i:2;s:16:\"variations_count\";i:1;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:4:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-42\";s:10:\"date_start\";s:19:\"2022-10-17 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-16 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-22 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-22 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:10:\"items_sold\";i:2;s:11:\"net_revenue\";d:579.89;s:12:\"orders_count\";i:2;s:14:\"products_count\";i:2;s:16:\"variations_count\";i:1;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2022-41\";s:10:\"date_start\";s:19:\"2022-10-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-09 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-16 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-16 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:14:\"products_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:7:\"2022-40\";s:10:\"date_start\";s:19:\"2022-10-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-02 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-09 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:14:\"products_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:7:\"2022-39\";s:10:\"date_start\";s:19:\"2022-10-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-09-30 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-02 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:14:\"products_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:4;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(2685, '_transient_timeout_wc_report_variations_stats_f7843f1674f3365b1444cc4c6885ba3c', '1667072993', 'no'),
(2686, '_transient_wc_report_variations_stats_f7843f1674f3365b1444cc4c6885ba3c', 'a:2:{s:7:\"version\";s:10:\"1666468180\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":5:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:4:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-42\";s:10:\"date_start\";s:19:\"2022-10-17 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-16 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-22 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-22 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":5:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2022-41\";s:10:\"date_start\";s:19:\"2022-10-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-09 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-16 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-16 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":5:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:7:\"2022-40\";s:10:\"date_start\";s:19:\"2022-10-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-02 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-09 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":5:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:7:\"2022-39\";s:10:\"date_start\";s:19:\"2022-10-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-09-30 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-02 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":5:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:4;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(2687, '_transient_timeout_wc_report_orders_stats_eb29c28d57ba27720a36669589578253', '1667072993', 'no'),
(2688, '_transient_wc_report_orders_stats_eb29c28d57ba27720a36669589578253', 'a:2:{s:7:\"version\";s:10:\"1666468180\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":4:{s:11:\"net_revenue\";d:579.89;s:8:\"products\";i:2;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:22:{i:0;a:6:{s:8:\"interval\";s:10:\"2022-10-01\";s:10:\"date_start\";s:19:\"2022-10-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-09-30 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-01 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:10:\"2022-10-02\";s:10:\"date_start\";s:19:\"2022-10-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-01 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-02 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:10:\"2022-10-03\";s:10:\"date_start\";s:19:\"2022-10-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-02 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-03 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:10:\"2022-10-04\";s:10:\"date_start\";s:19:\"2022-10-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-03 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-04 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:10:\"2022-10-05\";s:10:\"date_start\";s:19:\"2022-10-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-04 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-05 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:5;a:6:{s:8:\"interval\";s:10:\"2022-10-06\";s:10:\"date_start\";s:19:\"2022-10-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-05 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-06 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:6;a:6:{s:8:\"interval\";s:10:\"2022-10-07\";s:10:\"date_start\";s:19:\"2022-10-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-06 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-07 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:7;a:6:{s:8:\"interval\";s:10:\"2022-10-08\";s:10:\"date_start\";s:19:\"2022-10-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-07 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-08 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:8;a:6:{s:8:\"interval\";s:10:\"2022-10-09\";s:10:\"date_start\";s:19:\"2022-10-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-08 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-09 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:9;a:6:{s:8:\"interval\";s:10:\"2022-10-10\";s:10:\"date_start\";s:19:\"2022-10-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-09 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-10 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:10;a:6:{s:8:\"interval\";s:10:\"2022-10-11\";s:10:\"date_start\";s:19:\"2022-10-11 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-10 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-11 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-11 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:11;a:6:{s:8:\"interval\";s:10:\"2022-10-12\";s:10:\"date_start\";s:19:\"2022-10-12 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-11 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-12 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-12 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:12;a:6:{s:8:\"interval\";s:10:\"2022-10-13\";s:10:\"date_start\";s:19:\"2022-10-13 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-12 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-13 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-13 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:13;a:6:{s:8:\"interval\";s:10:\"2022-10-14\";s:10:\"date_start\";s:19:\"2022-10-14 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-13 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-14 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-14 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:14;a:6:{s:8:\"interval\";s:10:\"2022-10-15\";s:10:\"date_start\";s:19:\"2022-10-15 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-14 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-15 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-15 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:15;a:6:{s:8:\"interval\";s:10:\"2022-10-16\";s:10:\"date_start\";s:19:\"2022-10-16 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-15 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-16 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-16 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:16;a:6:{s:8:\"interval\";s:10:\"2022-10-17\";s:10:\"date_start\";s:19:\"2022-10-17 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-16 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-17 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-17 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:17;a:6:{s:8:\"interval\";s:10:\"2022-10-18\";s:10:\"date_start\";s:19:\"2022-10-18 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-17 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-18 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-18 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:18;a:6:{s:8:\"interval\";s:10:\"2022-10-19\";s:10:\"date_start\";s:19:\"2022-10-19 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-18 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-19 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-19 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:19;a:6:{s:8:\"interval\";s:10:\"2022-10-20\";s:10:\"date_start\";s:19:\"2022-10-20 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-19 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-20 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-20 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:20;a:6:{s:8:\"interval\";s:10:\"2022-10-21\";s:10:\"date_start\";s:19:\"2022-10-21 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-20 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-21 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-21 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:21;a:6:{s:8:\"interval\";s:10:\"2022-10-22\";s:10:\"date_start\";s:19:\"2022-10-22 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-21 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-22 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-22 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:579.89;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:22;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(2704, '_transient_timeout_woocommerce_admin_payment_method_promotion_specs', '1667045283', 'no'),
(2706, '_transient_woocommerce_admin_payment_method_promotion_specs', 'a:1:{s:5:\"sk_SK\";a:1:{s:20:\"woocommerce_payments\";O:8:\"stdClass\":8:{s:2:\"id\";s:20:\"woocommerce_payments\";s:5:\"title\";s:18:\"WooCommerce Platby\";s:7:\"content\";s:369:\"Payments made simple, with no monthly fees – designed exclusively for WooCommerce stores. Accept credit cards, debit cards, and other popular payment methods.<br/><br/>By clicking “Install”, you agree to the <a href=\"https://wordpress.com/tos/\" target=\"_blank\">Terms of Service</a> and <a href=\"https://automattic.com/privacy/\" target=\"_blank\">Privacy policy</a>.\";s:5:\"image\";s:101:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/wcpay.svg\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-payments\";}s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:19:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PR\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AU\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DE\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ES\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FR\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GB\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IE\";s:9:\"operation\";s:1:\"=\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IT\";s:9:\"operation\";s:1:\"=\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NZ\";s:9:\"operation\";s:1:\"=\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AT\";s:9:\"operation\";s:1:\"=\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BE\";s:9:\"operation\";s:1:\"=\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NL\";s:9:\"operation\";s:1:\"=\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PL\";s:9:\"operation\";s:1:\"=\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PT\";s:9:\"operation\";s:1:\"=\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CH\";s:9:\"operation\";s:1:\"=\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"HK\";s:9:\"operation\";s:1:\"=\";}i:18;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SG\";s:9:\"operation\";s:1:\"=\";}}}}s:9:\"sub_title\";s:865:\"<img class=\"wcpay-visa-icon wcpay-icon\" src=\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/icons/visa.svg\" alt=\"Visa\"><img class=\"wcpay-mastercard-icon wcpay-icon\" src=\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/icons/mastercard.svg\" alt=\"Mastercard\"><img class=\"wcpay-amex-icon wcpay-icon\" src=\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/icons/amex.svg\" alt=\"Amex\"><img class=\"wcpay-googlepay-icon wcpay-icon\" src=\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/icons/googlepay.svg\" alt=\"Googlepay\"><img class=\"wcpay-applepay-icon wcpay-icon\" src=\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/icons/applepay.svg\" alt=\"Applepay\">\";s:15:\"additional_info\";O:8:\"stdClass\":1:{s:18:\"experiment_version\";s:2:\"v2\";}}}}', 'no'),
(2720, 'product_cat_children', 'a:0:{}', 'yes'),
(2959, '_transient_timeout_wc_product_loop_dbaaaa35f2169c63d284795d8e23308c', '1669059963', 'no'),
(2960, '_transient_wc_product_loop_dbaaaa35f2169c63d284795d8e23308c', 'a:2:{s:7:\"version\";s:10:\"1666465519\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:110;i:1;i:108;i:2;i:106;i:3;i:104;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}}', 'no'),
(2976, '_transient_timeout_wc_report_orders_stats_08d5acc8a68e30936cd2fcd6452db27c', '1667051175', 'no'),
(2977, '_transient_wc_report_orders_stats_08d5acc8a68e30936cd2fcd6452db27c', 'a:2:{s:7:\"version\";s:10:\"1666446222\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:1;s:14:\"num_items_sold\";i:1;s:11:\"gross_sales\";d:565.9;s:11:\"total_sales\";d:565.9;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:565.9;s:19:\"avg_items_per_order\";d:1;s:15:\"avg_order_value\";d:565.9;s:15:\"total_customers\";i:1;s:8:\"products\";i:1;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-42\";s:10:\"date_start\";s:19:\"2022-10-22 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-21 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-22 15:46:11\";s:12:\"date_end_gmt\";s:19:\"2022-10-22 13:46:11\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:1;s:14:\"num_items_sold\";i:1;s:11:\"gross_sales\";d:565.9;s:11:\"total_sales\";d:565.9;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:565.9;s:19:\"avg_items_per_order\";d:1;s:15:\"avg_order_value\";d:565.9;s:15:\"total_customers\";i:1;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(2978, '_transient_timeout_wc_report_orders_stats_ee26fd65e662da89aad7a01d5c513113', '1667051175', 'no'),
(2979, '_transient_wc_report_orders_stats_ee26fd65e662da89aad7a01d5c513113', 'a:2:{s:7:\"version\";s:10:\"1666446222\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:1;s:14:\"num_items_sold\";i:1;s:11:\"gross_sales\";d:565.9;s:11:\"total_sales\";d:565.9;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:565.9;s:19:\"avg_items_per_order\";d:1;s:15:\"avg_order_value\";d:565.9;s:15:\"total_customers\";i:1;s:8:\"products\";i:1;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-42\";s:10:\"date_start\";s:19:\"2022-10-22 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-21 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-22 15:46:11\";s:12:\"date_end_gmt\";s:19:\"2022-10-22 13:46:11\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:1;s:14:\"num_items_sold\";i:1;s:11:\"gross_sales\";d:565.9;s:11:\"total_sales\";d:565.9;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:565.9;s:19:\"avg_items_per_order\";d:1;s:15:\"avg_order_value\";d:565.9;s:15:\"total_customers\";i:1;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(2980, '_transient_timeout_wc_report_orders_stats_4e5cb7176dee50fc3016abc8f6595e16', '1667051175', 'no'),
(2981, '_transient_wc_report_orders_stats_4e5cb7176dee50fc3016abc8f6595e16', 'a:2:{s:7:\"version\";s:10:\"1666446222\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-42\";s:10:\"date_start\";s:19:\"2022-10-21 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-20 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-21 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-21 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(2982, '_transient_timeout_wc_report_orders_stats_8792b8cb6a200c2b365cd804b49fb811', '1667051175', 'no'),
(2983, '_transient_wc_report_orders_stats_8792b8cb6a200c2b365cd804b49fb811', 'a:2:{s:7:\"version\";s:10:\"1666446222\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-42\";s:10:\"date_start\";s:19:\"2022-10-21 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-20 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-21 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-21 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(2988, '_transient_timeout_wc_report_orders_stats_9b19af68589faaa4e6364be79a8b63f5', '1667051212', 'no'),
(2989, '_transient_wc_report_orders_stats_9b19af68589faaa4e6364be79a8b63f5', 'a:2:{s:7:\"version\";s:10:\"1666446222\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:1;s:14:\"num_items_sold\";i:1;s:11:\"gross_sales\";d:565.9;s:11:\"total_sales\";d:565.9;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:565.9;s:19:\"avg_items_per_order\";d:1;s:15:\"avg_order_value\";d:565.9;s:15:\"total_customers\";i:1;s:8:\"products\";i:1;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:4:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-42\";s:10:\"date_start\";s:19:\"2022-10-17 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-16 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-22 15:46:50\";s:12:\"date_end_gmt\";s:19:\"2022-10-22 13:46:50\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:1;s:14:\"num_items_sold\";i:1;s:11:\"gross_sales\";d:565.9;s:11:\"total_sales\";d:565.9;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:565.9;s:19:\"avg_items_per_order\";d:1;s:15:\"avg_order_value\";d:565.9;s:15:\"total_customers\";i:1;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2022-41\";s:10:\"date_start\";s:19:\"2022-10-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-09 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-16 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-16 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:7:\"2022-40\";s:10:\"date_start\";s:19:\"2022-10-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-02 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-09 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:7:\"2022-39\";s:10:\"date_start\";s:19:\"2022-10-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-09-30 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-02 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:4;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(2990, '_transient_timeout_wc_report_orders_stats_c565684f1c214485d4e942691936cd5f', '1667072945', 'no'),
(2991, '_transient_wc_report_orders_stats_c565684f1c214485d4e942691936cd5f', 'a:2:{s:7:\"version\";s:10:\"1666468116\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":7:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:8:\"products\";i:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:22:{i:0;a:6:{s:8:\"interval\";s:10:\"2021-10-01\";s:10:\"date_start\";s:19:\"2021-10-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-09-30 22:00:00\";s:8:\"date_end\";s:19:\"2021-10-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-10-01 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:10:\"2021-10-02\";s:10:\"date_start\";s:19:\"2021-10-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-10-01 22:00:00\";s:8:\"date_end\";s:19:\"2021-10-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-10-02 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:10:\"2021-10-03\";s:10:\"date_start\";s:19:\"2021-10-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-10-02 22:00:00\";s:8:\"date_end\";s:19:\"2021-10-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-10-03 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:10:\"2021-10-04\";s:10:\"date_start\";s:19:\"2021-10-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-10-03 22:00:00\";s:8:\"date_end\";s:19:\"2021-10-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-10-04 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:10:\"2021-10-05\";s:10:\"date_start\";s:19:\"2021-10-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-10-04 22:00:00\";s:8:\"date_end\";s:19:\"2021-10-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-10-05 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:5;a:6:{s:8:\"interval\";s:10:\"2021-10-06\";s:10:\"date_start\";s:19:\"2021-10-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-10-05 22:00:00\";s:8:\"date_end\";s:19:\"2021-10-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-10-06 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:6;a:6:{s:8:\"interval\";s:10:\"2021-10-07\";s:10:\"date_start\";s:19:\"2021-10-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-10-06 22:00:00\";s:8:\"date_end\";s:19:\"2021-10-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-10-07 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:7;a:6:{s:8:\"interval\";s:10:\"2021-10-08\";s:10:\"date_start\";s:19:\"2021-10-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-10-07 22:00:00\";s:8:\"date_end\";s:19:\"2021-10-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-10-08 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:8;a:6:{s:8:\"interval\";s:10:\"2021-10-09\";s:10:\"date_start\";s:19:\"2021-10-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-10-08 22:00:00\";s:8:\"date_end\";s:19:\"2021-10-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-10-09 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:9;a:6:{s:8:\"interval\";s:10:\"2021-10-10\";s:10:\"date_start\";s:19:\"2021-10-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-10-09 22:00:00\";s:8:\"date_end\";s:19:\"2021-10-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-10-10 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:10;a:6:{s:8:\"interval\";s:10:\"2021-10-11\";s:10:\"date_start\";s:19:\"2021-10-11 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-10-10 22:00:00\";s:8:\"date_end\";s:19:\"2021-10-11 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-10-11 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:11;a:6:{s:8:\"interval\";s:10:\"2021-10-12\";s:10:\"date_start\";s:19:\"2021-10-12 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-10-11 22:00:00\";s:8:\"date_end\";s:19:\"2021-10-12 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-10-12 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:12;a:6:{s:8:\"interval\";s:10:\"2021-10-13\";s:10:\"date_start\";s:19:\"2021-10-13 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-10-12 22:00:00\";s:8:\"date_end\";s:19:\"2021-10-13 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-10-13 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:13;a:6:{s:8:\"interval\";s:10:\"2021-10-14\";s:10:\"date_start\";s:19:\"2021-10-14 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-10-13 22:00:00\";s:8:\"date_end\";s:19:\"2021-10-14 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-10-14 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:14;a:6:{s:8:\"interval\";s:10:\"2021-10-15\";s:10:\"date_start\";s:19:\"2021-10-15 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-10-14 22:00:00\";s:8:\"date_end\";s:19:\"2021-10-15 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-10-15 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:15;a:6:{s:8:\"interval\";s:10:\"2021-10-16\";s:10:\"date_start\";s:19:\"2021-10-16 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-10-15 22:00:00\";s:8:\"date_end\";s:19:\"2021-10-16 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-10-16 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:16;a:6:{s:8:\"interval\";s:10:\"2021-10-17\";s:10:\"date_start\";s:19:\"2021-10-17 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-10-16 22:00:00\";s:8:\"date_end\";s:19:\"2021-10-17 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-10-17 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:17;a:6:{s:8:\"interval\";s:10:\"2021-10-18\";s:10:\"date_start\";s:19:\"2021-10-18 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-10-17 22:00:00\";s:8:\"date_end\";s:19:\"2021-10-18 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-10-18 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:18;a:6:{s:8:\"interval\";s:10:\"2021-10-19\";s:10:\"date_start\";s:19:\"2021-10-19 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-10-18 22:00:00\";s:8:\"date_end\";s:19:\"2021-10-19 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-10-19 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:19;a:6:{s:8:\"interval\";s:10:\"2021-10-20\";s:10:\"date_start\";s:19:\"2021-10-20 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-10-19 22:00:00\";s:8:\"date_end\";s:19:\"2021-10-20 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-10-20 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:20;a:6:{s:8:\"interval\";s:10:\"2021-10-21\";s:10:\"date_start\";s:19:\"2021-10-21 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-10-20 22:00:00\";s:8:\"date_end\";s:19:\"2021-10-21 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-10-21 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:21;a:6:{s:8:\"interval\";s:10:\"2021-10-22\";s:10:\"date_start\";s:19:\"2021-10-22 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-10-21 22:00:00\";s:8:\"date_end\";s:19:\"2021-10-22 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-10-22 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:22;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(2992, '_transient_timeout_wc_report_orders_stats_b01a96cc0d9a14aff5203f6c20fa8bc2', '1667051212', 'no'),
(2993, '_transient_timeout_wc_report_orders_stats_d780979ac4988cbc8319cb48db001387', '1667072944', 'no'),
(2994, '_transient_timeout_wc_report_orders_stats_556866bf83879d0185724c67f3c29aca', '1667072944', 'no'),
(2995, '_transient_wc_report_orders_stats_d780979ac4988cbc8319cb48db001387', 'a:2:{s:7:\"version\";s:10:\"1666468116\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":5:{s:12:\"orders_count\";i:2;s:15:\"avg_order_value\";d:289.945;s:8:\"products\";i:2;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:22:{i:0;a:6:{s:8:\"interval\";s:10:\"2022-10-01\";s:10:\"date_start\";s:19:\"2022-10-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-09-30 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-01 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:10:\"2022-10-02\";s:10:\"date_start\";s:19:\"2022-10-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-01 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-02 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:10:\"2022-10-03\";s:10:\"date_start\";s:19:\"2022-10-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-02 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-03 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:10:\"2022-10-04\";s:10:\"date_start\";s:19:\"2022-10-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-03 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-04 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:10:\"2022-10-05\";s:10:\"date_start\";s:19:\"2022-10-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-04 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-05 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:5;a:6:{s:8:\"interval\";s:10:\"2022-10-06\";s:10:\"date_start\";s:19:\"2022-10-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-05 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-06 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:6;a:6:{s:8:\"interval\";s:10:\"2022-10-07\";s:10:\"date_start\";s:19:\"2022-10-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-06 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-07 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:7;a:6:{s:8:\"interval\";s:10:\"2022-10-08\";s:10:\"date_start\";s:19:\"2022-10-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-07 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-08 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:8;a:6:{s:8:\"interval\";s:10:\"2022-10-09\";s:10:\"date_start\";s:19:\"2022-10-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-08 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-09 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:9;a:6:{s:8:\"interval\";s:10:\"2022-10-10\";s:10:\"date_start\";s:19:\"2022-10-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-09 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-10 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:10;a:6:{s:8:\"interval\";s:10:\"2022-10-11\";s:10:\"date_start\";s:19:\"2022-10-11 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-10 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-11 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-11 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:11;a:6:{s:8:\"interval\";s:10:\"2022-10-12\";s:10:\"date_start\";s:19:\"2022-10-12 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-11 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-12 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-12 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:12;a:6:{s:8:\"interval\";s:10:\"2022-10-13\";s:10:\"date_start\";s:19:\"2022-10-13 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-12 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-13 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-13 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:13;a:6:{s:8:\"interval\";s:10:\"2022-10-14\";s:10:\"date_start\";s:19:\"2022-10-14 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-13 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-14 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-14 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:14;a:6:{s:8:\"interval\";s:10:\"2022-10-15\";s:10:\"date_start\";s:19:\"2022-10-15 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-14 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-15 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-15 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:15;a:6:{s:8:\"interval\";s:10:\"2022-10-16\";s:10:\"date_start\";s:19:\"2022-10-16 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-15 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-16 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-16 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:16;a:6:{s:8:\"interval\";s:10:\"2022-10-17\";s:10:\"date_start\";s:19:\"2022-10-17 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-16 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-17 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-17 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:17;a:6:{s:8:\"interval\";s:10:\"2022-10-18\";s:10:\"date_start\";s:19:\"2022-10-18 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-17 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-18 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-18 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:18;a:6:{s:8:\"interval\";s:10:\"2022-10-19\";s:10:\"date_start\";s:19:\"2022-10-19 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-18 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-19 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-19 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:19;a:6:{s:8:\"interval\";s:10:\"2022-10-20\";s:10:\"date_start\";s:19:\"2022-10-20 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-19 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-20 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-20 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:20;a:6:{s:8:\"interval\";s:10:\"2022-10-21\";s:10:\"date_start\";s:19:\"2022-10-21 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-20 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-21 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-21 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:21;a:6:{s:8:\"interval\";s:10:\"2022-10-22\";s:10:\"date_start\";s:19:\"2022-10-22 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-21 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-22 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-22 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:2;s:15:\"avg_order_value\";d:289.945;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:22;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(2996, '_transient_wc_report_orders_stats_b01a96cc0d9a14aff5203f6c20fa8bc2', 'a:2:{s:7:\"version\";s:10:\"1666446222\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:1;s:14:\"num_items_sold\";i:1;s:11:\"gross_sales\";d:565.9;s:11:\"total_sales\";d:565.9;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:565.9;s:19:\"avg_items_per_order\";d:1;s:15:\"avg_order_value\";d:565.9;s:15:\"total_customers\";i:1;s:8:\"products\";i:1;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:4:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-42\";s:10:\"date_start\";s:19:\"2022-10-17 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-16 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-22 15:46:50\";s:12:\"date_end_gmt\";s:19:\"2022-10-22 13:46:50\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:1;s:14:\"num_items_sold\";i:1;s:11:\"gross_sales\";d:565.9;s:11:\"total_sales\";d:565.9;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:565.9;s:19:\"avg_items_per_order\";d:1;s:15:\"avg_order_value\";d:565.9;s:15:\"total_customers\";i:1;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2022-41\";s:10:\"date_start\";s:19:\"2022-10-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-09 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-16 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-16 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:7:\"2022-40\";s:10:\"date_start\";s:19:\"2022-10-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-02 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-09 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:7:\"2022-39\";s:10:\"date_start\";s:19:\"2022-10-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-09-30 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-02 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:4;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(2997, '_transient_wc_report_orders_stats_556866bf83879d0185724c67f3c29aca', 'a:2:{s:7:\"version\";s:10:\"1666468116\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":7:{s:11:\"total_sales\";d:579.89;s:11:\"net_revenue\";d:579.89;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:8:\"products\";i:2;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:22:{i:0;a:6:{s:8:\"interval\";s:10:\"2022-10-01\";s:10:\"date_start\";s:19:\"2022-10-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-09-30 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-01 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:10:\"2022-10-02\";s:10:\"date_start\";s:19:\"2022-10-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-01 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-02 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:10:\"2022-10-03\";s:10:\"date_start\";s:19:\"2022-10-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-02 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-03 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:10:\"2022-10-04\";s:10:\"date_start\";s:19:\"2022-10-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-03 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-04 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:10:\"2022-10-05\";s:10:\"date_start\";s:19:\"2022-10-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-04 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-05 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:5;a:6:{s:8:\"interval\";s:10:\"2022-10-06\";s:10:\"date_start\";s:19:\"2022-10-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-05 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-06 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:6;a:6:{s:8:\"interval\";s:10:\"2022-10-07\";s:10:\"date_start\";s:19:\"2022-10-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-06 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-07 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:7;a:6:{s:8:\"interval\";s:10:\"2022-10-08\";s:10:\"date_start\";s:19:\"2022-10-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-07 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-08 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:8;a:6:{s:8:\"interval\";s:10:\"2022-10-09\";s:10:\"date_start\";s:19:\"2022-10-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-08 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-09 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:9;a:6:{s:8:\"interval\";s:10:\"2022-10-10\";s:10:\"date_start\";s:19:\"2022-10-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-09 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-10 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:10;a:6:{s:8:\"interval\";s:10:\"2022-10-11\";s:10:\"date_start\";s:19:\"2022-10-11 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-10 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-11 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-11 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:11;a:6:{s:8:\"interval\";s:10:\"2022-10-12\";s:10:\"date_start\";s:19:\"2022-10-12 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-11 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-12 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-12 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:12;a:6:{s:8:\"interval\";s:10:\"2022-10-13\";s:10:\"date_start\";s:19:\"2022-10-13 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-12 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-13 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-13 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:13;a:6:{s:8:\"interval\";s:10:\"2022-10-14\";s:10:\"date_start\";s:19:\"2022-10-14 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-13 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-14 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-14 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:14;a:6:{s:8:\"interval\";s:10:\"2022-10-15\";s:10:\"date_start\";s:19:\"2022-10-15 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-14 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-15 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-15 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:15;a:6:{s:8:\"interval\";s:10:\"2022-10-16\";s:10:\"date_start\";s:19:\"2022-10-16 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-15 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-16 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-16 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:16;a:6:{s:8:\"interval\";s:10:\"2022-10-17\";s:10:\"date_start\";s:19:\"2022-10-17 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-16 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-17 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-17 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:17;a:6:{s:8:\"interval\";s:10:\"2022-10-18\";s:10:\"date_start\";s:19:\"2022-10-18 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-17 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-18 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-18 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:18;a:6:{s:8:\"interval\";s:10:\"2022-10-19\";s:10:\"date_start\";s:19:\"2022-10-19 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-18 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-19 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-19 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:19;a:6:{s:8:\"interval\";s:10:\"2022-10-20\";s:10:\"date_start\";s:19:\"2022-10-20 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-19 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-20 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-20 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:20;a:6:{s:8:\"interval\";s:10:\"2022-10-21\";s:10:\"date_start\";s:19:\"2022-10-21 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-20 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-21 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-21 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:21;a:6:{s:8:\"interval\";s:10:\"2022-10-22\";s:10:\"date_start\";s:19:\"2022-10-22 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-21 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-22 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-22 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:579.89;s:11:\"net_revenue\";d:579.89;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:22;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(2998, '_transient_timeout_wc_report_products_stats_1fb2f46997a00dee528c25d2336e9ed8', '1667051212', 'no'),
(2999, '_transient_wc_report_products_stats_1fb2f46997a00dee528c25d2336e9ed8', 'a:2:{s:7:\"version\";s:10:\"1666446222\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":6:{s:10:\"items_sold\";i:1;s:11:\"net_revenue\";d:565.9;s:12:\"orders_count\";i:1;s:14:\"products_count\";i:1;s:16:\"variations_count\";i:1;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:4:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-42\";s:10:\"date_start\";s:19:\"2022-10-17 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-16 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-22 15:46:50\";s:12:\"date_end_gmt\";s:19:\"2022-10-22 13:46:50\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:10:\"items_sold\";i:1;s:11:\"net_revenue\";d:565.9;s:12:\"orders_count\";i:1;s:14:\"products_count\";i:1;s:16:\"variations_count\";i:1;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2022-41\";s:10:\"date_start\";s:19:\"2022-10-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-09 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-16 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-16 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:14:\"products_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:7:\"2022-40\";s:10:\"date_start\";s:19:\"2022-10-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-02 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-09 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:14:\"products_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:7:\"2022-39\";s:10:\"date_start\";s:19:\"2022-10-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-09-30 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-02 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:14:\"products_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:4;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(3000, '_transient_timeout_wc_report_variations_stats_18cb978565abd953ebb9e86967bc4f46', '1667051212', 'no'),
(3001, '_transient_wc_report_variations_stats_18cb978565abd953ebb9e86967bc4f46', 'a:2:{s:7:\"version\";s:10:\"1666446222\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":5:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:4:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-42\";s:10:\"date_start\";s:19:\"2022-10-17 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-16 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-22 15:46:50\";s:12:\"date_end_gmt\";s:19:\"2022-10-22 13:46:50\";s:9:\"subtotals\";O:8:\"stdClass\":5:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2022-41\";s:10:\"date_start\";s:19:\"2022-10-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-09 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-16 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-16 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":5:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:7:\"2022-40\";s:10:\"date_start\";s:19:\"2022-10-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-02 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-09 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":5:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:7:\"2022-39\";s:10:\"date_start\";s:19:\"2022-10-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-09-30 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-02 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":5:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:4;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(3002, '_transient_timeout_wc_report_orders_stats_161b2dab82a541cc2661e0cd1cfddbb2', '1667072945', 'no'),
(3003, '_transient_wc_report_orders_stats_161b2dab82a541cc2661e0cd1cfddbb2', 'a:2:{s:7:\"version\";s:10:\"1666468116\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":5:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:8:\"products\";i:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:22:{i:0;a:6:{s:8:\"interval\";s:10:\"2021-10-01\";s:10:\"date_start\";s:19:\"2021-10-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-09-30 22:00:00\";s:8:\"date_end\";s:19:\"2021-10-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-10-01 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:10:\"2021-10-02\";s:10:\"date_start\";s:19:\"2021-10-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-10-01 22:00:00\";s:8:\"date_end\";s:19:\"2021-10-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-10-02 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:10:\"2021-10-03\";s:10:\"date_start\";s:19:\"2021-10-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-10-02 22:00:00\";s:8:\"date_end\";s:19:\"2021-10-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-10-03 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:10:\"2021-10-04\";s:10:\"date_start\";s:19:\"2021-10-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-10-03 22:00:00\";s:8:\"date_end\";s:19:\"2021-10-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-10-04 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:10:\"2021-10-05\";s:10:\"date_start\";s:19:\"2021-10-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-10-04 22:00:00\";s:8:\"date_end\";s:19:\"2021-10-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-10-05 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:5;a:6:{s:8:\"interval\";s:10:\"2021-10-06\";s:10:\"date_start\";s:19:\"2021-10-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-10-05 22:00:00\";s:8:\"date_end\";s:19:\"2021-10-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-10-06 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:6;a:6:{s:8:\"interval\";s:10:\"2021-10-07\";s:10:\"date_start\";s:19:\"2021-10-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-10-06 22:00:00\";s:8:\"date_end\";s:19:\"2021-10-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-10-07 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:7;a:6:{s:8:\"interval\";s:10:\"2021-10-08\";s:10:\"date_start\";s:19:\"2021-10-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-10-07 22:00:00\";s:8:\"date_end\";s:19:\"2021-10-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-10-08 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:8;a:6:{s:8:\"interval\";s:10:\"2021-10-09\";s:10:\"date_start\";s:19:\"2021-10-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-10-08 22:00:00\";s:8:\"date_end\";s:19:\"2021-10-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-10-09 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:9;a:6:{s:8:\"interval\";s:10:\"2021-10-10\";s:10:\"date_start\";s:19:\"2021-10-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-10-09 22:00:00\";s:8:\"date_end\";s:19:\"2021-10-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-10-10 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:10;a:6:{s:8:\"interval\";s:10:\"2021-10-11\";s:10:\"date_start\";s:19:\"2021-10-11 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-10-10 22:00:00\";s:8:\"date_end\";s:19:\"2021-10-11 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-10-11 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:11;a:6:{s:8:\"interval\";s:10:\"2021-10-12\";s:10:\"date_start\";s:19:\"2021-10-12 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-10-11 22:00:00\";s:8:\"date_end\";s:19:\"2021-10-12 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-10-12 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:12;a:6:{s:8:\"interval\";s:10:\"2021-10-13\";s:10:\"date_start\";s:19:\"2021-10-13 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-10-12 22:00:00\";s:8:\"date_end\";s:19:\"2021-10-13 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-10-13 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:13;a:6:{s:8:\"interval\";s:10:\"2021-10-14\";s:10:\"date_start\";s:19:\"2021-10-14 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-10-13 22:00:00\";s:8:\"date_end\";s:19:\"2021-10-14 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-10-14 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:14;a:6:{s:8:\"interval\";s:10:\"2021-10-15\";s:10:\"date_start\";s:19:\"2021-10-15 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-10-14 22:00:00\";s:8:\"date_end\";s:19:\"2021-10-15 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-10-15 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:15;a:6:{s:8:\"interval\";s:10:\"2021-10-16\";s:10:\"date_start\";s:19:\"2021-10-16 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-10-15 22:00:00\";s:8:\"date_end\";s:19:\"2021-10-16 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-10-16 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:16;a:6:{s:8:\"interval\";s:10:\"2021-10-17\";s:10:\"date_start\";s:19:\"2021-10-17 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-10-16 22:00:00\";s:8:\"date_end\";s:19:\"2021-10-17 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-10-17 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:17;a:6:{s:8:\"interval\";s:10:\"2021-10-18\";s:10:\"date_start\";s:19:\"2021-10-18 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-10-17 22:00:00\";s:8:\"date_end\";s:19:\"2021-10-18 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-10-18 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:18;a:6:{s:8:\"interval\";s:10:\"2021-10-19\";s:10:\"date_start\";s:19:\"2021-10-19 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-10-18 22:00:00\";s:8:\"date_end\";s:19:\"2021-10-19 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-10-19 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:19;a:6:{s:8:\"interval\";s:10:\"2021-10-20\";s:10:\"date_start\";s:19:\"2021-10-20 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-10-19 22:00:00\";s:8:\"date_end\";s:19:\"2021-10-20 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-10-20 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:20;a:6:{s:8:\"interval\";s:10:\"2021-10-21\";s:10:\"date_start\";s:19:\"2021-10-21 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-10-20 22:00:00\";s:8:\"date_end\";s:19:\"2021-10-21 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-10-21 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:21;a:6:{s:8:\"interval\";s:10:\"2021-10-22\";s:10:\"date_start\";s:19:\"2021-10-22 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-10-21 22:00:00\";s:8:\"date_end\";s:19:\"2021-10-22 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-10-22 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:22;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(3004, '_transient_timeout_wc_report_orders_stats_779b47d3a2b09164d867ed9b1ed26529', '1667072943', 'no'),
(3005, '_transient_wc_report_orders_stats_779b47d3a2b09164d867ed9b1ed26529', 'a:2:{s:7:\"version\";s:10:\"1666468116\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:4:{i:0;a:6:{s:8:\"interval\";s:7:\"2021-42\";s:10:\"date_start\";s:19:\"2021-10-18 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-10-17 22:00:00\";s:8:\"date_end\";s:19:\"2021-10-22 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-10-22 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2021-41\";s:10:\"date_start\";s:19:\"2021-10-11 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-10-10 22:00:00\";s:8:\"date_end\";s:19:\"2021-10-17 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-10-17 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:7:\"2021-40\";s:10:\"date_start\";s:19:\"2021-10-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-10-03 22:00:00\";s:8:\"date_end\";s:19:\"2021-10-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-10-10 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:7:\"2021-39\";s:10:\"date_start\";s:19:\"2021-10-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-09-30 22:00:00\";s:8:\"date_end\";s:19:\"2021-10-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-10-03 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:4;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(3006, '_transient_timeout_wc_report_orders_stats_9f5533657c2a7820d4cf43322d8f9be5', '1667072943', 'no'),
(3007, '_transient_wc_report_orders_stats_9f5533657c2a7820d4cf43322d8f9be5', 'a:2:{s:7:\"version\";s:10:\"1666468116\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:4:{i:0;a:6:{s:8:\"interval\";s:7:\"2021-42\";s:10:\"date_start\";s:19:\"2021-10-18 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-10-17 22:00:00\";s:8:\"date_end\";s:19:\"2021-10-22 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-10-22 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2021-41\";s:10:\"date_start\";s:19:\"2021-10-11 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-10-10 22:00:00\";s:8:\"date_end\";s:19:\"2021-10-17 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-10-17 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:7:\"2021-40\";s:10:\"date_start\";s:19:\"2021-10-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-10-03 22:00:00\";s:8:\"date_end\";s:19:\"2021-10-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-10-10 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:7:\"2021-39\";s:10:\"date_start\";s:19:\"2021-10-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-09-30 22:00:00\";s:8:\"date_end\";s:19:\"2021-10-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-10-03 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:4;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(3008, '_transient_timeout_wc_report_products_stats_32d8a82f85951a8903634315b52b6496', '1667072944', 'no'),
(3009, '_transient_wc_report_products_stats_32d8a82f85951a8903634315b52b6496', 'a:2:{s:7:\"version\";s:10:\"1666468116\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":6:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:14:\"products_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:4:{i:0;a:6:{s:8:\"interval\";s:7:\"2021-42\";s:10:\"date_start\";s:19:\"2021-10-18 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-10-17 22:00:00\";s:8:\"date_end\";s:19:\"2021-10-22 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-10-22 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:14:\"products_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2021-41\";s:10:\"date_start\";s:19:\"2021-10-11 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-10-10 22:00:00\";s:8:\"date_end\";s:19:\"2021-10-17 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-10-17 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:14:\"products_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:7:\"2021-40\";s:10:\"date_start\";s:19:\"2021-10-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-10-03 22:00:00\";s:8:\"date_end\";s:19:\"2021-10-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-10-10 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:14:\"products_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:7:\"2021-39\";s:10:\"date_start\";s:19:\"2021-10-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-09-30 22:00:00\";s:8:\"date_end\";s:19:\"2021-10-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-10-03 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:14:\"products_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:4;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(3010, '_transient_timeout_wc_report_variations_stats_1fc318f26f00ea373a509207929d9131', '1667072944', 'no'),
(3011, '_transient_wc_report_variations_stats_1fc318f26f00ea373a509207929d9131', 'a:2:{s:7:\"version\";s:10:\"1666468116\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":5:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:4:{i:0;a:6:{s:8:\"interval\";s:7:\"2021-42\";s:10:\"date_start\";s:19:\"2021-10-18 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-10-17 22:00:00\";s:8:\"date_end\";s:19:\"2021-10-22 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-10-22 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":5:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2021-41\";s:10:\"date_start\";s:19:\"2021-10-11 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-10-10 22:00:00\";s:8:\"date_end\";s:19:\"2021-10-17 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-10-17 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":5:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:7:\"2021-40\";s:10:\"date_start\";s:19:\"2021-10-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-10-03 22:00:00\";s:8:\"date_end\";s:19:\"2021-10-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-10-10 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":5:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:7:\"2021-39\";s:10:\"date_start\";s:19:\"2021-10-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-09-30 22:00:00\";s:8:\"date_end\";s:19:\"2021-10-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-10-03 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":5:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:4;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(3012, '_transient_timeout_wc_report_customers_b0ad071a5e7b89c269bc1d7524fb74cd', '1667072945', 'no'),
(3013, '_transient_wc_report_customers_b0ad071a5e7b89c269bc1d7524fb74cd', 'a:2:{s:7:\"version\";s:10:\"1666468116\";s:5:\"value\";O:8:\"stdClass\":4:{s:4:\"data\";a:1:{i:0;a:15:{s:2:\"id\";i:4;s:7:\"user_id\";i:1;s:8:\"username\";s:5:\"admin\";s:4:\"name\";s:15:\"Daniel Rzeszoto\";s:5:\"email\";s:24:\"rzeszotodaniel@gmail.com\";s:7:\"country\";s:2:\"SK\";s:4:\"city\";s:7:\"Žilina\";s:5:\"state\";s:0:\"\";s:8:\"postcode\";s:5:\"01008\";s:15:\"date_registered\";s:19:\"2022-10-04 11:39:14\";s:16:\"date_last_active\";s:19:\"2022-10-22 19:48:13\";s:15:\"date_last_order\";s:19:\"2022-10-22 21:48:13\";s:12:\"orders_count\";i:2;s:11:\"total_spend\";d:579.89;s:15:\"avg_order_value\";d:289.945;}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(3014, '_transient_timeout_wc_report_categories_f419dfa4e8c573084782ad45899b046c', '1667072945', 'no'),
(3015, '_transient_wc_report_categories_f419dfa4e8c573084782ad45899b046c', 'a:2:{s:7:\"version\";s:10:\"1666468116\";s:5:\"value\";O:8:\"stdClass\":4:{s:4:\"data\";a:2:{i:0;a:6:{s:11:\"category_id\";i:23;s:10:\"items_sold\";i:1;s:11:\"net_revenue\";d:565.9;s:12:\"orders_count\";i:1;s:14:\"products_count\";i:1;s:13:\"extended_info\";O:11:\"ArrayObject\":4:{i:0;i:0;i:1;a:1:{s:4:\"name\";s:9:\"Telefóny\";}i:2;a:0:{}i:3;N;}}i:1;a:6:{s:11:\"category_id\";i:24;s:10:\"items_sold\";i:1;s:11:\"net_revenue\";d:13.99;s:12:\"orders_count\";i:1;s:14:\"products_count\";i:1;s:13:\"extended_info\";O:11:\"ArrayObject\":4:{i:0;i:0;i:1;a:1:{s:4:\"name\";s:15:\"Príslušenstvo\";}i:2;a:0:{}i:3;N;}}}s:5:\"total\";i:2;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(3016, '_transient_timeout_wc_report_products_4e6406aa6a6ac83fc98de6becbf66384', '1667072945', 'no'),
(3017, '_transient_wc_report_products_4e6406aa6a6ac83fc98de6becbf66384', 'a:2:{s:7:\"version\";s:10:\"1666468116\";s:5:\"value\";O:8:\"stdClass\":4:{s:4:\"data\";a:2:{i:0;a:4:{s:10:\"product_id\";i:74;s:10:\"items_sold\";i:1;s:11:\"net_revenue\";d:565.9;s:12:\"orders_count\";i:1;}i:1;a:4:{s:10:\"product_id\";i:92;s:10:\"items_sold\";i:1;s:11:\"net_revenue\";d:13.99;s:12:\"orders_count\";i:1;}}s:5:\"total\";i:2;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(3028, '_transient_timeout_wc_product_loop_e0801cdbb165bde4c5a46739616fe81c', '1669059963', 'no'),
(3029, '_transient_wc_product_loop_e0801cdbb165bde4c5a46739616fe81c', 'a:2:{s:7:\"version\";s:10:\"1666465519\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:74;i:1;i:110;i:2;i:108;i:3;i:106;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}}', 'no'),
(3046, 'woocommerce_admin_last_orders_milestone', '1', 'yes'),
(3144, '_transient_timeout_wc_report_products_stats_f3c3f2529dbfb53e4a85cd8b4fb5764a', '1667072993', 'no'),
(3145, '_transient_wc_report_products_stats_f3c3f2529dbfb53e4a85cd8b4fb5764a', 'a:2:{s:7:\"version\";s:10:\"1666468180\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:1;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:22:{i:0;a:6:{s:8:\"interval\";s:10:\"2022-10-01\";s:10:\"date_start\";s:19:\"2022-10-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-09-30 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-01 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:10:\"2022-10-02\";s:10:\"date_start\";s:19:\"2022-10-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-01 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-02 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:10:\"2022-10-03\";s:10:\"date_start\";s:19:\"2022-10-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-02 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-03 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:10:\"2022-10-04\";s:10:\"date_start\";s:19:\"2022-10-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-03 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-04 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:10:\"2022-10-05\";s:10:\"date_start\";s:19:\"2022-10-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-04 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-05 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:5;a:6:{s:8:\"interval\";s:10:\"2022-10-06\";s:10:\"date_start\";s:19:\"2022-10-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-05 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-06 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:6;a:6:{s:8:\"interval\";s:10:\"2022-10-07\";s:10:\"date_start\";s:19:\"2022-10-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-06 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-07 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:7;a:6:{s:8:\"interval\";s:10:\"2022-10-08\";s:10:\"date_start\";s:19:\"2022-10-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-07 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-08 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:8;a:6:{s:8:\"interval\";s:10:\"2022-10-09\";s:10:\"date_start\";s:19:\"2022-10-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-08 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-09 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:9;a:6:{s:8:\"interval\";s:10:\"2022-10-10\";s:10:\"date_start\";s:19:\"2022-10-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-09 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-10 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:10;a:6:{s:8:\"interval\";s:10:\"2022-10-11\";s:10:\"date_start\";s:19:\"2022-10-11 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-10 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-11 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-11 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:11;a:6:{s:8:\"interval\";s:10:\"2022-10-12\";s:10:\"date_start\";s:19:\"2022-10-12 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-11 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-12 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-12 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:12;a:6:{s:8:\"interval\";s:10:\"2022-10-13\";s:10:\"date_start\";s:19:\"2022-10-13 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-12 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-13 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-13 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:13;a:6:{s:8:\"interval\";s:10:\"2022-10-14\";s:10:\"date_start\";s:19:\"2022-10-14 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-13 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-14 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-14 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:14;a:6:{s:8:\"interval\";s:10:\"2022-10-15\";s:10:\"date_start\";s:19:\"2022-10-15 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-14 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-15 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-15 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:15;a:6:{s:8:\"interval\";s:10:\"2022-10-16\";s:10:\"date_start\";s:19:\"2022-10-16 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-15 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-16 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-16 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:16;a:6:{s:8:\"interval\";s:10:\"2022-10-17\";s:10:\"date_start\";s:19:\"2022-10-17 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-16 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-17 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-17 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:17;a:6:{s:8:\"interval\";s:10:\"2022-10-18\";s:10:\"date_start\";s:19:\"2022-10-18 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-17 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-18 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-18 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:18;a:6:{s:8:\"interval\";s:10:\"2022-10-19\";s:10:\"date_start\";s:19:\"2022-10-19 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-18 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-19 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-19 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:19;a:6:{s:8:\"interval\";s:10:\"2022-10-20\";s:10:\"date_start\";s:19:\"2022-10-20 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-19 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-20 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-20 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:20;a:6:{s:8:\"interval\";s:10:\"2022-10-21\";s:10:\"date_start\";s:19:\"2022-10-21 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-20 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-21 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-21 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:21;a:6:{s:8:\"interval\";s:10:\"2022-10-22\";s:10:\"date_start\";s:19:\"2022-10-22 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-21 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-22 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-22 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:1;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:22;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(3184, '_transient_timeout_wc_term_counts', '1669057523', 'no'),
(3185, '_transient_wc_term_counts', 'a:7:{i:25;s:1:\"6\";i:22;s:1:\"5\";i:21;s:1:\"5\";i:15;s:1:\"0\";i:24;s:1:\"5\";i:19;s:1:\"5\";i:23;s:1:\"5\";}', 'no'),
(3219, '_transient_timeout_wc_low_stock_count', '1669060114', 'no'),
(3220, '_transient_wc_low_stock_count', '0', 'no'),
(3221, '_transient_timeout_wc_outofstock_count', '1669060114', 'no'),
(3222, '_transient_wc_outofstock_count', '0', 'no'),
(3225, '_transient_timeout_wc_report_orders_stats_a2225c24703db2a155b17fa0d173d88e', '1667072943', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(3226, '_transient_wc_report_orders_stats_a2225c24703db2a155b17fa0d173d88e', 'a:2:{s:7:\"version\";s:10:\"1666468116\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:2;s:14:\"num_items_sold\";i:2;s:11:\"gross_sales\";d:579.89;s:11:\"total_sales\";d:579.89;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:579.89;s:19:\"avg_items_per_order\";d:1;s:15:\"avg_order_value\";d:289.945;s:15:\"total_customers\";i:1;s:8:\"products\";i:2;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:4:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-42\";s:10:\"date_start\";s:19:\"2022-10-17 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-16 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-22 21:49:02\";s:12:\"date_end_gmt\";s:19:\"2022-10-22 19:49:02\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:2;s:14:\"num_items_sold\";i:2;s:11:\"gross_sales\";d:579.89;s:11:\"total_sales\";d:579.89;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:579.89;s:19:\"avg_items_per_order\";d:1;s:15:\"avg_order_value\";d:289.945;s:15:\"total_customers\";i:1;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2022-41\";s:10:\"date_start\";s:19:\"2022-10-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-09 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-16 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-16 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:7:\"2022-40\";s:10:\"date_start\";s:19:\"2022-10-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-02 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-09 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:7:\"2022-39\";s:10:\"date_start\";s:19:\"2022-10-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-09-30 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-02 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:4;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(3227, '_transient_timeout_wc_report_orders_stats_d9b5f27165ccaabb60ab7d27aff17319', '1667072943', 'no'),
(3228, '_transient_wc_report_orders_stats_d9b5f27165ccaabb60ab7d27aff17319', 'a:2:{s:7:\"version\";s:10:\"1666468116\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:2;s:14:\"num_items_sold\";i:2;s:11:\"gross_sales\";d:579.89;s:11:\"total_sales\";d:579.89;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:579.89;s:19:\"avg_items_per_order\";d:1;s:15:\"avg_order_value\";d:289.945;s:15:\"total_customers\";i:1;s:8:\"products\";i:2;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:4:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-42\";s:10:\"date_start\";s:19:\"2022-10-17 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-16 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-22 21:49:02\";s:12:\"date_end_gmt\";s:19:\"2022-10-22 19:49:02\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:2;s:14:\"num_items_sold\";i:2;s:11:\"gross_sales\";d:579.89;s:11:\"total_sales\";d:579.89;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:579.89;s:19:\"avg_items_per_order\";d:1;s:15:\"avg_order_value\";d:289.945;s:15:\"total_customers\";i:1;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2022-41\";s:10:\"date_start\";s:19:\"2022-10-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-09 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-16 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-16 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:7:\"2022-40\";s:10:\"date_start\";s:19:\"2022-10-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-02 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-09 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:7:\"2022-39\";s:10:\"date_start\";s:19:\"2022-10-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-09-30 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-02 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:4;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(3229, '_transient_timeout_wc_report_products_stats_e373ffd334f26e066aa021d943595e96', '1667072944', 'no'),
(3230, '_transient_wc_report_products_stats_e373ffd334f26e066aa021d943595e96', 'a:2:{s:7:\"version\";s:10:\"1666468116\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":6:{s:10:\"items_sold\";i:2;s:11:\"net_revenue\";d:579.89;s:12:\"orders_count\";i:2;s:14:\"products_count\";i:2;s:16:\"variations_count\";i:1;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:4:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-42\";s:10:\"date_start\";s:19:\"2022-10-17 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-16 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-22 21:49:02\";s:12:\"date_end_gmt\";s:19:\"2022-10-22 19:49:02\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:10:\"items_sold\";i:2;s:11:\"net_revenue\";d:579.89;s:12:\"orders_count\";i:2;s:14:\"products_count\";i:2;s:16:\"variations_count\";i:1;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2022-41\";s:10:\"date_start\";s:19:\"2022-10-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-09 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-16 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-16 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:14:\"products_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:7:\"2022-40\";s:10:\"date_start\";s:19:\"2022-10-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-02 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-09 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:14:\"products_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:7:\"2022-39\";s:10:\"date_start\";s:19:\"2022-10-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-09-30 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-02 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:14:\"products_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:4;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(3231, '_transient_timeout_wc_report_variations_stats_78b59f294b2927c8f06d4fdb0670bdc8', '1667072944', 'no'),
(3232, '_transient_wc_report_variations_stats_78b59f294b2927c8f06d4fdb0670bdc8', 'a:2:{s:7:\"version\";s:10:\"1666468116\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":5:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:4:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-42\";s:10:\"date_start\";s:19:\"2022-10-17 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-16 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-22 21:49:02\";s:12:\"date_end_gmt\";s:19:\"2022-10-22 19:49:02\";s:9:\"subtotals\";O:8:\"stdClass\":5:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2022-41\";s:10:\"date_start\";s:19:\"2022-10-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-09 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-16 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-16 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":5:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:7:\"2022-40\";s:10:\"date_start\";s:19:\"2022-10-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-02 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-09 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":5:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:7:\"2022-39\";s:10:\"date_start\";s:19:\"2022-10-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-09-30 22:00:00\";s:8:\"date_end\";s:19:\"2022-10-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-02 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":5:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:4;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(3247, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(3270, 'woocommerce_sales_record_date', '2022-10-22', 'yes'),
(3271, 'woocommerce_sales_record_amount', '878.79', 'yes'),
(3299, '_transient_timeout_wc_tracks_blog_details', '1666640361', 'no'),
(3300, '_transient_wc_tracks_blog_details', 'a:5:{s:3:\"url\";s:21:\"http://localhost/shop\";s:9:\"blog_lang\";s:5:\"sk_SK\";s:7:\"blog_id\";N;s:14:\"products_count\";s:2:\"31\";s:10:\"wc_version\";s:5:\"6.9.4\";}', 'no'),
(3361, '_transient_timeout__woocommerce_helper_subscriptions', '1666640738', 'no'),
(3362, '_transient__woocommerce_helper_subscriptions', 'a:0:{}', 'no'),
(3363, '_site_transient_timeout_theme_roots', '1666641638', 'no'),
(3364, '_site_transient_theme_roots', 'a:5:{s:41:\"PawsGang-eCommerce-Theme-WooCommerce-main\";s:7:\"/themes\";s:4:\"shop\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no'),
(3365, '_transient_timeout__woocommerce_helper_updates', '1666683038', 'no'),
(3366, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1666639838;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no'),
(3369, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/sk_SK/wordpress-6.0.3.zip\";s:6:\"locale\";s:5:\"sk_SK\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/sk_SK/wordpress-6.0.3.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.0.3\";s:7:\"version\";s:5:\"6.0.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.0.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.0.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.0.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.0.3-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.0.3-partial-2.zip\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.0.3\";s:7:\"version\";s:5:\"6.0.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:5:\"6.0.2\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/sk_SK/wordpress-6.0.3.zip\";s:6:\"locale\";s:5:\"sk_SK\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/sk_SK/wordpress-6.0.3.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.0.3\";s:7:\"version\";s:5:\"6.0.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1666639841;s:15:\"version_checked\";s:5:\"6.0.2\";s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"6.0.2\";s:7:\"updated\";s:19:\"2022-10-11 11:10:34\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.0.2/sk_SK.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(3370, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1666639841;s:7:\"checked\";a:5:{s:41:\"PawsGang-eCommerce-Theme-WooCommerce-main\";s:5:\"1.0.0\";s:4:\"shop\";s:0:\"\";s:12:\"twentytwenty\";s:3:\"2.0\";s:15:\"twentytwentyone\";s:3:\"1.6\";s:15:\"twentytwentytwo\";s:3:\"1.2\";}s:8:\"response\";a:1:{s:4:\"shop\";a:6:{s:5:\"theme\";s:4:\"shop\";s:11:\"new_version\";s:4:\"1.02\";s:3:\"url\";s:34:\"https://wordpress.org/themes/shop/\";s:7:\"package\";s:51:\"https://downloads.wordpress.org/theme/shop.1.02.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";b:0;}}s:9:\"no_update\";a:3:{s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.2.0.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.6.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.2.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(3371, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1666639841;s:8:\"response\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"5.0.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.5.0.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";s:6:\"tested\";s:5:\"6.0.3\";s:12:\"requires_php\";s:3:\"5.2\";}s:51:\"google-listings-and-ads/google-listings-and-ads.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:37:\"w.org/plugins/google-listings-and-ads\";s:4:\"slug\";s:23:\"google-listings-and-ads\";s:6:\"plugin\";s:51:\"google-listings-and-ads/google-listings-and-ads.php\";s:11:\"new_version\";s:5:\"2.2.0\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/google-listings-and-ads/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/google-listings-and-ads.2.2.0.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:76:\"https://ps.w.org/google-listings-and-ads/assets/icon-256x256.png?rev=2775988\";s:2:\"1x\";s:68:\"https://ps.w.org/google-listings-and-ads/assets/icon.svg?rev=2775988\";s:3:\"svg\";s:68:\"https://ps.w.org/google-listings-and-ads/assets/icon.svg?rev=2775988\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/google-listings-and-ads/assets/banner-1544x500.png?rev=2542080\";s:2:\"1x\";s:78:\"https://ps.w.org/google-listings-and-ads/assets/banner-772x250.png?rev=2542080\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.7\";s:6:\"tested\";s:5:\"6.0.3\";s:12:\"requires_php\";s:3:\"7.4\";}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"7.0.0\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.7.0.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2366418\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2366418\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2366418\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2366418\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";s:6:\"tested\";s:5:\"6.0.3\";s:12:\"requires_php\";s:3:\"7.2\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:43:\"advanced-woo-search/advanced-woo-search.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:33:\"w.org/plugins/advanced-woo-search\";s:4:\"slug\";s:19:\"advanced-woo-search\";s:6:\"plugin\";s:43:\"advanced-woo-search/advanced-woo-search.php\";s:11:\"new_version\";s:4:\"2.65\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/advanced-woo-search/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/advanced-woo-search.2.65.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/advanced-woo-search/assets/icon-128x128.jpg?rev=2244825\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-woo-search/assets/banner-1544x500.jpg?rev=2244825\";s:2:\"1x\";s:74:\"https://ps.w.org/advanced-woo-search/assets/banner-772x250.jpg?rev=2244825\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.0\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:5:{s:43:\"advanced-woo-search/advanced-woo-search.php\";s:4:\"2.65\";s:19:\"akismet/akismet.php\";s:3:\"5.0\";s:51:\"google-listings-and-ads/google-listings-and-ads.php\";s:5:\"2.1.4\";s:9:\"hello.php\";s:5:\"1.7.2\";s:27:\"woocommerce/woocommerce.php\";s:5:\"6.9.4\";}}', 'no'),
(3488, '_transient_timeout_global_styles_PawsGang-eCommerce-Theme-WooCommerce-main', '1666642420', 'no'),
(3489, '_transient_global_styles_PawsGang-eCommerce-Theme-WooCommerce-main', 'body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}', 'no'),
(3490, '_transient_timeout_global_styles_svg_filters_PawsGang-eCommerce-Theme-WooCommerce-main', '1666642420', 'no'),
(3491, '_transient_global_styles_svg_filters_PawsGang-eCommerce-Theme-WooCommerce-main', '<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-dark-grayscale\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncG type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncB type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-grayscale\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 1\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0 1\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-purple-yellow\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.54901960784314 0.98823529411765\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0.71764705882353 0.25490196078431\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-blue-red\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 1\" /><feFuncG type=\"table\" tableValues=\"0 0.27843137254902\" /><feFuncB type=\"table\" tableValues=\"0.5921568627451 0.27843137254902\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-midnight\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 0\" /><feFuncG type=\"table\" tableValues=\"0 0.64705882352941\" /><feFuncB type=\"table\" tableValues=\"0 1\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-magenta-yellow\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.78039215686275 1\" /><feFuncG type=\"table\" tableValues=\"0 0.94901960784314\" /><feFuncB type=\"table\" tableValues=\"0.35294117647059 0.47058823529412\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-purple-green\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.65098039215686 0.40392156862745\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0.44705882352941 0.4\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-blue-orange\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.098039215686275 1\" /><feFuncG type=\"table\" tableValues=\"0 0.66274509803922\" /><feFuncB type=\"table\" tableValues=\"0.84705882352941 0.41960784313725\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg>', 'no');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Sťahujem dáta pre tabuľku `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_wp_attached_file', 'woocommerce-placeholder.png'),
(4, 5, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:8:\"filesize\";i:102644;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(5, 11, '_edit_last', '1'),
(6, 11, '_edit_lock', '1665934139:1'),
(7, 11, '_regular_price', '20'),
(8, 11, 'total_sales', '7'),
(9, 11, '_tax_status', 'taxable'),
(10, 11, '_tax_class', ''),
(11, 11, '_manage_stock', 'no'),
(12, 11, '_backorders', 'no'),
(13, 11, '_sold_individually', 'no'),
(14, 11, '_virtual', 'no'),
(15, 11, '_downloadable', 'no'),
(16, 11, '_download_limit', '-1'),
(17, 11, '_download_expiry', '-1'),
(18, 11, '_stock', NULL),
(19, 11, '_stock_status', 'instock'),
(20, 11, '_wc_average_rating', '0'),
(21, 11, '_wc_review_count', '0'),
(22, 11, '_product_version', '6.9.4'),
(23, 11, '_price', '15'),
(24, 13, '_wp_attached_file', '2022/10/other-small.jpg'),
(25, 13, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:23:\"2022/10/other-small.jpg\";s:8:\"filesize\";i:75576;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(26, 13, '_source_url', 'http://localhost/shop/wp-content/plugins/woocommerce/assets/images/onboarding/other-small.jpg'),
(27, 12, '_edit_lock', '1665432380:1'),
(122, 11, '_sale_price', '15'),
(123, 20, '_edit_last', '1'),
(124, 20, '_edit_lock', '1665431901:1'),
(125, 20, 'total_sales', '0'),
(126, 20, '_tax_status', 'taxable'),
(127, 20, '_tax_class', ''),
(128, 20, '_manage_stock', 'no'),
(129, 20, '_backorders', 'no'),
(130, 20, '_sold_individually', 'no'),
(131, 20, '_virtual', 'no'),
(132, 20, '_downloadable', 'no'),
(133, 20, '_download_limit', '-1'),
(134, 20, '_download_expiry', '-1'),
(135, 20, '_stock', NULL),
(136, 20, '_stock_status', 'instock'),
(137, 20, '_wc_average_rating', '0'),
(138, 20, '_wc_review_count', '0'),
(139, 20, '_product_version', '6.9.4'),
(140, 20, '_regular_price', '300'),
(141, 20, '_sale_price', '290'),
(142, 20, '_price', '290'),
(143, 21, '_edit_last', '1'),
(144, 21, '_edit_lock', '1665431920:1'),
(145, 21, '_regular_price', '40'),
(146, 21, '_sale_price', '35'),
(147, 21, 'total_sales', '3'),
(148, 21, '_tax_status', 'taxable'),
(149, 21, '_tax_class', ''),
(150, 21, '_manage_stock', 'no'),
(151, 21, '_backorders', 'no'),
(152, 21, '_sold_individually', 'no'),
(153, 21, '_virtual', 'no'),
(154, 21, '_downloadable', 'no'),
(155, 21, '_download_limit', '-1'),
(156, 21, '_download_expiry', '-1'),
(157, 21, '_stock', NULL),
(158, 21, '_stock_status', 'instock'),
(159, 21, '_wc_average_rating', '0'),
(160, 21, '_wc_review_count', '0'),
(161, 21, '_product_version', '6.9.4'),
(162, 21, '_price', '35'),
(163, 8, '_edit_lock', '1665928486:1'),
(164, 6, '_edit_lock', '1665923142:1'),
(165, 9, '_edit_lock', '1665923003:1'),
(168, 2, '_edit_lock', '1665927499:1'),
(169, 29, '_menu_item_type', 'post_type'),
(170, 29, '_menu_item_menu_item_parent', '0'),
(171, 29, '_menu_item_object_id', '12'),
(172, 29, '_menu_item_object', 'page'),
(173, 29, '_menu_item_target', ''),
(174, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(175, 29, '_menu_item_xfn', ''),
(176, 29, '_menu_item_url', ''),
(177, 29, '_menu_item_orphaned', '1665925345'),
(187, 31, '_menu_item_type', 'post_type'),
(188, 31, '_menu_item_menu_item_parent', '0'),
(189, 31, '_menu_item_object_id', '9'),
(190, 31, '_menu_item_object', 'page'),
(191, 31, '_menu_item_target', ''),
(192, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(193, 31, '_menu_item_xfn', ''),
(194, 31, '_menu_item_url', ''),
(195, 31, '_menu_item_orphaned', '1665925345'),
(196, 32, '_menu_item_type', 'post_type'),
(197, 32, '_menu_item_menu_item_parent', '0'),
(198, 32, '_menu_item_object_id', '6'),
(199, 32, '_menu_item_object', 'page'),
(200, 32, '_menu_item_target', ''),
(201, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(202, 32, '_menu_item_xfn', ''),
(203, 32, '_menu_item_url', ''),
(204, 32, '_menu_item_orphaned', '1665925345'),
(205, 33, '_menu_item_type', 'post_type'),
(206, 33, '_menu_item_menu_item_parent', '0'),
(207, 33, '_menu_item_object_id', '8'),
(208, 33, '_menu_item_object', 'page'),
(209, 33, '_menu_item_target', ''),
(210, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(211, 33, '_menu_item_xfn', ''),
(212, 33, '_menu_item_url', ''),
(213, 33, '_menu_item_orphaned', '1665925345'),
(223, 35, '_menu_item_type', 'post_type'),
(224, 35, '_menu_item_menu_item_parent', '0'),
(225, 35, '_menu_item_object_id', '2'),
(226, 35, '_menu_item_object', 'page'),
(227, 35, '_menu_item_target', ''),
(228, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(229, 35, '_menu_item_xfn', ''),
(230, 35, '_menu_item_url', ''),
(231, 35, '_menu_item_orphaned', '1665925345'),
(235, 2, '_wp_trash_meta_status', 'publish'),
(236, 2, '_wp_trash_meta_time', '1665933564'),
(237, 2, '_wp_desired_post_slug', 'ukazkova-stranka'),
(284, 39, '_edit_lock', '1666206345:1'),
(285, 42, '_order_key', 'wc_order_1EPRqDQepTJZa'),
(286, 42, '_customer_user', '1'),
(287, 42, '_payment_method', 'cod'),
(288, 42, '_payment_method_title', 'Dobierka'),
(289, 42, '_customer_ip_address', '::1'),
(290, 42, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(291, 42, '_created_via', 'checkout'),
(292, 42, '_cart_hash', '819eb4969d8cfafa95296286669e83a8'),
(293, 42, '_billing_first_name', 'Daniel'),
(294, 42, '_billing_last_name', 'Rzeszoto'),
(295, 42, '_billing_address_1', 'Nanterská 17'),
(296, 42, '_billing_city', 'Žilina'),
(297, 42, '_billing_postcode', '01008'),
(298, 42, '_billing_country', 'SK'),
(299, 42, '_billing_email', 'rzeszotodaniel@gmail.com'),
(300, 42, '_billing_phone', '0904646235'),
(301, 42, '_shipping_first_name', 'Daniel'),
(302, 42, '_shipping_last_name', 'Rzeszoto'),
(303, 42, '_shipping_address_1', 'Nanterská 17'),
(304, 42, '_shipping_city', 'Žilina'),
(305, 42, '_shipping_postcode', '01008'),
(306, 42, '_shipping_country', 'SK'),
(307, 42, '_order_currency', 'EUR'),
(308, 42, '_cart_discount', '0'),
(309, 42, '_cart_discount_tax', '0'),
(310, 42, '_order_shipping', '0'),
(311, 42, '_order_shipping_tax', '0'),
(312, 42, '_order_tax', '0'),
(313, 42, '_order_total', '105.00'),
(314, 42, '_order_version', '6.9.4'),
(315, 42, '_prices_include_tax', 'no'),
(316, 42, '_billing_address_index', 'Daniel Rzeszoto  Nanterská 17  Žilina  01008 SK rzeszotodaniel@gmail.com 0904646235'),
(317, 42, '_shipping_address_index', 'Daniel Rzeszoto  Nanterská 17  Žilina  01008 SK '),
(318, 42, 'is_vat_exempt', 'no'),
(319, 42, '_download_permissions_granted', 'yes'),
(320, 42, '_recorded_sales', 'yes'),
(321, 42, '_recorded_coupon_usage_counts', 'yes'),
(322, 42, '_order_stock_reduced', 'yes'),
(323, 42, '_new_order_email_sent', 'true'),
(324, 42, '_wp_trash_meta_status', 'wc-processing'),
(325, 42, '_wp_trash_meta_time', '1666122055'),
(326, 42, '_wp_desired_post_slug', 'objednat-oct-18-2022-0738-pm'),
(327, 42, '_wp_trash_meta_comments_status', 'a:1:{i:7;s:1:\"1\";}'),
(328, 44, '_menu_item_type', 'post_type'),
(329, 44, '_menu_item_menu_item_parent', '0'),
(330, 44, '_menu_item_object_id', '12'),
(331, 44, '_menu_item_object', 'page'),
(332, 44, '_menu_item_target', ''),
(333, 44, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(334, 44, '_menu_item_xfn', ''),
(335, 44, '_menu_item_url', ''),
(336, 44, '_menu_item_orphaned', '1666200233'),
(337, 45, '_menu_item_type', 'post_type'),
(338, 45, '_menu_item_menu_item_parent', '0'),
(339, 45, '_menu_item_object_id', '39'),
(340, 45, '_menu_item_object', 'page'),
(341, 45, '_menu_item_target', ''),
(342, 45, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(343, 45, '_menu_item_xfn', ''),
(344, 45, '_menu_item_url', ''),
(345, 45, '_menu_item_orphaned', '1666200233'),
(346, 46, '_menu_item_type', 'post_type'),
(347, 46, '_menu_item_menu_item_parent', '0'),
(348, 46, '_menu_item_object_id', '9'),
(349, 46, '_menu_item_object', 'page'),
(350, 46, '_menu_item_target', ''),
(351, 46, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(352, 46, '_menu_item_xfn', ''),
(353, 46, '_menu_item_url', ''),
(354, 46, '_menu_item_orphaned', '1666200234'),
(355, 47, '_menu_item_type', 'post_type'),
(356, 47, '_menu_item_menu_item_parent', '0'),
(357, 47, '_menu_item_object_id', '6'),
(358, 47, '_menu_item_object', 'page'),
(359, 47, '_menu_item_target', ''),
(360, 47, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(361, 47, '_menu_item_xfn', ''),
(362, 47, '_menu_item_url', ''),
(363, 47, '_menu_item_orphaned', '1666200234'),
(364, 48, '_menu_item_type', 'post_type'),
(365, 48, '_menu_item_menu_item_parent', '0'),
(366, 48, '_menu_item_object_id', '8'),
(367, 48, '_menu_item_object', 'page'),
(368, 48, '_menu_item_target', ''),
(369, 48, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(370, 48, '_menu_item_xfn', ''),
(371, 48, '_menu_item_url', ''),
(372, 48, '_menu_item_orphaned', '1666200234'),
(373, 49, '_edit_last', '1'),
(374, 49, '_edit_lock', '1666441683:1'),
(375, 49, '_regular_price', '758.90'),
(376, 49, 'total_sales', '0'),
(377, 49, '_tax_status', 'taxable'),
(378, 49, '_tax_class', ''),
(379, 49, '_manage_stock', 'no'),
(380, 49, '_backorders', 'no'),
(381, 49, '_sold_individually', 'no'),
(382, 49, '_virtual', 'no'),
(383, 49, '_downloadable', 'no'),
(384, 49, '_download_limit', '-1'),
(385, 49, '_download_expiry', '-1'),
(386, 49, '_stock', NULL),
(387, 49, '_stock_status', 'instock'),
(388, 49, '_wc_average_rating', '0'),
(389, 49, '_wc_review_count', '0'),
(390, 49, '_product_version', '6.9.4'),
(391, 49, '_price', '758.90'),
(392, 51, '_wp_attached_file', '2022/10/ImgW.jpg'),
(393, 51, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:16:\"2022/10/ImgW.jpg\";s:8:\"filesize\";i:57541;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(394, 49, '_thumbnail_id', '51'),
(395, 52, '_edit_last', '1'),
(396, 52, '_edit_lock', '1666441782:1'),
(397, 53, '_wp_attached_file', '2022/10/Img1.jpg'),
(398, 53, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:16:\"2022/10/Img1.jpg\";s:8:\"filesize\";i:130665;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(399, 52, '_thumbnail_id', '53'),
(400, 52, '_regular_price', '1369'),
(401, 52, 'total_sales', '0'),
(402, 52, '_tax_status', 'taxable'),
(403, 52, '_tax_class', ''),
(404, 52, '_manage_stock', 'no'),
(405, 52, '_backorders', 'no'),
(406, 52, '_sold_individually', 'no'),
(407, 52, '_virtual', 'no'),
(408, 52, '_downloadable', 'no'),
(409, 52, '_download_limit', '-1'),
(410, 52, '_download_expiry', '-1'),
(411, 52, '_stock', NULL),
(412, 52, '_stock_status', 'instock'),
(413, 52, '_wc_average_rating', '0'),
(414, 52, '_wc_review_count', '0'),
(415, 52, '_product_version', '6.9.4'),
(416, 52, '_price', '1369'),
(417, 21, '_wp_trash_meta_status', 'publish'),
(418, 21, '_wp_trash_meta_time', '1666441935'),
(419, 21, '_wp_desired_post_slug', 'klavesnica'),
(420, 20, '_wp_trash_meta_status', 'publish'),
(421, 20, '_wp_trash_meta_time', '1666441940'),
(422, 20, '_wp_desired_post_slug', 'telefon'),
(423, 11, '_wp_trash_meta_status', 'publish'),
(424, 11, '_wp_trash_meta_time', '1666441946'),
(425, 11, '_wp_desired_post_slug', 'sluchadla'),
(426, 54, '_edit_last', '1'),
(427, 54, '_edit_lock', '1666441963:1'),
(428, 55, '_wp_attached_file', '2022/10/ImgW-1.jpg'),
(429, 55, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:18:\"2022/10/ImgW-1.jpg\";s:8:\"filesize\";i:64583;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(430, 54, '_thumbnail_id', '55'),
(431, 54, '_regular_price', '468.90'),
(432, 54, 'total_sales', '0'),
(433, 54, '_tax_status', 'taxable'),
(434, 54, '_tax_class', ''),
(435, 54, '_manage_stock', 'no'),
(436, 54, '_backorders', 'no'),
(437, 54, '_sold_individually', 'no'),
(438, 54, '_virtual', 'no'),
(439, 54, '_downloadable', 'no'),
(440, 54, '_download_limit', '-1'),
(441, 54, '_download_expiry', '-1'),
(442, 54, '_stock', NULL),
(443, 54, '_stock_status', 'instock'),
(444, 54, '_wc_average_rating', '0'),
(445, 54, '_wc_review_count', '0'),
(446, 54, '_product_version', '6.9.4'),
(447, 54, '_price', '468.90'),
(448, 57, '_wp_attached_file', '2022/10/ImgW-2.jpg'),
(449, 57, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:18:\"2022/10/ImgW-2.jpg\";s:8:\"filesize\";i:72851;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(450, 56, '_edit_last', '1'),
(451, 56, '_thumbnail_id', '57'),
(452, 56, '_regular_price', '472'),
(453, 56, '_sale_price', '471.90'),
(454, 56, 'total_sales', '0'),
(455, 56, '_tax_status', 'taxable'),
(456, 56, '_tax_class', ''),
(457, 56, '_manage_stock', 'no'),
(458, 56, '_backorders', 'no'),
(459, 56, '_sold_individually', 'no'),
(460, 56, '_virtual', 'no'),
(461, 56, '_downloadable', 'no'),
(462, 56, '_download_limit', '-1'),
(463, 56, '_download_expiry', '-1'),
(464, 56, '_stock', NULL),
(465, 56, '_stock_status', 'instock'),
(466, 56, '_wc_average_rating', '0'),
(467, 56, '_wc_review_count', '0'),
(468, 56, '_product_version', '6.9.4'),
(469, 56, '_price', '471.90'),
(470, 56, '_edit_lock', '1666443454:1'),
(471, 58, '_edit_last', '1'),
(472, 58, '_edit_lock', '1666443576:1'),
(473, 59, '_wp_attached_file', '2022/10/ImgW-3.jpg'),
(474, 59, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:18:\"2022/10/ImgW-3.jpg\";s:8:\"filesize\";i:59576;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(475, 58, '_thumbnail_id', '59'),
(476, 58, '_regular_price', '730.90'),
(477, 58, '_sale_price', '679.86'),
(478, 58, 'total_sales', '0'),
(479, 58, '_tax_status', 'taxable'),
(480, 58, '_tax_class', ''),
(481, 58, '_manage_stock', 'no'),
(482, 58, '_backorders', 'no'),
(483, 58, '_sold_individually', 'no'),
(484, 58, '_virtual', 'no'),
(485, 58, '_downloadable', 'no'),
(486, 58, '_download_limit', '-1'),
(487, 58, '_download_expiry', '-1'),
(488, 58, '_stock', NULL),
(489, 58, '_stock_status', 'instock'),
(490, 58, '_wc_average_rating', '0'),
(491, 58, '_wc_review_count', '0'),
(492, 58, '_product_version', '6.9.4'),
(493, 58, '_price', '679.86'),
(494, 61, '_wp_attached_file', '2022/10/ImgW-4.jpg'),
(495, 61, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:18:\"2022/10/ImgW-4.jpg\";s:8:\"filesize\";i:66613;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(496, 60, '_edit_last', '1'),
(497, 60, '_thumbnail_id', '61'),
(498, 60, 'total_sales', '0'),
(499, 60, '_tax_status', 'taxable'),
(500, 60, '_tax_class', ''),
(501, 60, '_manage_stock', 'no'),
(502, 60, '_backorders', 'no'),
(503, 60, '_sold_individually', 'no'),
(504, 60, '_virtual', 'no'),
(505, 60, '_downloadable', 'no'),
(506, 60, '_download_limit', '-1'),
(507, 60, '_download_expiry', '-1'),
(508, 60, '_stock', NULL),
(509, 60, '_stock_status', 'instock'),
(510, 60, '_wc_average_rating', '0'),
(511, 60, '_wc_review_count', '0'),
(512, 60, '_product_version', '6.9.4'),
(513, 60, '_edit_lock', '1666465378:1'),
(514, 63, '_wp_attached_file', '2022/10/ImgW-5.jpg'),
(515, 63, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:18:\"2022/10/ImgW-5.jpg\";s:8:\"filesize\";i:70806;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(516, 62, '_edit_last', '1'),
(517, 62, '_thumbnail_id', '63'),
(518, 62, '_regular_price', '463.90'),
(519, 62, 'total_sales', '0'),
(520, 62, '_tax_status', 'taxable'),
(521, 62, '_tax_class', ''),
(522, 62, '_manage_stock', 'no'),
(523, 62, '_backorders', 'no'),
(524, 62, '_sold_individually', 'no'),
(525, 62, '_virtual', 'no'),
(526, 62, '_downloadable', 'no'),
(527, 62, '_download_limit', '-1'),
(528, 62, '_download_expiry', '-1'),
(529, 62, '_stock', NULL),
(530, 62, '_stock_status', 'instock'),
(531, 62, '_wc_average_rating', '0'),
(532, 62, '_wc_review_count', '0'),
(533, 62, '_product_version', '6.9.4'),
(534, 62, '_price', '463.90'),
(535, 62, '_edit_lock', '1666443756:1'),
(536, 65, '_wp_attached_file', '2022/10/ImgW-6.jpg'),
(537, 65, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:18:\"2022/10/ImgW-6.jpg\";s:8:\"filesize\";i:85658;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(538, 64, '_edit_last', '1'),
(539, 64, '_edit_lock', '1666443875:1'),
(540, 64, '_thumbnail_id', '65'),
(541, 64, '_regular_price', '464.90'),
(542, 64, 'total_sales', '0'),
(543, 64, '_tax_status', 'taxable'),
(544, 64, '_tax_class', ''),
(545, 64, '_manage_stock', 'no'),
(546, 64, '_backorders', 'no'),
(547, 64, '_sold_individually', 'no'),
(548, 64, '_virtual', 'no'),
(549, 64, '_downloadable', 'no'),
(550, 64, '_download_limit', '-1'),
(551, 64, '_download_expiry', '-1'),
(552, 64, '_stock', NULL),
(553, 64, '_stock_status', 'instock'),
(554, 64, '_wc_average_rating', '0'),
(555, 64, '_wc_review_count', '0'),
(556, 64, '_product_version', '6.9.4'),
(557, 64, '_price', '464.90'),
(558, 66, '_edit_last', '1'),
(559, 66, '_edit_lock', '1666444011:1'),
(560, 67, '_wp_attached_file', '2022/10/ImgW-7.jpg'),
(561, 67, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:550;s:6:\"height\";i:550;s:4:\"file\";s:18:\"2022/10/ImgW-7.jpg\";s:8:\"filesize\";i:28808;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(562, 66, '_thumbnail_id', '67'),
(563, 66, '_regular_price', '478.90'),
(564, 66, 'total_sales', '0'),
(565, 66, '_tax_status', 'taxable'),
(566, 66, '_tax_class', ''),
(567, 66, '_manage_stock', 'no'),
(568, 66, '_backorders', 'no'),
(569, 66, '_sold_individually', 'no'),
(570, 66, '_virtual', 'no'),
(571, 66, '_downloadable', 'no'),
(572, 66, '_download_limit', '-1'),
(573, 66, '_download_expiry', '-1'),
(574, 66, '_stock', NULL),
(575, 66, '_stock_status', 'instock'),
(576, 66, '_wc_average_rating', '0'),
(577, 66, '_wc_review_count', '0'),
(578, 66, '_product_version', '6.9.4'),
(579, 66, '_price', '478.90'),
(580, 68, '_edit_last', '1'),
(581, 68, '_edit_lock', '1666444088:1'),
(582, 69, '_wp_attached_file', '2022/10/ImgW-8.jpg'),
(583, 69, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:18:\"2022/10/ImgW-8.jpg\";s:8:\"filesize\";i:77424;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(584, 68, '_thumbnail_id', '69'),
(585, 68, '_regular_price', '484.90'),
(586, 68, 'total_sales', '0'),
(587, 68, '_tax_status', 'taxable'),
(588, 68, '_tax_class', ''),
(589, 68, '_manage_stock', 'no'),
(590, 68, '_backorders', 'no'),
(591, 68, '_sold_individually', 'no'),
(592, 68, '_virtual', 'no'),
(593, 68, '_downloadable', 'no'),
(594, 68, '_download_limit', '-1'),
(595, 68, '_download_expiry', '-1'),
(596, 68, '_stock', NULL),
(597, 68, '_stock_status', 'instock'),
(598, 68, '_wc_average_rating', '0'),
(599, 68, '_wc_review_count', '0'),
(600, 68, '_product_version', '6.9.4'),
(601, 68, '_price', '484.90'),
(602, 70, '_edit_last', '1'),
(603, 70, '_edit_lock', '1666444266:1'),
(604, 71, '_wp_attached_file', '2022/10/ImgW-9.jpg'),
(605, 71, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:640;s:6:\"height\";i:640;s:4:\"file\";s:18:\"2022/10/ImgW-9.jpg\";s:8:\"filesize\";i:39741;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(606, 70, '_thumbnail_id', '71'),
(607, 70, '_regular_price', '515'),
(608, 70, 'total_sales', '0'),
(609, 70, '_tax_status', 'taxable'),
(610, 70, '_tax_class', ''),
(611, 70, '_manage_stock', 'no'),
(612, 70, '_backorders', 'no'),
(613, 70, '_sold_individually', 'no'),
(614, 70, '_virtual', 'no'),
(615, 70, '_downloadable', 'no'),
(616, 70, '_download_limit', '-1'),
(617, 70, '_download_expiry', '-1'),
(618, 70, '_stock', NULL),
(619, 70, '_stock_status', 'instock'),
(620, 70, '_wc_average_rating', '0'),
(621, 70, '_wc_review_count', '0'),
(622, 70, '_product_version', '6.9.4'),
(623, 70, '_price', '515'),
(624, 73, '_wp_attached_file', '2022/10/ImgW-10.jpg'),
(625, 73, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:640;s:6:\"height\";i:640;s:4:\"file\";s:19:\"2022/10/ImgW-10.jpg\";s:8:\"filesize\";i:44503;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(626, 72, '_edit_last', '1'),
(627, 72, '_thumbnail_id', '73'),
(628, 72, '_regular_price', '199'),
(629, 72, 'total_sales', '0'),
(630, 72, '_tax_status', 'taxable'),
(631, 72, '_tax_class', ''),
(632, 72, '_manage_stock', 'no'),
(633, 72, '_backorders', 'no'),
(634, 72, '_sold_individually', 'no'),
(635, 72, '_virtual', 'no'),
(636, 72, '_downloadable', 'no'),
(637, 72, '_download_limit', '-1'),
(638, 72, '_download_expiry', '-1'),
(639, 72, '_stock', NULL),
(640, 72, '_stock_status', 'instock'),
(641, 72, '_wc_average_rating', '0'),
(642, 72, '_wc_review_count', '0'),
(643, 72, '_product_version', '6.9.4'),
(644, 72, '_price', '199'),
(645, 72, '_edit_lock', '1666444320:1'),
(646, 74, '_edit_last', '1'),
(647, 74, '_edit_lock', '1666444389:1'),
(648, 75, '_wp_attached_file', '2022/10/RI028c2.jpg'),
(649, 75, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:19:\"2022/10/RI028c2.jpg\";s:8:\"filesize\";i:63758;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(650, 74, '_thumbnail_id', '75'),
(651, 74, '_regular_price', '565.90'),
(652, 74, 'total_sales', '1'),
(653, 74, '_tax_status', 'taxable'),
(654, 74, '_tax_class', ''),
(655, 74, '_manage_stock', 'no'),
(656, 74, '_backorders', 'no'),
(657, 74, '_sold_individually', 'no'),
(658, 74, '_virtual', 'no'),
(659, 74, '_downloadable', 'no'),
(660, 74, '_download_limit', '-1'),
(661, 74, '_download_expiry', '-1'),
(662, 74, '_stock', NULL),
(663, 74, '_stock_status', 'instock'),
(664, 74, '_wc_average_rating', '0'),
(665, 74, '_wc_review_count', '0'),
(666, 74, '_product_version', '6.9.4'),
(667, 74, '_price', '565.90'),
(668, 77, '_wp_attached_file', '2022/10/ImgW-11.jpg'),
(669, 77, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:19:\"2022/10/ImgW-11.jpg\";s:8:\"filesize\";i:88164;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(670, 76, '_edit_last', '1'),
(671, 76, '_thumbnail_id', '77'),
(672, 76, '_regular_price', '609.90'),
(673, 76, 'total_sales', '0'),
(674, 76, '_tax_status', 'taxable'),
(675, 76, '_tax_class', ''),
(676, 76, '_manage_stock', 'no'),
(677, 76, '_backorders', 'no'),
(678, 76, '_sold_individually', 'no'),
(679, 76, '_virtual', 'no'),
(680, 76, '_downloadable', 'no'),
(681, 76, '_download_limit', '-1'),
(682, 76, '_download_expiry', '-1'),
(683, 76, '_stock', NULL),
(684, 76, '_stock_status', 'instock'),
(685, 76, '_wc_average_rating', '0'),
(686, 76, '_wc_review_count', '0'),
(687, 76, '_product_version', '6.9.4'),
(688, 76, '_price', '609.90'),
(689, 76, '_edit_lock', '1666444437:1'),
(690, 79, '_wp_attached_file', '2022/10/ImgW-12.jpg'),
(691, 79, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:19:\"2022/10/ImgW-12.jpg\";s:8:\"filesize\";i:89481;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(692, 78, '_edit_last', '1'),
(693, 78, '_thumbnail_id', '79'),
(694, 78, '_regular_price', '898.90'),
(695, 78, 'total_sales', '0'),
(696, 78, '_tax_status', 'taxable'),
(697, 78, '_tax_class', ''),
(698, 78, '_manage_stock', 'no'),
(699, 78, '_backorders', 'no'),
(700, 78, '_sold_individually', 'no'),
(701, 78, '_virtual', 'no'),
(702, 78, '_downloadable', 'no'),
(703, 78, '_download_limit', '-1'),
(704, 78, '_download_expiry', '-1'),
(705, 78, '_stock', NULL),
(706, 78, '_stock_status', 'instock'),
(707, 78, '_wc_average_rating', '0'),
(708, 78, '_wc_review_count', '0'),
(709, 78, '_product_version', '6.9.4'),
(710, 78, '_price', '898.90'),
(711, 78, '_edit_lock', '1666444512:1'),
(712, 81, '_wp_attached_file', '2022/10/ImgW-13.jpg'),
(713, 81, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:19:\"2022/10/ImgW-13.jpg\";s:8:\"filesize\";i:57194;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(714, 80, '_edit_last', '1'),
(715, 80, '_thumbnail_id', '81'),
(716, 80, '_regular_price', '295.90'),
(717, 80, 'total_sales', '0'),
(718, 80, '_tax_status', 'taxable'),
(719, 80, '_tax_class', ''),
(720, 80, '_manage_stock', 'no'),
(721, 80, '_backorders', 'no'),
(722, 80, '_sold_individually', 'no'),
(723, 80, '_virtual', 'no'),
(724, 80, '_downloadable', 'no'),
(725, 80, '_download_limit', '-1'),
(726, 80, '_download_expiry', '-1'),
(727, 80, '_stock', NULL),
(728, 80, '_stock_status', 'instock'),
(729, 80, '_wc_average_rating', '0'),
(730, 80, '_wc_review_count', '0'),
(731, 80, '_product_version', '6.9.4'),
(732, 80, '_price', '295.90'),
(733, 80, '_edit_lock', '1666444542:1'),
(734, 82, '_edit_last', '1'),
(735, 82, '_edit_lock', '1666444625:1'),
(736, 83, '_wp_attached_file', '2022/10/JA940i4b.jpg'),
(737, 83, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:20:\"2022/10/JA940i4b.jpg\";s:8:\"filesize\";i:27844;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(738, 82, '_thumbnail_id', '83'),
(739, 82, '_regular_price', '298.90'),
(740, 82, 'total_sales', '1'),
(741, 82, '_tax_status', 'taxable'),
(742, 82, '_tax_class', ''),
(743, 82, '_manage_stock', 'no'),
(744, 82, '_backorders', 'no'),
(745, 82, '_sold_individually', 'no'),
(746, 82, '_virtual', 'no'),
(747, 82, '_downloadable', 'no'),
(748, 82, '_download_limit', '-1'),
(749, 82, '_download_expiry', '-1'),
(750, 82, '_stock', NULL),
(751, 82, '_stock_status', 'instock'),
(752, 82, '_wc_average_rating', '0'),
(753, 82, '_wc_review_count', '0'),
(754, 82, '_product_version', '6.9.4'),
(755, 82, '_price', '298.90'),
(756, 85, '_wp_attached_file', '2022/10/ImgW-14.jpg'),
(757, 85, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:19:\"2022/10/ImgW-14.jpg\";s:8:\"filesize\";i:91922;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(758, 84, '_edit_last', '1'),
(759, 84, '_thumbnail_id', '85'),
(760, 84, '_regular_price', '128.90'),
(761, 84, 'total_sales', '0'),
(762, 84, '_tax_status', 'taxable'),
(763, 84, '_tax_class', ''),
(764, 84, '_manage_stock', 'no'),
(765, 84, '_backorders', 'no'),
(766, 84, '_sold_individually', 'no'),
(767, 84, '_virtual', 'no'),
(768, 84, '_downloadable', 'no'),
(769, 84, '_download_limit', '-1'),
(770, 84, '_download_expiry', '-1'),
(771, 84, '_stock', NULL),
(772, 84, '_stock_status', 'instock'),
(773, 84, '_wc_average_rating', '0'),
(774, 84, '_wc_review_count', '0'),
(775, 84, '_product_version', '6.9.4'),
(776, 84, '_price', '128.90'),
(777, 84, '_edit_lock', '1666444676:1'),
(778, 86, '_edit_last', '1'),
(779, 86, '_edit_lock', '1666444731:1'),
(780, 87, '_wp_attached_file', '2022/10/ImgW-15.jpg'),
(781, 87, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:19:\"2022/10/ImgW-15.jpg\";s:8:\"filesize\";i:78638;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(782, 86, '_thumbnail_id', '87'),
(783, 86, '_regular_price', '101.90'),
(784, 86, 'total_sales', '0'),
(785, 86, '_tax_status', 'taxable'),
(786, 86, '_tax_class', ''),
(787, 86, '_manage_stock', 'no'),
(788, 86, '_backorders', 'no'),
(789, 86, '_sold_individually', 'no'),
(790, 86, '_virtual', 'no'),
(791, 86, '_downloadable', 'no'),
(792, 86, '_download_limit', '-1'),
(793, 86, '_download_expiry', '-1'),
(794, 86, '_stock', NULL),
(795, 86, '_stock_status', 'instock'),
(796, 86, '_wc_average_rating', '0'),
(797, 86, '_wc_review_count', '0'),
(798, 86, '_product_version', '6.9.4'),
(799, 86, '_price', '101.90'),
(800, 88, '_edit_last', '1'),
(801, 88, '_regular_price', '89.90'),
(802, 88, 'total_sales', '0'),
(803, 88, '_tax_status', 'taxable'),
(804, 88, '_tax_class', ''),
(805, 88, '_manage_stock', 'no'),
(806, 88, '_backorders', 'no'),
(807, 88, '_sold_individually', 'no'),
(808, 88, '_virtual', 'no'),
(809, 88, '_downloadable', 'no'),
(810, 88, '_download_limit', '-1'),
(811, 88, '_download_expiry', '-1'),
(812, 88, '_stock', NULL),
(813, 88, '_stock_status', 'instock'),
(814, 88, '_wc_average_rating', '0'),
(815, 88, '_wc_review_count', '0'),
(816, 88, '_product_version', '6.9.4'),
(817, 88, '_price', '89.90'),
(818, 88, '_edit_lock', '1666444801:1'),
(819, 89, '_wp_attached_file', '2022/10/ImgW-16.jpg'),
(820, 89, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:19:\"2022/10/ImgW-16.jpg\";s:8:\"filesize\";i:75436;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(821, 88, '_thumbnail_id', '89'),
(822, 91, '_wp_attached_file', '2022/10/ImgW-17.jpg'),
(823, 91, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:19:\"2022/10/ImgW-17.jpg\";s:8:\"filesize\";i:96562;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(824, 90, '_edit_last', '1'),
(825, 90, '_thumbnail_id', '91'),
(826, 90, '_regular_price', '179'),
(827, 90, 'total_sales', '0'),
(828, 90, '_tax_status', 'taxable'),
(829, 90, '_tax_class', ''),
(830, 90, '_manage_stock', 'no'),
(831, 90, '_backorders', 'no'),
(832, 90, '_sold_individually', 'no'),
(833, 90, '_virtual', 'no'),
(834, 90, '_downloadable', 'no'),
(835, 90, '_download_limit', '-1'),
(836, 90, '_download_expiry', '-1'),
(837, 90, '_stock', NULL),
(838, 90, '_stock_status', 'instock'),
(839, 90, '_wc_average_rating', '0'),
(840, 90, '_wc_review_count', '0'),
(841, 90, '_product_version', '6.9.4'),
(842, 90, '_price', '179'),
(843, 90, '_edit_lock', '1666444892:1'),
(844, 93, '_wp_attached_file', '2022/10/ImgW-18.jpg'),
(845, 93, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:19:\"2022/10/ImgW-18.jpg\";s:8:\"filesize\";i:75812;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(846, 92, '_edit_last', '1'),
(847, 92, '_thumbnail_id', '93'),
(848, 92, '_regular_price', '13.99'),
(849, 92, 'total_sales', '1'),
(850, 92, '_tax_status', 'taxable'),
(851, 92, '_tax_class', ''),
(852, 92, '_manage_stock', 'no'),
(853, 92, '_backorders', 'no'),
(854, 92, '_sold_individually', 'no'),
(855, 92, '_virtual', 'no'),
(856, 92, '_downloadable', 'no'),
(857, 92, '_download_limit', '-1'),
(858, 92, '_download_expiry', '-1'),
(859, 92, '_stock', NULL),
(860, 92, '_stock_status', 'instock'),
(861, 92, '_wc_average_rating', '0'),
(862, 92, '_wc_review_count', '0'),
(863, 92, '_product_version', '6.9.4'),
(864, 92, '_price', '13.99'),
(865, 92, '_edit_lock', '1666444949:1'),
(866, 95, '_wp_attached_file', '2022/10/ImgW-19.jpg'),
(867, 95, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:19:\"2022/10/ImgW-19.jpg\";s:8:\"filesize\";i:78561;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(868, 94, '_edit_last', '1'),
(869, 94, '_thumbnail_id', '95'),
(870, 94, '_regular_price', '19.90'),
(871, 94, 'total_sales', '0'),
(872, 94, '_tax_status', 'taxable'),
(873, 94, '_tax_class', ''),
(874, 94, '_manage_stock', 'no'),
(875, 94, '_backorders', 'no'),
(876, 94, '_sold_individually', 'no'),
(877, 94, '_virtual', 'no'),
(878, 94, '_downloadable', 'no'),
(879, 94, '_download_limit', '-1'),
(880, 94, '_download_expiry', '-1'),
(881, 94, '_stock', NULL),
(882, 94, '_stock_status', 'instock'),
(883, 94, '_wc_average_rating', '0'),
(884, 94, '_wc_review_count', '0'),
(885, 94, '_product_version', '6.9.4'),
(886, 94, '_price', '19.90'),
(887, 94, '_edit_lock', '1666444985:1'),
(888, 96, '_edit_last', '1'),
(889, 96, '_edit_lock', '1666445101:1'),
(890, 97, '_wp_attached_file', '2022/10/ImgW-20.jpg'),
(891, 97, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:19:\"2022/10/ImgW-20.jpg\";s:8:\"filesize\";i:52908;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(892, 96, '_thumbnail_id', '97'),
(893, 96, '_regular_price', '29.90'),
(894, 96, 'total_sales', '0'),
(895, 96, '_tax_status', 'taxable'),
(896, 96, '_tax_class', ''),
(897, 96, '_manage_stock', 'no'),
(898, 96, '_backorders', 'no'),
(899, 96, '_sold_individually', 'no'),
(900, 96, '_virtual', 'no'),
(901, 96, '_downloadable', 'no'),
(902, 96, '_download_limit', '-1'),
(903, 96, '_download_expiry', '-1'),
(904, 96, '_stock', NULL),
(905, 96, '_stock_status', 'instock'),
(906, 96, '_wc_average_rating', '0'),
(907, 96, '_wc_review_count', '0'),
(908, 96, '_product_version', '6.9.4'),
(909, 96, '_price', '29.90'),
(910, 98, '_edit_last', '1'),
(911, 98, '_edit_lock', '1666445139:1'),
(912, 99, '_wp_attached_file', '2022/10/ImgW-21.jpg'),
(913, 99, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:19:\"2022/10/ImgW-21.jpg\";s:8:\"filesize\";i:33579;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(914, 98, '_thumbnail_id', '99'),
(915, 98, '_regular_price', '35.90'),
(916, 98, 'total_sales', '0'),
(917, 98, '_tax_status', 'taxable'),
(918, 98, '_tax_class', ''),
(919, 98, '_manage_stock', 'no'),
(920, 98, '_backorders', 'no'),
(921, 98, '_sold_individually', 'no'),
(922, 98, '_virtual', 'no'),
(923, 98, '_downloadable', 'no'),
(924, 98, '_download_limit', '-1'),
(925, 98, '_download_expiry', '-1'),
(926, 98, '_stock', NULL),
(927, 98, '_stock_status', 'instock'),
(928, 98, '_wc_average_rating', '0'),
(929, 98, '_wc_review_count', '0'),
(930, 98, '_product_version', '6.9.4'),
(931, 98, '_price', '35.90'),
(932, 100, '_edit_last', '1'),
(933, 100, '_edit_lock', '1666445225:1'),
(934, 101, '_wp_attached_file', '2022/10/ImgW-22.jpg'),
(935, 101, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:19:\"2022/10/ImgW-22.jpg\";s:8:\"filesize\";i:39985;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(936, 100, '_thumbnail_id', '101'),
(937, 100, '_regular_price', '34.90'),
(938, 100, 'total_sales', '0'),
(939, 100, '_tax_status', 'taxable'),
(940, 100, '_tax_class', ''),
(941, 100, '_manage_stock', 'no'),
(942, 100, '_backorders', 'no'),
(943, 100, '_sold_individually', 'no'),
(944, 100, '_virtual', 'no'),
(945, 100, '_downloadable', 'no'),
(946, 100, '_download_limit', '-1'),
(947, 100, '_download_expiry', '-1'),
(948, 100, '_stock', NULL),
(949, 100, '_stock_status', 'instock'),
(950, 100, '_wc_average_rating', '0'),
(951, 100, '_wc_review_count', '0'),
(952, 100, '_product_version', '6.9.4'),
(953, 100, '_price', '34.90'),
(954, 102, '_edit_last', '1'),
(955, 102, '_edit_lock', '1666445296:1'),
(956, 103, '_wp_attached_file', '2022/10/ImgW-23.jpg'),
(957, 103, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:19:\"2022/10/ImgW-23.jpg\";s:8:\"filesize\";i:63242;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(958, 102, '_thumbnail_id', '103'),
(959, 102, '_regular_price', '679'),
(960, 102, 'total_sales', '0'),
(961, 102, '_tax_status', 'taxable'),
(962, 102, '_tax_class', ''),
(963, 102, '_manage_stock', 'no'),
(964, 102, '_backorders', 'no'),
(965, 102, '_sold_individually', 'no'),
(966, 102, '_virtual', 'no'),
(967, 102, '_downloadable', 'no'),
(968, 102, '_download_limit', '-1'),
(969, 102, '_download_expiry', '-1'),
(970, 102, '_stock', NULL),
(971, 102, '_stock_status', 'instock'),
(972, 102, '_wc_average_rating', '0'),
(973, 102, '_wc_review_count', '0'),
(974, 102, '_product_version', '6.9.4'),
(975, 102, '_price', '679'),
(976, 104, '_edit_last', '1'),
(977, 104, '_edit_lock', '1666445357:1'),
(978, 105, '_wp_attached_file', '2022/10/ImgW-24.jpg'),
(979, 105, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:19:\"2022/10/ImgW-24.jpg\";s:8:\"filesize\";i:119829;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(980, 104, '_thumbnail_id', '105'),
(981, 104, '_regular_price', '2499'),
(982, 104, 'total_sales', '0'),
(983, 104, '_tax_status', 'taxable'),
(984, 104, '_tax_class', ''),
(985, 104, '_manage_stock', 'no'),
(986, 104, '_backorders', 'no'),
(987, 104, '_sold_individually', 'no'),
(988, 104, '_virtual', 'no'),
(989, 104, '_downloadable', 'no'),
(990, 104, '_download_limit', '-1'),
(991, 104, '_download_expiry', '-1'),
(992, 104, '_stock', NULL),
(993, 104, '_stock_status', 'instock'),
(994, 104, '_wc_average_rating', '0'),
(995, 104, '_wc_review_count', '0'),
(996, 104, '_product_version', '6.9.4'),
(997, 104, '_price', '2499'),
(998, 106, '_edit_last', '1'),
(999, 106, '_edit_lock', '1666445441:1'),
(1000, 107, '_wp_attached_file', '2022/10/ImgW-25.jpg'),
(1001, 107, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:19:\"2022/10/ImgW-25.jpg\";s:8:\"filesize\";i:87309;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1002, 106, '_thumbnail_id', '107'),
(1003, 106, '_regular_price', '2409'),
(1004, 106, '_sale_price', '2019'),
(1005, 106, 'total_sales', '0'),
(1006, 106, '_tax_status', 'taxable'),
(1007, 106, '_tax_class', ''),
(1008, 106, '_manage_stock', 'no'),
(1009, 106, '_backorders', 'no'),
(1010, 106, '_sold_individually', 'no'),
(1011, 106, '_virtual', 'no'),
(1012, 106, '_downloadable', 'no'),
(1013, 106, '_download_limit', '-1'),
(1014, 106, '_download_expiry', '-1'),
(1015, 106, '_stock', NULL),
(1016, 106, '_stock_status', 'instock'),
(1017, 106, '_wc_average_rating', '0'),
(1018, 106, '_wc_review_count', '0'),
(1019, 106, '_product_version', '6.9.4'),
(1020, 106, '_price', '2019'),
(1021, 108, '_edit_last', '1'),
(1022, 108, '_edit_lock', '1666445520:1'),
(1023, 109, '_wp_attached_file', '2022/10/ImgW-26.jpg'),
(1024, 109, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:19:\"2022/10/ImgW-26.jpg\";s:8:\"filesize\";i:91995;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1025, 108, '_thumbnail_id', '109'),
(1026, 108, '_regular_price', '3429'),
(1027, 108, 'total_sales', '0'),
(1028, 108, '_tax_status', 'taxable'),
(1029, 108, '_tax_class', ''),
(1030, 108, '_manage_stock', 'no'),
(1031, 108, '_backorders', 'no'),
(1032, 108, '_sold_individually', 'no'),
(1033, 108, '_virtual', 'no'),
(1034, 108, '_downloadable', 'no'),
(1035, 108, '_download_limit', '-1'),
(1036, 108, '_download_expiry', '-1'),
(1037, 108, '_stock', NULL),
(1038, 108, '_stock_status', 'instock'),
(1039, 108, '_wc_average_rating', '0'),
(1040, 108, '_wc_review_count', '0'),
(1041, 108, '_product_version', '6.9.4'),
(1042, 108, '_price', '3429'),
(1043, 110, '_edit_last', '1'),
(1044, 110, '_edit_lock', '1666445763:1'),
(1045, 111, '_wp_attached_file', '2022/10/ImgW-27.jpg'),
(1046, 111, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:19:\"2022/10/ImgW-27.jpg\";s:8:\"filesize\";i:90661;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1047, 110, '_thumbnail_id', '111'),
(1048, 110, '_regular_price', '535.90'),
(1049, 110, 'total_sales', '0'),
(1050, 110, '_tax_status', 'taxable'),
(1051, 110, '_tax_class', ''),
(1052, 110, '_manage_stock', 'no'),
(1053, 110, '_backorders', 'no'),
(1054, 110, '_sold_individually', 'no'),
(1055, 110, '_virtual', 'no'),
(1056, 110, '_downloadable', 'no'),
(1057, 110, '_download_limit', '-1'),
(1058, 110, '_download_expiry', '-1'),
(1059, 110, '_stock', NULL),
(1060, 110, '_stock_status', 'instock'),
(1061, 110, '_wc_average_rating', '0'),
(1062, 110, '_wc_review_count', '0'),
(1063, 110, '_product_version', '6.9.4'),
(1064, 110, '_price', '535.90'),
(1065, 112, '_order_key', 'wc_order_GwEBBIF2qYRfv'),
(1066, 112, '_customer_user', '1'),
(1067, 112, '_payment_method', 'cod'),
(1068, 112, '_payment_method_title', 'Dobierka'),
(1069, 112, '_customer_ip_address', '::1'),
(1070, 112, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(1071, 112, '_created_via', 'checkout'),
(1072, 112, '_cart_hash', '983551a4263bfce07c5d3859d17efc4d'),
(1073, 112, '_billing_first_name', 'Daniel'),
(1074, 112, '_billing_last_name', 'Rzeszoto'),
(1075, 112, '_billing_address_1', 'Nanterská 17'),
(1076, 112, '_billing_city', 'Žilina'),
(1077, 112, '_billing_postcode', '01008'),
(1078, 112, '_billing_country', 'SK'),
(1079, 112, '_billing_email', 'rzeszotodaniel@gmail.com'),
(1080, 112, '_billing_phone', '0904646235'),
(1081, 112, '_shipping_first_name', 'Daniel'),
(1082, 112, '_shipping_last_name', 'Rzeszoto'),
(1083, 112, '_shipping_address_1', 'Nanterská 17'),
(1084, 112, '_shipping_city', 'Žilina'),
(1085, 112, '_shipping_postcode', '01008'),
(1086, 112, '_shipping_country', 'SK'),
(1087, 112, '_order_currency', 'EUR'),
(1088, 112, '_cart_discount', '0'),
(1089, 112, '_cart_discount_tax', '0'),
(1090, 112, '_order_shipping', '0'),
(1091, 112, '_order_shipping_tax', '0'),
(1092, 112, '_order_tax', '0'),
(1093, 112, '_order_total', '565.90'),
(1094, 112, '_order_version', '6.9.4'),
(1095, 112, '_prices_include_tax', 'no'),
(1096, 112, '_billing_address_index', 'Daniel Rzeszoto  Nanterská 17  Žilina  01008 SK rzeszotodaniel@gmail.com 0904646235'),
(1097, 112, '_shipping_address_index', 'Daniel Rzeszoto  Nanterská 17  Žilina  01008 SK '),
(1098, 112, 'is_vat_exempt', 'no'),
(1099, 112, '_download_permissions_granted', 'yes'),
(1100, 112, '_recorded_sales', 'yes'),
(1101, 112, '_recorded_coupon_usage_counts', 'yes');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1102, 112, '_order_stock_reduced', 'yes'),
(1103, 112, '_new_order_email_sent', 'true'),
(1104, 112, '_edit_lock', '1666446264:1'),
(1105, 112, '_edit_last', '1'),
(1106, 112, '_date_completed', '1666446397'),
(1107, 112, '_date_paid', '1666446397'),
(1108, 112, '_paid_date', '2022-10-22 15:46:37'),
(1109, 112, '_completed_date', '2022-10-22 15:46:37'),
(1110, 60, '_regular_price', '731.65'),
(1111, 60, '_price', '731.65'),
(1112, 114, '_order_key', 'wc_order_2CJIqs2OKWAJ2'),
(1113, 114, '_customer_user', '1'),
(1114, 114, '_payment_method', 'cod'),
(1115, 114, '_payment_method_title', 'Dobierka'),
(1116, 114, '_customer_ip_address', '::1'),
(1117, 114, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(1118, 114, '_created_via', 'checkout'),
(1119, 114, '_cart_hash', '8a59fbdec7c5efad670c273d0fd50d1d'),
(1120, 114, '_billing_first_name', 'Daniel'),
(1121, 114, '_billing_last_name', 'Rzeszoto'),
(1122, 114, '_billing_address_1', 'Nanterská 17'),
(1123, 114, '_billing_city', 'Žilina'),
(1124, 114, '_billing_postcode', '01008'),
(1125, 114, '_billing_country', 'SK'),
(1126, 114, '_billing_email', 'rzeszotodaniel@gmail.com'),
(1127, 114, '_billing_phone', '0904646235'),
(1128, 114, '_shipping_first_name', 'Daniel'),
(1129, 114, '_shipping_last_name', 'Rzeszoto'),
(1130, 114, '_shipping_address_1', 'Nanterská 17'),
(1131, 114, '_shipping_city', 'Žilina'),
(1132, 114, '_shipping_postcode', '01008'),
(1133, 114, '_shipping_country', 'SK'),
(1134, 114, '_order_currency', 'EUR'),
(1135, 114, '_cart_discount', '0'),
(1136, 114, '_cart_discount_tax', '0'),
(1137, 114, '_order_shipping', '0'),
(1138, 114, '_order_shipping_tax', '0'),
(1139, 114, '_order_tax', '0'),
(1140, 114, '_order_total', '13.99'),
(1141, 114, '_order_version', '6.9.4'),
(1142, 114, '_prices_include_tax', 'no'),
(1143, 114, '_billing_address_index', 'Daniel Rzeszoto  Nanterská 17  Žilina  01008 SK rzeszotodaniel@gmail.com 0904646235'),
(1144, 114, '_shipping_address_index', 'Daniel Rzeszoto  Nanterská 17  Žilina  01008 SK '),
(1145, 114, 'is_vat_exempt', 'no'),
(1146, 114, '_download_permissions_granted', 'yes'),
(1147, 114, '_recorded_sales', 'yes'),
(1148, 114, '_recorded_coupon_usage_counts', 'yes'),
(1149, 114, '_order_stock_reduced', 'yes'),
(1150, 114, '_new_order_email_sent', 'true'),
(1151, 114, '_edit_lock', '1666467997:1'),
(1152, 114, '_edit_last', '1'),
(1153, 114, '_date_completed', '1666468130'),
(1154, 114, '_date_paid', '1666468130'),
(1155, 114, '_paid_date', '2022-10-22 21:48:50'),
(1156, 114, '_completed_date', '2022-10-22 21:48:50'),
(1157, 115, '_order_key', 'wc_order_nNGiupMNTEAVt'),
(1158, 115, '_customer_user', '1'),
(1159, 115, '_payment_method', 'cod'),
(1160, 115, '_payment_method_title', 'Dobierka'),
(1161, 115, '_customer_ip_address', '::1'),
(1162, 115, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(1163, 115, '_created_via', 'checkout'),
(1164, 115, '_cart_hash', 'd0c5826b718b770b503e737143ca48b3'),
(1165, 115, '_billing_first_name', 'Daniel'),
(1166, 115, '_billing_last_name', 'Rzeszoto'),
(1167, 115, '_billing_address_1', 'Nanterská 17'),
(1168, 115, '_billing_city', 'Žilina'),
(1169, 115, '_billing_postcode', '01008'),
(1170, 115, '_billing_country', 'SK'),
(1171, 115, '_billing_email', 'rzeszotodaniel@gmail.com'),
(1172, 115, '_billing_phone', '0904646235'),
(1173, 115, '_shipping_first_name', 'Daniel'),
(1174, 115, '_shipping_last_name', 'Rzeszoto'),
(1175, 115, '_shipping_address_1', 'Nanterská 17'),
(1176, 115, '_shipping_city', 'Žilina'),
(1177, 115, '_shipping_postcode', '01008'),
(1178, 115, '_shipping_country', 'SK'),
(1179, 115, '_order_currency', 'EUR'),
(1180, 115, '_cart_discount', '0'),
(1181, 115, '_cart_discount_tax', '0'),
(1182, 115, '_order_shipping', '0'),
(1183, 115, '_order_shipping_tax', '0'),
(1184, 115, '_order_tax', '0'),
(1185, 115, '_order_total', '298.90'),
(1186, 115, '_order_version', '6.9.4'),
(1187, 115, '_prices_include_tax', 'no'),
(1188, 115, '_billing_address_index', 'Daniel Rzeszoto  Nanterská 17  Žilina  01008 SK rzeszotodaniel@gmail.com 0904646235'),
(1189, 115, '_shipping_address_index', 'Daniel Rzeszoto  Nanterská 17  Žilina  01008 SK '),
(1190, 115, 'is_vat_exempt', 'no'),
(1191, 115, '_download_permissions_granted', 'yes'),
(1192, 115, '_recorded_sales', 'yes'),
(1193, 115, '_recorded_coupon_usage_counts', 'yes'),
(1194, 115, '_order_stock_reduced', 'yes'),
(1195, 115, '_new_order_email_sent', 'true'),
(1196, 115, '_edit_lock', '1666468162:1'),
(1197, 115, '_edit_last', '1'),
(1198, 115, '_date_completed', '1666468301'),
(1199, 115, '_date_paid', '1666468301'),
(1200, 115, '_paid_date', '2022-10-22 21:51:41'),
(1201, 115, '_completed_date', '2022-10-22 21:51:41');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Sťahujem dáta pre tabuľku `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2022-10-04 13:39:14', '2022-10-04 11:39:14', '<!-- wp:paragraph -->\n<p>Vitajte vo WordPress. Toto je váš prvý článok. Upravte ho alebo zmažte a začnite písať!</p>\n<!-- /wp:paragraph -->', 'Ahoj svet!', '', 'publish', 'open', 'open', '', 'ahoj-svet', '', '', '2022-10-04 13:39:14', '2022-10-04 11:39:14', '', 0, 'http://localhost/shop/?p=1', 0, 'post', '', 1),
(2, 1, '2022-10-04 13:39:14', '2022-10-04 11:39:14', '<!-- wp:paragraph -->\n<p>Toto je vzorová stránka. Je odlišná od blogu, pretože zostane na jednom mieste a zobrazí sa vo vašej navigácii na stránkach (vo väčšine tém). Väčšina ľudí začína stránkou O nás, ktorá ich predstavuje potenciálnym návštevníkom. Mohlo by to vyzerať nejak takto:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Ahojte! Cez deň pracujem ako poslíček na bicykli, po nociach robím najlepšie drinky v príjemnom bare a toto je moja webstránka. Bývam v Trenčíne, mám škrečka Igora a niekedy mám rande aj so svojím mestom (nejdem do baru ale napr. len tak chodím).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...alebo niečo takéto:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Spoločnosť XYZ Doohickey bola založená v roku 1971 a odvtedy poskytuje verejnosti kvalitné služby. Nachádza sa v meste Gotham City, XYZ zamestnáva viac ako 2 000 ľudí a robí všetky druhy úžasných vecí pre komunitu Gotham.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Ako nový používateľ WordPress môžete prejsť na  <a href=\"http://localhost/shop/wp-admin/\">vašu nástenku</a>, zmazať túto stránku a vytvoriť nové stránky pre váš obsah. Bavte sa!</p>\n<!-- /wp:paragraph -->', 'Ukážková stránka', '', 'trash', 'closed', 'open', '', 'ukazkova-stranka__trashed', '', '', '2022-10-16 17:19:24', '2022-10-16 15:19:24', '', 0, 'http://localhost/shop/?page_id=2', 0, 'page', '', 0),
(3, 1, '2022-10-04 13:39:14', '2022-10-04 11:39:14', '<!-- wp:heading --><h2>Kto sme</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Navrhovaný text: </strong>Adresa našej webovej stránky je: http://localhost/shop.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Komentáre</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Navrhovaný text: </strong>Keď návštevníci webu zanechavajú na stránke komentáre, zbierame údaje, ktoré sú zobrazené vo formulári komentára a taktiež IP adresu používateľov a User Agent prehliadača z dôvodu ochrany proti spamu.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Anonymizovaný reťazec vytvorený z vašej e-mailovej adresy (nazývaný aj hash) môže byť poskytnutý službe Gravatar pre overenie, či ju používate. Zásady ochrany osobných údajov služby Gravatar nájdete na: https://automattic.com/privacy/. Po schválení vášho komentára bude vaša profilová fotografia verejne zobrazená spolu s obsahom vášho komentára.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Multimédiá</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Navrhovaný text: </strong>Pri nahrávaní obrázkov na webovú stránku by ste sa mali vyhnúť nahrávaniu obrázkov s EXIF GPS údajmi o polohe. Návštevníci webu môžu stiahnuť a zobraziť akékoľvek údaje o polohe z obrázkov.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Súbory cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Navrhovaný text: </strong>Ak pridáte komentár na našej stránke, môžete súhlasiť s uložením vášho mena, e-mailovej adresy a webovej stránky do súborov cookies. Je to pre vaše pohodlie, aby ste nemuseli opätovne vypĺňať vaše údaje znovu pri pridávaní ďalšieho komentára. Tieto súbory cookies sú platné jeden rok.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ak navštívite našu stránku prihlásenia, uložíme dočasné súbory cookies na určenie toho, či váš prehliadač akceptuje súbory cookies. Tieto súbory cookies neobsahujú žiadne osobné údaje a sú odstránené pri zatvorení prehliadača.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Pri prihlásení nastavíme niekoľko súborov cookies, aby sme uložili vaše prihlasovacie údaje a nastavenia zobrazenia. Prihlasovacie cookies sú platné dva dni a nastavenia zobrazenia jeden rok. Ak zvolíte možnosť \"zapamätať\", vaše prihlásenie bude platné dva týždne. Pri odhlásení sa z vášho účtu sú súbory cookies odstránené. </p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Pri úprave alebo publikovaní článku budú vo vašom prehliadači uložené dodatočné súbory cookies. Tieto súbory cookies neobsahujú žiadne osobné údaje a odkazujú iba na ID článku, ktorý ste upravovali. Súbory sú platné 1 deň.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Vložený obsah z iných webových stránok</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Navrhovaný text: </strong>Články na tejto webovej stránke môžu obsahovať vložený obsah (napr. videá, obrázky, články a podobne). Vložený obsah z iných stránok sa chová rovnako, akoby návštevník navštívil inú webovú stránku. </p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Tieto webové stránky môžu o vás zbierať osobné údaje, používať súbory cookies, vkladať treťo-stranné sledovanie a monitorovať vašu interakciu s vloženým obsahom, včetne sledovania vašej interakcie s vloženým obsahom, ak na danej webovej stránke máte účet a ste prihlásený. </p><!-- /wp:paragraph --><!-- wp:heading --><h2>S kým zdieľame vaše údaje</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Navrhovaný text: </strong>Ak požadujete obnovenie hesla, vaša adresa IP bude uvedená v e-maile na obnovenie hesla.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Ako dlho uchovávame vaše údaje</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Navrhovaný text: </strong>Pri pridávaní komentára, komentár a jeho metaúdaje sú uchovávané oddelene. Vďaka tomu vieme automaticky rozpoznať a schváliť akékoľvek súvisiace komentáre bez toho, aby museli byť podržané na moderáciu.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Pre používateľov, ktorí sa zaregistrujú na našich webových stránkach (ak takí existujú), ukladáme aj osobné údaje, ktoré poskytujú, do ich užívateľského profilu. Všetci používatelia môžu kedykoľvek zobraziť, upraviť alebo odstrániť svoje osobné údaje (okrem zmeny používateľského). Správcovia webových stránok tiež môžu zobraziť a upraviť tieto informácie.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Aké práva máte nad svojimi údajmi</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Navrhovaný text: </strong>Ak na tejto webovej stránke máte účet, alebo ste tu pridali komentár, môžete požiadať o export vašich osobných údajov, ktoré o vás ukladáme, včetne údajov, ktoré ste nám poskytli. Môžete tak isto požiadať o vymazanie osobných údajov. To sa ale netýka údajov, ktoré o vás musíme uchovávať z administratívnych, právnych alebo bezpečnostných dôvodov. </p><!-- /wp:paragraph --><!-- wp:heading --><h2>Kam sa vaše údaje odosielajú</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Navrhovaný text: </strong>Komentáre návštevníkov môžu byť kontrolované prostredníctvom automatizovanej služby na detekciu spamu.</p><!-- /wp:paragraph -->', 'Zásady ochrany osobných údajov', '', 'draft', 'closed', 'open', '', 'ochrana-sukromia', '', '', '2022-10-04 13:39:14', '2022-10-04 11:39:14', '', 0, 'http://localhost/shop/?page_id=3', 0, 'page', '', 0),
(5, 1, '2022-10-05 20:11:09', '2022-10-05 18:11:09', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2022-10-05 20:11:09', '2022-10-05 18:11:09', '', 0, 'http://localhost/shop/wp-content/uploads/2022/10/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(6, 1, '2022-10-05 20:11:09', '2022-10-05 18:11:09', '', 'Obchod', '', 'publish', 'closed', 'closed', '', 'obchod', '', '', '2022-10-16 14:28:06', '2022-10-16 12:28:06', '', 0, 'http://localhost/shop/obchod/', 0, 'page', '', 0),
(8, 1, '2022-10-05 20:11:09', '2022-10-05 18:11:09', '<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->', 'Pokladňa', '', 'publish', 'closed', 'closed', '', 'kontrola-objednavky', '', '', '2022-10-05 20:11:09', '2022-10-05 18:11:09', '', 0, 'http://localhost/shop/kontrola-objednavky/', 0, 'page', '', 0),
(9, 1, '2022-10-05 20:11:09', '2022-10-05 18:11:09', '<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->', 'Môj účet', '', 'publish', 'closed', 'closed', '', 'moj-ucet', '', '', '2022-10-05 20:11:09', '2022-10-05 18:11:09', '', 0, 'http://localhost/shop/moj-ucet/', 0, 'page', '', 0),
(10, 1, '2022-10-05 20:11:09', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p><b>This is a sample page.</b></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h3>Overview</h3>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Our refund and returns policy lasts 30 days. If 30 days have passed since your purchase, we can’t offer you a full refund or exchange.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>To be eligible for a return, your item must be unused and in the same condition that you received it. It must also be in the original packaging.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Several types of goods are exempt from being returned. Perishable goods such as food, flowers, newspapers or magazines cannot be returned. We also do not accept products that are intimate or sanitary goods, hazardous materials, or flammable liquids or gases.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Additional non-returnable items:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul>\n<li>Gift cards</li>\n<li>Downloadable software products</li>\n<li>Some health and personal care items</li>\n</ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>To complete your return, we require a receipt or proof of purchase.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Please do not send your purchase back to the manufacturer.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>There are certain situations where only partial refunds are granted:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul>\n<li>Book with obvious signs of use</li>\n<li>CD, DVD, VHS tape, software, video game, cassette tape, or vinyl record that has been opened.</li>\n<li>Any item not in its original condition, is damaged or missing parts for reasons not due to our error.</li>\n<li>Any item that is returned more than 30 days after delivery</li>\n</ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<h2>Refunds</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Once your return is received and inspected, we will send you an email to notify you that we have received your returned item. We will also notify you of the approval or rejection of your refund.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you are approved, then your refund will be processed, and a credit will automatically be applied to your credit card or original method of payment, within a certain amount of days.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<b>Late or missing refunds</b>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you haven’t received a refund yet, first check your bank account again.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Then contact your credit card company, it may take some time before your refund is officially posted.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Next contact your bank. There is often some processing time before a refund is posted.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you’ve done all of this and you still have not received your refund yet, please contact us at {email address}.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<b>Sale items</b>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Only regular priced items may be refunded. Sale items cannot be refunded.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h2>Exchanges</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>We only replace items if they are defective or damaged. If you need to exchange it for the same item, send us an email at {email address} and send your item to: {physical address}.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h2>Gifts</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If the item was marked as a gift when purchased and shipped directly to you, you’ll receive a gift credit for the value of your return. Once the returned item is received, a gift certificate will be mailed to you.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If the item wasn’t marked as a gift when purchased, or the gift giver had the order shipped to themselves to give to you later, we will send a refund to the gift giver and they will find out about your return.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h2>Shipping returns</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>To return your product, you should mail your product to: {physical address}.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>You will be responsible for paying for your own shipping costs for returning your item. Shipping costs are non-refundable. If you receive a refund, the cost of return shipping will be deducted from your refund.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Depending on where you live, the time it may take for your exchanged product to reach you may vary.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you are returning more expensive items, you may consider using a trackable shipping service or purchasing shipping insurance. We don’t guarantee that we will receive your returned item.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h2>Need help?</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Contact us at {email} for questions related to refunds and returns.</p>\n<!-- /wp:paragraph -->', 'Refund and Returns Policy', '', 'draft', 'closed', 'closed', '', 'refund_returns', '', '', '2022-10-05 20:11:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/shop/?page_id=10', 0, 'page', '', 0),
(11, 1, '2022-10-05 20:34:18', '2022-10-05 18:34:18', 'Priestorové slúchadlá', 'Slúchadlá', '', 'trash', 'open', 'closed', '', 'sluchadla__trashed', '', '', '2022-10-22 14:32:26', '2022-10-22 12:32:26', '', 0, 'http://localhost/shop/?post_type=product&#038;p=11', 0, 'product', '', 0),
(12, 1, '2022-10-05 20:36:08', '2022-10-05 18:36:08', '<!-- wp:cover {\"url\":\"http://localhost/shop/wp-content/uploads/2022/10/other-small.jpg\",\"id\":13,\"dimRatio\":0} -->\n			<div class=\"wp-block-cover\" style=\"background-image:url(http://localhost/shop/wp-content/uploads/2022/10/other-small.jpg)\"><div class=\"wp-block-cover__inner-container\"><!-- wp:paragraph {\"align\":\"center\",\"placeholder\":\"Napíšte názov...\",\"textColor\":\"white\",\"fontSize\":\"large\"} -->\n			<p class=\"has-text-align-center has-large-font-size\">Vitajte v obchode</p>\n			<!-- /wp:paragraph -->\n\n			<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"white\"} -->\n			<p class=\"has-text-color has-text-align-center\">Sem napíšte krátku uvítaciu správu</p>\n			<!-- /wp:paragraph -->\n\n			<!-- wp:button {\"align\":\"center\"} -->\n			<div class=\"wp-block-button aligncenter\"><a href=\"http://localhost/shop/obchod/\" class=\"wp-block-button__link\">Ísť nakupovať</a></div>\n			<!-- /wp:button --></div></div>\n			<!-- /wp:cover -->\n		<!-- wp:heading {\"align\":\"center\"} -->\n		<h2 style=\"text-align:center\">Nové produkty</h2>\n		<!-- /wp:heading -->\n\n		<!-- wp:woocommerce/product-new /--> <!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":13,\"mediaType\":\"image\"} -->\n			<div class=\"wp-block-media-text alignwide has-media-on-the-right\"\"><figure class=\"wp-block-media-text__media\"><img src=\"http://localhost/shop/wp-content/uploads/2022/10/other-small.jpg\" alt=\"\" class=\"wp-image-13\"/></figure><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Obsah...\",\"fontSize\":\"large\"} -->\n			<p class=\"has-large-font-size\"></p>\n			<!-- /wp:paragraph --></div></div>\n			<!-- /wp:media-text --><!-- wp:media-text {\"mediaId\":13,\"mediaType\":\"image\"} -->\n			<div class=\"wp-block-media-text alignwide\"\"><figure class=\"wp-block-media-text__media\"><img src=\"http://localhost/shop/wp-content/uploads/2022/10/other-small.jpg\" alt=\"\" class=\"wp-image-13\"/></figure><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Obsah...\",\"fontSize\":\"large\"} -->\n			<p class=\"has-large-font-size\"></p>\n			<!-- /wp:paragraph --></div></div>\n			<!-- /wp:media-text --><!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":13,\"mediaType\":\"image\"} -->\n			<div class=\"wp-block-media-text alignwide has-media-on-the-right\"\"><figure class=\"wp-block-media-text__media\"><img src=\"http://localhost/shop/wp-content/uploads/2022/10/other-small.jpg\" alt=\"\" class=\"wp-image-13\"/></figure><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Obsah...\",\"fontSize\":\"large\"} -->\n			<p class=\"has-large-font-size\"></p>\n			<!-- /wp:paragraph --></div></div>\n			<!-- /wp:media-text -->\n\n		<!-- wp:woocommerce/featured-product /-->', 'Domovská stránka', '', 'publish', 'closed', 'closed', '', 'domovska-stranka', '', '', '2022-10-05 20:36:08', '2022-10-05 18:36:08', '', 0, 'http://localhost/shop/domovska-stranka/', 0, 'page', '', 0),
(13, 1, '2022-10-05 20:36:08', '2022-10-05 18:36:08', '', 'other-small', '', 'inherit', 'open', 'closed', '', 'other-small', '', '', '2022-10-05 20:36:08', '2022-10-05 18:36:08', '', 12, 'http://localhost/shop/wp-content/uploads/2022/10/other-small.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2022-10-05 20:36:08', '2022-10-05 18:36:08', '<!-- wp:cover {\"url\":\"http://localhost/shop/wp-content/uploads/2022/10/other-small.jpg\",\"id\":13,\"dimRatio\":0} -->\n			<div class=\"wp-block-cover\" style=\"background-image:url(http://localhost/shop/wp-content/uploads/2022/10/other-small.jpg)\"><div class=\"wp-block-cover__inner-container\"><!-- wp:paragraph {\"align\":\"center\",\"placeholder\":\"Napíšte názov...\",\"textColor\":\"white\",\"fontSize\":\"large\"} -->\n			<p class=\"has-text-align-center has-large-font-size\">Vitajte v obchode</p>\n			<!-- /wp:paragraph -->\n\n			<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"white\"} -->\n			<p class=\"has-text-color has-text-align-center\">Sem napíšte krátku uvítaciu správu</p>\n			<!-- /wp:paragraph -->\n\n			<!-- wp:button {\"align\":\"center\"} -->\n			<div class=\"wp-block-button aligncenter\"><a href=\"http://localhost/shop/obchod/\" class=\"wp-block-button__link\">Ísť nakupovať</a></div>\n			<!-- /wp:button --></div></div>\n			<!-- /wp:cover -->\n		<!-- wp:heading {\"align\":\"center\"} -->\n		<h2 style=\"text-align:center\">Nové produkty</h2>\n		<!-- /wp:heading -->\n\n		<!-- wp:woocommerce/product-new /--> <!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":13,\"mediaType\":\"image\"} -->\n			<div class=\"wp-block-media-text alignwide has-media-on-the-right\"\"><figure class=\"wp-block-media-text__media\"><img src=\"http://localhost/shop/wp-content/uploads/2022/10/other-small.jpg\" alt=\"\" class=\"wp-image-13\"/></figure><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Obsah...\",\"fontSize\":\"large\"} -->\n			<p class=\"has-large-font-size\"></p>\n			<!-- /wp:paragraph --></div></div>\n			<!-- /wp:media-text --><!-- wp:media-text {\"mediaId\":13,\"mediaType\":\"image\"} -->\n			<div class=\"wp-block-media-text alignwide\"\"><figure class=\"wp-block-media-text__media\"><img src=\"http://localhost/shop/wp-content/uploads/2022/10/other-small.jpg\" alt=\"\" class=\"wp-image-13\"/></figure><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Obsah...\",\"fontSize\":\"large\"} -->\n			<p class=\"has-large-font-size\"></p>\n			<!-- /wp:paragraph --></div></div>\n			<!-- /wp:media-text --><!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":13,\"mediaType\":\"image\"} -->\n			<div class=\"wp-block-media-text alignwide has-media-on-the-right\"\"><figure class=\"wp-block-media-text__media\"><img src=\"http://localhost/shop/wp-content/uploads/2022/10/other-small.jpg\" alt=\"\" class=\"wp-image-13\"/></figure><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Obsah...\",\"fontSize\":\"large\"} -->\n			<p class=\"has-large-font-size\"></p>\n			<!-- /wp:paragraph --></div></div>\n			<!-- /wp:media-text -->\n\n		<!-- wp:woocommerce/featured-product /-->', 'Domovská stránka', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2022-10-05 20:36:08', '2022-10-05 18:36:08', '', 12, 'http://localhost/shop/?p=14', 0, 'revision', '', 0),
(15, 1, '2022-10-05 20:40:07', '2022-10-05 18:40:07', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-twentytwentytwo', '', '', '2022-10-05 20:40:07', '2022-10-05 18:40:07', '', 0, 'http://localhost/shop/2022/10/05/wp-global-styles-twentytwentytwo/', 0, 'wp_global_styles', '', 0),
(17, 1, '2022-10-06 10:29:31', '2022-10-06 08:29:31', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-twentytwenty', '', '', '2022-10-06 10:29:31', '2022-10-06 08:29:31', '', 0, 'http://localhost/shop/2022/10/06/wp-global-styles-twentytwenty/', 0, 'wp_global_styles', '', 0),
(19, 1, '2022-10-06 11:53:24', '2022-10-06 09:53:24', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-shop', '', '', '2022-10-06 11:53:24', '2022-10-06 09:53:24', '', 0, 'http://localhost/shop/2022/10/06/wp-global-styles-shop/', 0, 'wp_global_styles', '', 0),
(20, 1, '2022-10-10 22:00:30', '2022-10-10 20:00:30', '', 'Telefón', '', 'trash', 'open', 'closed', '', 'telefon__trashed', '', '', '2022-10-22 14:32:20', '2022-10-22 12:32:20', '', 0, 'http://localhost/shop/?post_type=product&#038;p=20', 0, 'product', '', 0),
(21, 1, '2022-10-10 22:01:01', '2022-10-10 20:01:01', '', 'Klávesnica', '', 'trash', 'open', 'closed', '', 'klavesnica__trashed', '', '', '2022-10-22 14:32:15', '2022-10-22 12:32:15', '', 0, 'http://localhost/shop/?post_type=product&#038;p=21', 0, 'product', '', 0),
(22, 1, '2022-10-10 22:05:19', '2022-10-10 20:05:19', '<!-- wp:cover {\"url\":\"http://localhost/shop/wp-content/uploads/2022/10/other-small.jpg\",\"id\":13,\"dimRatio\":0} -->\n<div class=\"wp-block-cover\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-background-dim-0 has-background-dim\"></span><img class=\"wp-block-cover__image-background wp-image-13\" src=\"http://localhost/shop/wp-content/uploads/2022/10/other-small.jpg\" data-object-fit=\"cover\"/><div class=\"wp-block-cover__inner-container\"><!-- wp:paragraph {\"align\":\"center\",\"placeholder\":\"Napíšte názov...\",\"textColor\":\"white\",\"fontSize\":\"large\"} -->\n<p class=\"has-text-align-center has-white-color has-text-color has-large-font-size\"><p class=\"has-text-align-center has-large-font-size\">Vitajte v obchode</p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"white\"} -->\n<p class=\"has-text-align-center has-white-color has-text-color\"><p class=\"has-text-color has-text-align-center\">Sem napíšte krátku uvítaciu správu</p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:button {\"align\":\"center\"} -->\n<div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"http://localhost/shop/obchod/\">Ísť nakupovať</a></div>\n<!-- /wp:button --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:heading {\"textAlign\":\"center\"} -->\n<h2 class=\"has-text-align-center\">Nové produkty</h2>\n<!-- /wp:heading -->\n\n<!-- wp:woocommerce/product-new {\"contentVisibility\":{\"image\":true,\"title\":true,\"price\":true,\"rating\":true,\"button\":true},\"stockStatus\":[\"\",\"\",\"instock\",\"outofstock\",\"onbackorder\"]} /-->\n\n<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":13,\"mediaType\":\"image\"} -->\n<div class=\"wp-block-media-text alignwide has-media-on-the-right\"\"><figure class=\"wp-block-media-text__media\"><img src=\"http://localhost/shop/wp-content/uploads/2022/10/other-small.jpg\" alt=\"\" class=\"wp-image-13\"/></figure><div class=\"wp-block-media-text__content\">\n<!-- wp:paragraph {\"placeholder\":\"Obsah...\",\"fontSize\":\"large\"} -->\n<p class=\"has-large-font-size\"></p>\n<!-- /wp:paragraph -->\n</div></div>\n<!-- /wp:media-text -->\n\n<!-- wp:media-text {\"mediaId\":13,\"mediaType\":\"image\"} -->\n<div class=\"wp-block-media-text alignwide\"\"><figure class=\"wp-block-media-text__media\"><img src=\"http://localhost/shop/wp-content/uploads/2022/10/other-small.jpg\" alt=\"\" class=\"wp-image-13\"/></figure><div class=\"wp-block-media-text__content\">\n<!-- wp:paragraph {\"placeholder\":\"Obsah...\",\"fontSize\":\"large\"} -->\n<p class=\"has-large-font-size\"></p>\n<!-- /wp:paragraph -->\n</div></div>\n<!-- /wp:media-text -->\n\n<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":13,\"mediaType\":\"image\"} -->\n<div class=\"wp-block-media-text alignwide has-media-on-the-right\"\"><figure class=\"wp-block-media-text__media\"><img src=\"http://localhost/shop/wp-content/uploads/2022/10/other-small.jpg\" alt=\"\" class=\"wp-image-13\"/></figure><div class=\"wp-block-media-text__content\">\n<!-- wp:paragraph {\"placeholder\":\"Obsah...\",\"fontSize\":\"large\"} -->\n<p class=\"has-large-font-size\"></p>\n<!-- /wp:paragraph -->\n</div></div>\n<!-- /wp:media-text -->\n\n<!-- wp:woocommerce/featured-product /-->', 'Domovská stránka', '', 'inherit', 'closed', 'closed', '', '12-autosave-v1', '', '', '2022-10-10 22:05:19', '2022-10-10 20:05:19', '', 12, 'http://localhost/shop/?p=22', 0, 'revision', '', 0),
(24, 1, '2022-10-16 14:26:33', '2022-10-16 12:26:33', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode -->\n[products]\n<!-- /wp:shortcode -->', 'Obchod', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2022-10-16 14:26:33', '2022-10-16 12:26:33', '', 6, 'http://localhost/shop/?p=24', 0, 'revision', '', 0),
(25, 1, '2022-10-16 14:28:06', '2022-10-16 12:28:06', '', 'Obchod', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2022-10-16 14:28:06', '2022-10-16 12:28:06', '', 6, 'http://localhost/shop/?p=25', 0, 'revision', '', 0),
(28, 1, '2022-10-16 15:01:42', '2022-10-16 13:01:42', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-pawsgang-ecommerce-theme-woocommerce-main', '', '', '2022-10-16 15:01:42', '2022-10-16 13:01:42', '', 0, 'http://localhost/shop/2022/10/16/wp-global-styles-pawsgang-ecommerce-theme-woocommerce-main/', 0, 'wp_global_styles', '', 0),
(29, 1, '2022-10-16 15:02:25', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-10-16 15:02:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/shop/?p=29', 1, 'nav_menu_item', '', 0),
(31, 1, '2022-10-16 15:02:25', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-10-16 15:02:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/shop/?p=31', 1, 'nav_menu_item', '', 0),
(32, 1, '2022-10-16 15:02:25', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-10-16 15:02:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/shop/?p=32', 1, 'nav_menu_item', '', 0),
(33, 1, '2022-10-16 15:02:25', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-10-16 15:02:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/shop/?p=33', 1, 'nav_menu_item', '', 0),
(35, 1, '2022-10-16 15:02:25', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-10-16 15:02:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/shop/?p=35', 1, 'nav_menu_item', '', 0),
(36, 1, '2022-10-16 17:19:24', '2022-10-16 15:19:24', '<!-- wp:paragraph -->\n<p>Toto je vzorová stránka. Je odlišná od blogu, pretože zostane na jednom mieste a zobrazí sa vo vašej navigácii na stránkach (vo väčšine tém). Väčšina ľudí začína stránkou O nás, ktorá ich predstavuje potenciálnym návštevníkom. Mohlo by to vyzerať nejak takto:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Ahojte! Cez deň pracujem ako poslíček na bicykli, po nociach robím najlepšie drinky v príjemnom bare a toto je moja webstránka. Bývam v Trenčíne, mám škrečka Igora a niekedy mám rande aj so svojím mestom (nejdem do baru ale napr. len tak chodím).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...alebo niečo takéto:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Spoločnosť XYZ Doohickey bola založená v roku 1971 a odvtedy poskytuje verejnosti kvalitné služby. Nachádza sa v meste Gotham City, XYZ zamestnáva viac ako 2 000 ľudí a robí všetky druhy úžasných vecí pre komunitu Gotham.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Ako nový používateľ WordPress môžete prejsť na  <a href=\"http://localhost/shop/wp-admin/\">vašu nástenku</a>, zmazať túto stránku a vytvoriť nové stránky pre váš obsah. Bavte sa!</p>\n<!-- /wp:paragraph -->', 'Ukážková stránka', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2022-10-16 17:19:24', '2022-10-16 15:19:24', '', 2, 'http://localhost/shop/?p=36', 0, 'revision', '', 0),
(39, 1, '2022-10-18 21:13:08', '2022-10-18 19:13:08', '<!-- wp:shortcode -->\n[woocommerce_cart]\n<!-- /wp:shortcode -->', 'Košík', '', 'publish', 'closed', 'closed', '', 'kosik', '', '', '2022-10-18 21:21:58', '2022-10-18 19:21:58', '', 0, 'http://localhost/shop/kosik/', 0, 'page', '', 0),
(40, 1, '2022-10-18 21:20:37', '2022-10-18 19:20:37', '<!-- wp:shortcode -->\n[woocommerce_cart]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p>dhdhs</p>\n<!-- /wp:paragraph -->', 'Košík', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2022-10-18 21:20:37', '2022-10-18 19:20:37', '', 39, 'http://localhost/shop/?p=40', 0, 'revision', '', 0),
(41, 1, '2022-10-18 21:21:58', '2022-10-18 19:21:58', '<!-- wp:shortcode -->\n[woocommerce_cart]\n<!-- /wp:shortcode -->', 'Košík', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2022-10-18 21:21:58', '2022-10-18 19:21:58', '', 39, 'http://localhost/shop/?p=41', 0, 'revision', '', 0),
(42, 1, '2022-10-18 21:38:30', '2022-10-18 19:38:30', '', 'Order &ndash; 18 októbra, 2022 @ 09:38 PM', '', 'trash', 'open', 'closed', 'wc_order_1EPRqDQepTJZa', 'objednat-oct-18-2022-0738-pm__trashed', '', '', '2022-10-18 21:40:55', '2022-10-18 19:40:55', '', 0, 'http://localhost/shop/?post_type=shop_order&#038;p=42', 0, 'shop_order', '', 1),
(43, 1, '2022-10-19 19:23:30', '0000-00-00 00:00:00', '', 'Automatický koncept', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-10-19 19:23:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/shop/?p=43', 0, 'post', '', 0),
(44, 1, '2022-10-19 19:23:53', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-10-19 19:23:53', '0000-00-00 00:00:00', '', 0, 'http://localhost/shop/?p=44', 1, 'nav_menu_item', '', 0),
(45, 1, '2022-10-19 19:23:53', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-10-19 19:23:53', '0000-00-00 00:00:00', '', 0, 'http://localhost/shop/?p=45', 1, 'nav_menu_item', '', 0),
(46, 1, '2022-10-19 19:23:53', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-10-19 19:23:53', '0000-00-00 00:00:00', '', 0, 'http://localhost/shop/?p=46', 1, 'nav_menu_item', '', 0),
(47, 1, '2022-10-19 19:23:54', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-10-19 19:23:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/shop/?p=47', 1, 'nav_menu_item', '', 0),
(48, 1, '2022-10-19 19:23:54', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-10-19 19:23:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/shop/?p=48', 1, 'nav_menu_item', '', 0),
(49, 1, '2022-10-22 14:23:28', '2022-10-22 12:23:28', 'Počítač Intel Core i5 10505 Comet Lake 4.6 GHz, Intel UHD Graphics 630, RAM 16GB DDR4, SSD 256GB, dvd, DisplayPort, 4×USB 3.2, 4×USB 2.0, typ skrine: Midi Tower, myš a klávesnica, Windows 10 Pro', 'Dell Optiplex 3090 SFF', '', 'publish', 'open', 'closed', '', 'dell-optiplex-3090-sff', '', '', '2022-10-22 14:28:28', '2022-10-22 12:28:28', '', 0, 'http://localhost/shop/?post_type=product&#038;p=49', 0, 'product', '', 0),
(50, 1, '2022-10-22 14:25:48', '2022-10-22 12:25:48', 'Počítač Intel Core i5 10505 Comet Lake 4.6 GHz, Intel UHD Graphics 630, RAM 16GB DDR4, SSD 256GB, dvd, DisplayPort, 4×USB 3.2, 4×USB 2.0, typ skrine: Midi Tower, myš a klávesnica, Windows 10 Pro', 'Dell Optiplex 3090 SFF', '', 'inherit', 'closed', 'closed', '', '49-autosave-v1', '', '', '2022-10-22 14:25:48', '2022-10-22 12:25:48', '', 49, 'http://localhost/shop/?p=50', 0, 'revision', '', 0),
(51, 1, '2022-10-22 14:28:21', '2022-10-22 12:28:21', '', 'ImgW', '', 'inherit', 'open', 'closed', '', 'imgw', '', '', '2022-10-22 14:28:21', '2022-10-22 12:28:21', '', 49, 'http://localhost/shop/wp-content/uploads/2022/10/ImgW.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2022-10-22 14:31:44', '2022-10-22 12:31:44', 'Herný PC Intel Core i5 12400F Alder Lake 4.4 GHz, NVIDIA GeForce RTX 3060 Ti 8 GB, RAM 16GB DDR4, SSD 1000GB, bez mechaniky, WiFi, HDMI a DisplayPort, 4×USB 2.0, typ skrine: Midi Tower, Windows 11 Home – originálny produkt MS (nejde o druhotnú licenciu)', 'Alza Gamebox Alder Core RTX3060 Ti', '', 'publish', 'open', 'closed', '', 'alza-gamebox-alder-core-rtx3060-ti', '', '', '2022-10-22 14:31:45', '2022-10-22 12:31:45', '', 0, 'http://localhost/shop/?post_type=product&#038;p=52', 0, 'product', '', 0),
(53, 1, '2022-10-22 14:30:47', '2022-10-22 12:30:47', '', 'Img1', '', 'inherit', 'open', 'closed', '', 'img1', '', '', '2022-10-22 14:30:47', '2022-10-22 12:30:47', '', 52, 'http://localhost/shop/wp-content/uploads/2022/10/Img1.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2022-10-22 14:34:25', '2022-10-22 12:34:25', 'Počítač Intel Core i3 10105 Comet Lake 4.4 GHz, Intel UHD Graphics, RAM 8GB DDR4, SSD 256GB, dvd, WiFi, VGA D-SUB, HDMI a DisplayPort, 2×USB 3.2, 4×USB 2.0, typ skrine: Mini Tower, myš a klávesnica, Bez OS', 'Acer Veriton VX2680G', '', 'publish', 'open', 'closed', '', 'acer-veriton-vx2680g', '', '', '2022-10-22 14:34:25', '2022-10-22 12:34:25', '', 0, 'http://localhost/shop/?post_type=product&#038;p=54', 0, 'product', '', 0),
(55, 1, '2022-10-22 14:34:13', '2022-10-22 12:34:13', '', 'ImgW (1)', '', 'inherit', 'open', 'closed', '', 'imgw-1', '', '', '2022-10-22 14:34:13', '2022-10-22 12:34:13', '', 54, 'http://localhost/shop/wp-content/uploads/2022/10/ImgW-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2022-10-22 14:36:03', '2022-10-22 12:36:03', 'All In One PC 15.6\" 1366 × 768, Intel Celeron N4020 Gemini Lake 2.8 GHz, Intel HD Graphics, RAM 8GB, SSD 128GB, bez mechaniky, WiFi, VGA D-SUB a HDMI, 4×USB 3.2, typ skrine: All In One, myš a klávesnica, Bez OS, V161GART-BD077D', 'ASUS V161GART-BD077D Black dotykový', '', 'publish', 'open', 'closed', '', 'asus-v161gart-bd077d-black-dotykovy', '', '', '2022-10-22 14:36:03', '2022-10-22 12:36:03', '', 0, 'http://localhost/shop/?post_type=product&#038;p=56', 0, 'product', '', 0),
(57, 1, '2022-10-22 14:35:24', '2022-10-22 12:35:24', '', 'ImgW (2)', '', 'inherit', 'open', 'closed', '', 'imgw-2', '', '', '2022-10-22 14:35:24', '2022-10-22 12:35:24', '', 56, 'http://localhost/shop/wp-content/uploads/2022/10/ImgW-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2022-10-22 15:01:14', '2022-10-22 13:01:14', 'Počítač AMD Ryzen 5 PRO 5650G 4.4 GHz, AMD Radeon Graphics, RAM 8GB DDR4, SSD 256GB, dvd, HDMI a DisplayPort, 2×USB 3.2, 4×USB 2.0, typ skrine: Desktop, myš a klávesnica, Windows 11 Pro, (NBD)', 'Lenovo ThinkCentre M75t Gen 2 Black', '', 'publish', 'open', 'closed', '', 'lenovo-thinkcentre-m75t-gen-2-black', '', '', '2022-10-22 15:01:15', '2022-10-22 13:01:15', '', 0, 'http://localhost/shop/?post_type=product&#038;p=58', 0, 'product', '', 0),
(59, 1, '2022-10-22 15:01:09', '2022-10-22 13:01:09', '', 'ImgW (3)', '', 'inherit', 'open', 'closed', '', 'imgw-3', '', '', '2022-10-22 15:01:09', '2022-10-22 13:01:09', '', 58, 'http://localhost/shop/wp-content/uploads/2022/10/ImgW-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2022-10-22 15:02:27', '2022-10-22 13:02:27', 'Počítač Intel Core i3 12100 Alder Lake 4.3 GHz, Intel UHD Graphics 730, RAM 4GB DDR4, SSD 256GB, bez mechaniky, VGA D-SUB, HDMI a DisplayPort, 4×USB 3.2, 2×USB 2.0, typ skrine: Desktop, myš a klávesnica, Windows 11 Home, (NBD), 11T00012CK', 'Lenovo ThinkCentre neo 50s Black', '', 'publish', 'open', 'closed', '', 'lenovo-thinkcentre-neo-50s-black', '', '', '2022-10-22 21:05:19', '2022-10-22 19:05:19', '', 0, 'http://localhost/shop/?post_type=product&#038;p=60', 0, 'product', '', 0),
(61, 1, '2022-10-22 15:02:18', '2022-10-22 13:02:18', '', 'ImgW (4)', '', 'inherit', 'open', 'closed', '', 'imgw-4', '', '', '2022-10-22 15:02:18', '2022-10-22 13:02:18', '', 60, 'http://localhost/shop/wp-content/uploads/2022/10/ImgW-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2022-10-22 15:04:30', '2022-10-22 13:04:30', 'Notebook – Intel Core i5 1135G7 Tiger Lake, 15.6\" IPS antireflexný 1920 × 1080, RAM 8GB DDR4, Intel UHD Graphics, SSD 512GB, numerická klávesnica, webkamera, USB 3.2 Gen 1, USB-C, WiFi 5, hmotnosť 1,74 kg, Windows 11 Home (59U11EA)', 'HP 250 G8 Asteroid Silver', '', 'publish', 'open', 'closed', '', 'hp-250-g8-asteroid-silver', '', '', '2022-10-22 15:04:30', '2022-10-22 13:04:30', '', 0, 'http://localhost/shop/?post_type=product&#038;p=62', 0, 'product', '', 0),
(63, 1, '2022-10-22 15:04:10', '2022-10-22 13:04:10', '', 'ImgW (5)', '', 'inherit', 'open', 'closed', '', 'imgw-5', '', '', '2022-10-22 15:04:10', '2022-10-22 13:04:10', '', 62, 'http://localhost/shop/wp-content/uploads/2022/10/ImgW-5.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2022-10-22 15:06:54', '2022-10-22 13:06:54', 'Notebook – Intel Core i3 1115G4 Tiger Lake, 14\" IPS antireflexný 1920 × 1080, RAM 8GB DDR4, Intel UHD Graphics, SSD 256GB, podsvietená klávesnica, webkamera, USB 3.2 Gen 1, USB-C, čítačka odtlačkov prstov, WiFi 6, hmotnosť 1,4 kg, Windows 10 Home', 'Lenovo ThinkBook 14 G2 ITL celokovový', '', 'publish', 'open', 'closed', '', 'lenovo-thinkbook-14-g2-itl-celokovovy', '', '', '2022-10-22 15:06:54', '2022-10-22 13:06:54', '', 0, 'http://localhost/shop/?post_type=product&#038;p=64', 0, 'product', '', 0),
(65, 1, '2022-10-22 15:05:40', '2022-10-22 13:05:40', '', 'ImgW (6)', '', 'inherit', 'open', 'closed', '', 'imgw-6', '', '', '2022-10-22 15:05:40', '2022-10-22 13:05:40', '', 64, 'http://localhost/shop/wp-content/uploads/2022/10/ImgW-6.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2022-10-22 15:07:53', '2022-10-22 13:07:53', 'Notebook – Intel Core i3 1115G4 Tiger Lake, 15.6\" IPS antireflexný 1920 × 1080, RAM 8GB DDR4, Intel UHD Graphics, SSD 512GB, numerická klávesnica, podsvietená klávesnica, webkamera, USB 3.2 Gen 1, USB-C, WiFi 6, hmotnosť 1,8 kg, Windows 11 Home', 'ASUS X513EA-BQ1693W Dreamy White', '', 'publish', 'open', 'closed', '', 'asus-x513ea-bq1693w-dreamy-white', '', '', '2022-10-22 15:07:53', '2022-10-22 13:07:53', '', 0, 'http://localhost/shop/?post_type=product&#038;p=66', 0, 'product', '', 0),
(67, 1, '2022-10-22 15:07:45', '2022-10-22 13:07:45', '', 'ImgW (7)', '', 'inherit', 'open', 'closed', '', 'imgw-7', '', '', '2022-10-22 15:07:45', '2022-10-22 13:07:45', '', 66, 'http://localhost/shop/wp-content/uploads/2022/10/ImgW-7.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2022-10-22 15:10:25', '2022-10-22 13:10:25', 'Notebook – AMD Ryzen 3 5300U, 15.6\" IPS antireflexný 1920 × 1080, RAM 8GB DDR4, AMD Radeon Graphics, SSD 512GB, podsvietená klávesnica, webkamera, USB 3.2 Gen 1, USB-C, čítačka odtlačkov prstov, WiFi 6, hmotnosť 1,76 kg, Windows 11 Home NX,A82EC,00D', 'Acer Aspire 5 Pure Silver kovový', '', 'publish', 'open', 'closed', '', 'acer-aspire-5-pure-silver-kovovy', '', '', '2022-10-22 15:10:25', '2022-10-22 13:10:25', '', 0, 'http://localhost/shop/?post_type=product&#038;p=68', 0, 'product', '', 0),
(69, 1, '2022-10-22 15:10:19', '2022-10-22 13:10:19', '', 'ImgW (8)', '', 'inherit', 'open', 'closed', '', 'imgw-8', '', '', '2022-10-22 15:10:19', '2022-10-22 13:10:19', '', 68, 'http://localhost/shop/wp-content/uploads/2022/10/ImgW-8.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2022-10-22 15:11:59', '2022-10-22 13:11:59', 'Notebook – Intel Core i3 1115G4 Tiger Lake, 15.6\" IPS antireflexný 1920 × 1080, RAM 8GB DDR4, Intel UHD Graphics, SSD 256GB, numerická klávesnica, podsvietená klávesnica, webkamera, USB 3.2 Gen 1, USB-C, WiFi 5, hmotnosť 1,8 kg, Windows 10 Pro Academic std', 'ASUS P1511CEA-BQ1141XA Slate Grey kovový', '', 'publish', 'open', 'closed', '', 'asus-p1511cea-bq1141xa-slate-grey-kovovy', '', '', '2022-10-22 15:12:00', '2022-10-22 13:12:00', '', 0, 'http://localhost/shop/?post_type=product&#038;p=70', 0, 'product', '', 0),
(71, 1, '2022-10-22 15:11:43', '2022-10-22 13:11:43', '', 'ImgW (9)', '', 'inherit', 'open', 'closed', '', 'imgw-9', '', '', '2022-10-22 15:11:43', '2022-10-22 13:11:43', '', 70, 'http://localhost/shop/wp-content/uploads/2022/10/ImgW-9.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2022-10-22 15:14:12', '2022-10-22 13:14:12', 'Mobilný telefón – 6.43\" AMOLED 2400 × 1080, procesor Mediatek Helio G95 8-jadrový, RAM 6GB, interná pamäť 64GB, zadný fotoaparát 64Mpx (f/1.8)+8Mpx (f/2.2)+2Mpx (f/2.4)+2Mpx (f/2.4), predný fotoaparát 13Mpx, GPS, Glonass, IrDA, NFC, LTE, Jack (3.5mm) a USB-C, čítačka odtlačkov prstov, dual SIM + pamäťová karta, neblokovaný, rýchle nabíjanie 33W, batéria 5000mAh, Android 11', 'Xiaomi Redmi Note 10S 64 GB, sivý', '', 'publish', 'open', 'closed', '', 'xiaomi-redmi-note-10s-64-gb-sivy', '', '', '2022-10-22 15:14:12', '2022-10-22 13:14:12', '', 0, 'http://localhost/shop/?post_type=product&#038;p=72', 0, 'product', '', 0),
(73, 1, '2022-10-22 15:13:50', '2022-10-22 13:13:50', '', 'ImgW (10)', '', 'inherit', 'open', 'closed', '', 'imgw-10', '', '', '2022-10-22 15:13:50', '2022-10-22 13:13:50', '', 72, 'http://localhost/shop/wp-content/uploads/2022/10/ImgW-10.jpg', 0, 'attachment', 'image/jpeg', 0),
(74, 1, '2022-10-22 15:15:00', '2022-10-22 13:15:00', 'Mobilný telefón – 6.1\" IPS 1792 × 828, procesor Apple A13 Bionic 6-jadrový, RAM 4GB, interná pamäť 128GB, zadný fotoaparát s optickým zoomom 12Mpx (f/1.8)+12Mpx (f/2.4), predný fotoaparát 12Mpx, optická stabilizácia, GPS, Glonass, NFC, LTE, Lightning port, vodoodolný podľa IP68, single SIM + eSIM, neblokovaný, rýchle nabíjanie 18W, bezdrôtové nabíjanie, batéria 3110mAh, iOS 13', 'iPhone 11 128 GB čierny', '', 'publish', 'open', 'closed', '', 'iphone-11-128-gb-cierny', '', '', '2022-10-22 15:15:01', '2022-10-22 13:15:01', '', 0, 'http://localhost/shop/?post_type=product&#038;p=74', 0, 'product', '', 0),
(75, 1, '2022-10-22 15:14:55', '2022-10-22 13:14:55', '', 'RI028c2', '', 'inherit', 'open', 'closed', '', 'ri028c2', '', '', '2022-10-22 15:14:55', '2022-10-22 13:14:55', '', 74, 'http://localhost/shop/wp-content/uploads/2022/10/RI028c2.jpg', 0, 'attachment', 'image/jpeg', 0),
(76, 1, '2022-10-22 15:16:05', '2022-10-22 13:16:05', 'Mobilný telefón – 6.5\" AMOLED 2400 × 1080, 120Hz, procesor Qualcomm Snapdragon 865 8-jadrový, RAM 8GB, interná pamäť 256GB, zadný fotoaparát s optickým zoomom 12Mpx (f/1.8)+8Mpx (f/2.4)+12Mpx (f/2.2), predný fotoaparát 32Mpx, optická stabilizácia, GPS, Glonass, NFC, LTE, 5G, USB-C, čítačka odtlačkov prstov na displeji, vodoodolný podľa IP68, hybridný slot, neblokovaný, rýchle nabíjanie 25W, bezdrôtové nabíjanie 15W, reverzné nabíjanie 4.5W, batéria 4500mAh, Android 10', 'Samsung Galaxy S20 FE 5G 256 GB modrá', '', 'publish', 'open', 'closed', '', 'samsung-galaxy-s20-fe-5g-256-gb-modra', '', '', '2022-10-22 15:16:06', '2022-10-22 13:16:06', '', 0, 'http://localhost/shop/?post_type=product&#038;p=76', 0, 'product', '', 0),
(77, 1, '2022-10-22 15:15:58', '2022-10-22 13:15:58', '', 'ImgW (11)', '', 'inherit', 'open', 'closed', '', 'imgw-11', '', '', '2022-10-22 15:15:58', '2022-10-22 13:15:58', '', 76, 'http://localhost/shop/wp-content/uploads/2022/10/ImgW-11.jpg', 0, 'attachment', 'image/jpeg', 0),
(78, 1, '2022-10-22 15:17:06', '2022-10-22 13:17:06', 'Mobilný telefón – 6.1\" AMOLED 2340 × 1080, 120Hz, procesor Samsung Exynos 2200 8-jadrový, RAM 8GB, interná pamäť 256GB, zadný fotoaparát s optickým zoomom 50Mpx (f/1.8)+10Mpx (f/2.4)+12Mpx (f/2.2), predný fotoaparát 10Mpx, optická stabilizácia, GPS, Glonass, NFC, LTE, 5G, USB-C, čítačka odtlačkov prstov na displeji, vodoodolný podľa IP68, single SIM + eSIM, neblokovaný, rýchle nabíjanie 25W, bezdrôtové nabíjanie, reverzné nabíjanie, batéria 3700mAh, Android 12', 'Samsung Galaxy S22 5G 256 GB čierna', '', 'publish', 'open', 'closed', '', 'samsung-galaxy-s22-5g-256-gb-cierna', '', '', '2022-10-22 15:17:07', '2022-10-22 13:17:07', '', 0, 'http://localhost/shop/?post_type=product&#038;p=78', 0, 'product', '', 0),
(79, 1, '2022-10-22 15:17:01', '2022-10-22 13:17:01', '', 'ImgW (12)', '', 'inherit', 'open', 'closed', '', 'imgw-12', '', '', '2022-10-22 15:17:01', '2022-10-22 13:17:01', '', 78, 'http://localhost/shop/wp-content/uploads/2022/10/ImgW-12.jpg', 0, 'attachment', 'image/jpeg', 0),
(80, 1, '2022-10-22 15:18:02', '2022-10-22 13:18:02', 'Mobilný telefón – 6.67\" IPS 2376 × 1080, procesor Qualcomm Snapdragon 662 8-jadrový, RAM 6GB, interná pamäť 128GB, zadný fotoaparát 64Mpx (f/1.9)+8Mpx (f/2.4)+2Mpx (f/2.4)+2Mpx (f/2.4), predný fotoaparát 16Mpx, elektronická stabilizácia, GPS, Glonass, NFC, LTE, Jack (3.5mm) a USB-C, čítačka odtlačkov prstov, dual SIM, neblokovaný, rýchle nabíjanie 66W, batéria 4300mAh, Android 10', 'Huawei nova 8i strieborný', '', 'publish', 'open', 'closed', '', 'huawei-nova-8i-strieborny', '', '', '2022-10-22 15:18:02', '2022-10-22 13:18:02', '', 0, 'http://localhost/shop/?post_type=product&#038;p=80', 0, 'product', '', 0),
(81, 1, '2022-10-22 15:17:54', '2022-10-22 13:17:54', '', 'ImgW (13)', '', 'inherit', 'open', 'closed', '', 'imgw-13', '', '', '2022-10-22 15:17:54', '2022-10-22 13:17:54', '', 80, 'http://localhost/shop/wp-content/uploads/2022/10/ImgW-13.jpg', 0, 'attachment', 'image/jpeg', 0),
(82, 1, '2022-10-22 15:19:15', '2022-10-22 13:19:15', 'Bezdrôtové slúchadlá – s mikrofónom, True Wireless, štuple, uzatvorená konštrukcia, Bluetooth 5.3, aktívne potlačenie hluku (anc), prepínanie skladieb, prijímanie hovorov, s ovládaním hlasitosti, certifikácia IPX4, výdrž batérie až 30 h (6h+24h)', 'Apple AirPods Pro 2022', '', 'publish', 'open', 'closed', '', 'apple-airpods-pro-2022', '', '', '2022-10-22 15:19:16', '2022-10-22 13:19:16', '', 0, 'http://localhost/shop/?post_type=product&#038;p=82', 0, 'product', '', 0),
(83, 1, '2022-10-22 15:19:12', '2022-10-22 13:19:12', '', 'JA940i4b', '', 'inherit', 'open', 'closed', '', 'ja940i4b', '', '', '2022-10-22 15:19:12', '2022-10-22 13:19:12', '', 82, 'http://localhost/shop/wp-content/uploads/2022/10/JA940i4b.jpg', 0, 'attachment', 'image/jpeg', 0),
(84, 1, '2022-10-22 15:19:59', '2022-10-22 13:19:59', 'Bezdrôtové slúchadlá – s mikrofónom, cez hlavu, na uši, uzatvorená konštrukcia, 3.5 mm Jack, Bluetooth 5.0, prepínanie skladieb, prijímanie hovorov, s ovládaním hlasitosti, frekvenčný rozsah 20–20000 Hz, citlivosť 99 dB/mW, impedancia 32 Ohm, menič 40 mm, odnímateľný kábel 1.5m, výdrž batérie až 80 h', 'Marshall Major IV BT Black', '', 'publish', 'open', 'closed', '', 'marshall-major-iv-bt-black', '', '', '2022-10-22 15:19:59', '2022-10-22 13:19:59', '', 0, 'http://localhost/shop/?post_type=product&#038;p=84', 0, 'product', '', 0),
(85, 1, '2022-10-22 15:19:50', '2022-10-22 13:19:50', '', 'ImgW (14)', '', 'inherit', 'open', 'closed', '', 'imgw-14', '', '', '2022-10-22 15:19:50', '2022-10-22 13:19:50', '', 84, 'http://localhost/shop/wp-content/uploads/2022/10/ImgW-14.jpg', 0, 'attachment', 'image/jpeg', 0),
(86, 1, '2022-10-22 15:21:00', '2022-10-22 13:21:00', '<div class=\"nameextc\">Herné slúchadlá – káblové, s mikrofónom, na hlavu, okolo uší, uzatvorená konštrukcia, 3.5mm Jack, USB-A, pre PC, PlayStation 4, PlayStation 5, Xbox ONE a Xbox Series, podpora AAC a SBC, herný režim, priestorový zvuk 7.1, prepínanie skladieb, prijímanie hovorov, s ovládaním hlasitosti, frekvenčný rozsah 15–25000 Hz, citlivosť 98 dB/mW, impedancia 60 Ohm, menič 53 mm, kábel 1 m</div>', 'HyperX Cloud II Red', '', 'publish', 'open', 'closed', '', 'hyperx-cloud-ii-red', '', '', '2022-10-22 15:21:00', '2022-10-22 13:21:00', '', 0, 'http://localhost/shop/?post_type=product&#038;p=86', 0, 'product', '', 0),
(87, 1, '2022-10-22 15:20:52', '2022-10-22 13:20:52', '', 'ImgW (15)', '', 'inherit', 'open', 'closed', '', 'imgw-15', '', '', '2022-10-22 15:20:52', '2022-10-22 13:20:52', '', 86, 'http://localhost/shop/wp-content/uploads/2022/10/ImgW-15.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(88, 1, '2022-10-22 15:21:48', '2022-10-22 13:21:48', 'Herné slúchadlá – bezdrôtové, s mikrofónom, True Wireless štuple, uzatvorená konštrukcia, Bluetooth 5.0, USB-C, pre PC, aktívne potlačenie hluku (anc), herný režim, prepínanie skladieb, prijímanie hovorov, s ovládaním hlasitosti, certifikácia IPX4, frekvenčný rozsah 20–20000 Hz, citlivosť 38 dB/mW, menič 10 mm, výdrž batérie až 27 h', 'ASUS ROG CETRA TRUE WIRELESS', '', 'publish', 'open', 'closed', '', 'asus-rog-cetra-true-wireless', '', '', '2022-10-22 15:22:12', '2022-10-22 13:22:12', '', 0, 'http://localhost/shop/?post_type=product&#038;p=88', 0, 'product', '', 0),
(89, 1, '2022-10-22 15:22:07', '2022-10-22 13:22:07', '', 'ImgW (16)', '', 'inherit', 'open', 'closed', '', 'imgw-16', '', '', '2022-10-22 15:22:07', '2022-10-22 13:22:07', '', 88, 'http://localhost/shop/wp-content/uploads/2022/10/ImgW-16.jpg', 0, 'attachment', 'image/jpeg', 0),
(90, 1, '2022-10-22 15:23:11', '2022-10-22 13:23:11', 'Bezdrôtové slúchadlá – s mikrofónom, cez hlavu, okolo uší, uzatvorená konštrukcia, 3.5 mm Jack, Bluetooth 5.0, aktívne potlačenie hluku (anc), Ambient sound, hlasový asistent, prepínanie skladieb, prijímanie hovorov, s ovládaním hlasitosti, frekvenčný rozsah 20–20000 Hz, citlivosť 97 dB/mW, impedancia 32 Ohm, menič 40 mm, výdrž batérie až 50 h', 'JBL Live 660NC čierne', '', 'publish', 'open', 'closed', '', 'jbl-live-660nc-cierne', '', '', '2022-10-22 15:23:11', '2022-10-22 13:23:11', '', 0, 'http://localhost/shop/?post_type=product&#038;p=90', 0, 'product', '', 0),
(91, 1, '2022-10-22 15:23:07', '2022-10-22 13:23:07', '', 'ImgW (17)', '', 'inherit', 'open', 'closed', '', 'imgw-17', '', '', '2022-10-22 15:23:07', '2022-10-22 13:23:07', '', 90, 'http://localhost/shop/wp-content/uploads/2022/10/ImgW-17.jpg', 0, 'attachment', 'image/jpeg', 0),
(92, 1, '2022-10-22 15:24:28', '2022-10-22 13:24:28', 'USB kľúč USB 3.2 Gen 1 (USB 3.0), USB-A, kapacita 128 GB, rýchlosť zápisu až 60 MB/s, rýchlosť čítania až 200 MB/s, s pútkom na kľúče, štýlový, kov, sivá farba', 'Kingston DataTraveler Kyson 128 GB', '', 'publish', 'open', 'closed', '', 'kingston-datatraveler-kyson-128-gb', '', '', '2022-10-22 15:24:29', '2022-10-22 13:24:29', '', 0, 'http://localhost/shop/?post_type=product&#038;p=92', 0, 'product', '', 0),
(93, 1, '2022-10-22 15:24:20', '2022-10-22 13:24:20', '', 'ImgW (18)', '', 'inherit', 'open', 'closed', '', 'imgw-18', '', '', '2022-10-22 15:24:20', '2022-10-22 13:24:20', '', 92, 'http://localhost/shop/wp-content/uploads/2022/10/ImgW-18.jpg', 0, 'attachment', 'image/jpeg', 0),
(94, 1, '2022-10-22 15:25:17', '2022-10-22 13:25:17', 'Klávesnica kancelárska, membránová, drôtová, čierna, česká a slovenská lokalizácia klávesov, USB', 'Logitech Keyboard K120 OEM CZ/SK', '', 'publish', 'open', 'closed', '', 'logitech-keyboard-k120-oem-cz-sk', '', '', '2022-10-22 15:25:17', '2022-10-22 13:25:17', '', 0, 'http://localhost/shop/?post_type=product&#038;p=94', 0, 'product', '', 0),
(95, 1, '2022-10-22 15:25:13', '2022-10-22 13:25:13', '', 'ImgW (19)', '', 'inherit', 'open', 'closed', '', 'imgw-19', '', '', '2022-10-22 15:25:13', '2022-10-22 13:25:13', '', 94, 'http://localhost/shop/wp-content/uploads/2022/10/ImgW-19.jpg', 0, 'attachment', 'image/jpeg', 0),
(96, 1, '2022-10-22 15:26:16', '2022-10-22 13:26:16', 'Herná myš drôtová, USB, vhodná pre pravákov, optická, 6 tlačidiel, zmena DPI, RGB podsvietenie, 8000DPI, požívateľské profily, dĺžka kábla 2.1 m, čierna', 'Logitech G102 Lightsync, black', '', 'publish', 'open', 'closed', '', 'logitech-g102-lightsync-black', '', '', '2022-10-22 15:26:17', '2022-10-22 13:26:17', '', 0, 'http://localhost/shop/?post_type=product&#038;p=96', 0, 'product', '', 0),
(97, 1, '2022-10-22 15:26:12', '2022-10-22 13:26:12', '', 'ImgW (20)', '', 'inherit', 'open', 'closed', '', 'imgw-20', '', '', '2022-10-22 15:26:12', '2022-10-22 13:26:12', '', 96, 'http://localhost/shop/wp-content/uploads/2022/10/ImgW-20.jpg', 0, 'attachment', 'image/jpeg', 0),
(98, 1, '2022-10-22 15:27:49', '2022-10-22 13:27:49', 'Nabíjačka do siete – celkový výkon 45W, 2 výstupy, 1× USB-C 45 W, 1× USB-A 18W, podpora rýchleho nabíjania, ochrana 4Safe proti skratu, prepätiu, preťaženiu a prehriatiu, vstavaný PMIC, Smart IC – na automatickú detekciu pripojeného zariadenia a optimálnu distribúciu výkonu, na notebooky, mobilné telefóny a ďalšie podobné zariadenia', 'AlzaPower A145 Fast Charge 45 W biela', '', 'publish', 'open', 'closed', '', 'alzapower-a145-fast-charge-45-w-biela', '', '', '2022-10-22 15:27:49', '2022-10-22 13:27:49', '', 0, 'http://localhost/shop/?post_type=product&#038;p=98', 0, 'product', '', 0),
(99, 1, '2022-10-22 15:27:45', '2022-10-22 13:27:45', '', 'ImgW (21)', '', 'inherit', 'open', 'closed', '', 'imgw-21', '', '', '2022-10-22 15:27:45', '2022-10-22 13:27:45', '', 98, 'http://localhost/shop/wp-content/uploads/2022/10/ImgW-21.jpg', 0, 'attachment', 'image/jpeg', 0),
(100, 1, '2022-10-22 15:28:31', '2022-10-22 13:28:31', 'Herná myš drôtová, USB, vhodná pre pravákov, optická, 6 tlačidiel, zmena DPI, RGB podsvietenie, 8500DPI, požívateľské profily, dĺžka kábla 1.8 m, čierna', 'Razer Deathadder V2 Mini', '', 'publish', 'open', 'closed', '', 'razer-deathadder-v2-mini', '', '', '2022-10-22 15:28:31', '2022-10-22 13:28:31', '', 0, 'http://localhost/shop/?post_type=product&#038;p=100', 0, 'product', '', 0),
(101, 1, '2022-10-22 15:28:25', '2022-10-22 13:28:25', '', 'ImgW (22)', '', 'inherit', 'open', 'closed', '', 'imgw-22', '', '', '2022-10-22 15:28:25', '2022-10-22 13:28:25', '', 100, 'http://localhost/shop/wp-content/uploads/2022/10/ImgW-22.jpg', 0, 'attachment', 'image/jpeg', 0),
(102, 1, '2022-10-22 15:30:34', '2022-10-22 13:30:34', 'Digitálny fotoaparát – zrkadlovka, APS-C 24Mpx snímač, bajonet Canon EF-S, optický hľadáčik 0.8x, 3\" 0.921Mpx pevný displej, až Full HD video, SD, WiFi, NFC, mini HDMI, hmotnosť 475g + objektív Canon EF-S 18-55 mm f/3.5-5.6 DC III a objektív Canon EF 75-300 mm f/4-5.6 III', 'Canon EOS 2000D + 18–55 mm DC III + 75–300 mm DC III', '', 'publish', 'open', 'closed', '', 'canon-eos-2000d-18-55-mm-dc-iii-75-300-mm-dc-iii', '', '', '2022-10-22 15:30:34', '2022-10-22 13:30:34', '', 0, 'http://localhost/shop/?post_type=product&#038;p=102', 0, 'product', '', 0),
(103, 1, '2022-10-22 15:30:26', '2022-10-22 13:30:26', '', 'ImgW (23)', '', 'inherit', 'open', 'closed', '', 'imgw-23', '', '', '2022-10-22 15:30:26', '2022-10-22 13:30:26', '', 102, 'http://localhost/shop/wp-content/uploads/2022/10/ImgW-23.jpg', 0, 'attachment', 'image/jpeg', 0),
(104, 1, '2022-10-22 15:31:18', '2022-10-22 13:31:18', 'Digitálny fotoaparát – bezzrkadlovka, Full Frame 21.4Mpx snímač s IBIS, bajonet Canon RF, elektronický hľadáčik 3.69Mpx, 3\" 1.62Mpx výklopný dotykový displej, až 4K video, 10-bitové video, Log, HLG, SD, WiFi, Bluetooth, micro HDMI, 3.5mm jack, hmotnosť 680g', 'Canon EOS R6 telo', '', 'publish', 'open', 'closed', '', 'canon-eos-r6-telo', '', '', '2022-10-22 15:31:18', '2022-10-22 13:31:18', '', 0, 'http://localhost/shop/?post_type=product&#038;p=104', 0, 'product', '', 0),
(105, 1, '2022-10-22 15:31:05', '2022-10-22 13:31:05', '', 'ImgW (24)', '', 'inherit', 'open', 'closed', '', 'imgw-24', '', '', '2022-10-22 15:31:05', '2022-10-22 13:31:05', '', 104, 'http://localhost/shop/wp-content/uploads/2022/10/ImgW-24.jpg', 0, 'attachment', 'image/jpeg', 0),
(106, 1, '2022-10-22 15:32:36', '2022-10-22 13:32:36', 'Digitálny fotoaparát – bezzrkadlovka, Micro 4/3 20.4Mpx snímač s IBIS, bajonet Micro 4/3, elektronický hľadáčik 2.36Mpx, 3\" 1.04Mpx výklopný dotykový displej, až 4K video, Log, SD, SDHC a SDXC, WiFi, micro HDMI, 3.5mm jack, hmotnosť 504g + objektív Olympus M.ZUIKO ED 12-100 mm f/4 IS PRO', 'Olympus E-M1 Mark III telo + objektív 12 – 40 mm čierny/čierny', '', 'publish', 'open', 'closed', '', 'olympus-e-m1-mark-iii-telo-objektiv-12-40-mm-cierny-cierny', '', '', '2022-10-22 15:32:37', '2022-10-22 13:32:37', '', 0, 'http://localhost/shop/?post_type=product&#038;p=106', 0, 'product', '', 0),
(107, 1, '2022-10-22 15:32:28', '2022-10-22 13:32:28', '', 'ImgW (25)', '', 'inherit', 'open', 'closed', '', 'imgw-25', '', '', '2022-10-22 15:32:28', '2022-10-22 13:32:28', '', 106, 'http://localhost/shop/wp-content/uploads/2022/10/ImgW-25.jpg', 0, 'attachment', 'image/jpeg', 0),
(108, 1, '2022-10-22 15:33:54', '2022-10-22 13:33:54', 'Digitálny fotoaparát – bezzrkadlovka, Full Frame 25Mpx snímač s IBIS, bajonet Nikon Z, elektronický hľadáčik 3.69Mpx, 3.2\" 2.1Mpx výklopný dotykový displej, až 4K video, Log, SD, SDHC, SDXC, CFexpress Type B a XQD, WiFi, Bluetooth, micro HDMI, 3.5mm jack, hmotnosť 705g + objektív Nikon Z 24-200 mm f/4-6.3 VR', 'Nikon Z6 II + 24–200 mm f/4–6,3 VR', '', 'publish', 'open', 'closed', '', 'nikon-z6-ii-24-200-mm-f-4-63-vr', '', '', '2022-10-22 15:33:55', '2022-10-22 13:33:55', '', 0, 'http://localhost/shop/?post_type=product&#038;p=108', 0, 'product', '', 0),
(109, 1, '2022-10-22 15:33:45', '2022-10-22 13:33:45', '', 'ImgW (26)', '', 'inherit', 'open', 'closed', '', 'imgw-26', '', '', '2022-10-22 15:33:45', '2022-10-22 13:33:45', '', 108, 'http://localhost/shop/wp-content/uploads/2022/10/ImgW-26.jpg', 0, 'attachment', 'image/jpeg', 0),
(110, 1, '2022-10-22 15:35:27', '2022-10-22 13:35:27', 'Digitálny fotoaparát – ultrazoom, 1/2.3\" 18.2Mpx snímač, 28× optický zoom, bez hľadáčika, 3\" otočný dotykový displej, až 4K video, microSD, micro SDHC, micro SDXC a Memory Stick Micro, WiFi, Bluetooth, NFC, micro HDMI, hmotnosť 242g', 'Sony CyberShot DSC-HX99 čierny', '', 'publish', 'open', 'closed', '', 'sony-cybershot-dsc-hx99-cierny', '', '', '2022-10-22 15:35:28', '2022-10-22 13:35:28', '', 0, 'http://localhost/shop/?post_type=product&#038;p=110', 0, 'product', '', 0),
(111, 1, '2022-10-22 15:35:07', '2022-10-22 13:35:07', '', 'ImgW (27)', '', 'inherit', 'open', 'closed', '', 'imgw-27', '', '', '2022-10-22 15:35:07', '2022-10-22 13:35:07', '', 110, 'http://localhost/shop/wp-content/uploads/2022/10/ImgW-27.jpg', 0, 'attachment', 'image/jpeg', 0),
(112, 1, '2022-10-22 15:43:16', '2022-10-22 13:43:16', '', 'Order &ndash; 22 októbra, 2022 @ 03:43 PM', '', 'wc-completed', 'closed', 'closed', 'wc_order_GwEBBIF2qYRfv', 'objednat-oct-22-2022-0143-pm', '', '', '2022-10-22 15:46:37', '2022-10-22 13:46:37', '', 0, 'http://localhost/shop/?post_type=shop_order&#038;p=112', 0, 'shop_order', '', 2),
(113, 1, '2022-10-22 21:05:15', '2022-10-22 19:05:15', 'Počítač Intel Core i3 12100 Alder Lake 4.3 GHz, Intel UHD Graphics 730, RAM 4GB DDR4, SSD 256GB, bez mechaniky, VGA D-SUB, HDMI a DisplayPort, 4×USB 3.2, 2×USB 2.0, typ skrine: Desktop, myš a klávesnica, Windows 11 Home, (NBD), 11T00012CK', 'Lenovo ThinkCentre neo 50s Black', '', 'inherit', 'closed', 'closed', '', '60-autosave-v1', '', '', '2022-10-22 21:05:15', '2022-10-22 19:05:15', '', 60, 'http://localhost/shop/?p=113', 0, 'revision', '', 0),
(114, 1, '2022-10-22 21:48:13', '2022-10-22 19:48:13', '', 'Order &ndash; 22 októbra, 2022 @ 09:48 PM', '', 'wc-completed', 'closed', 'closed', 'wc_order_2CJIqs2OKWAJ2', 'objednat-oct-22-2022-0748-pm', '', '', '2022-10-22 21:48:50', '2022-10-22 19:48:50', '', 0, 'http://localhost/shop/?post_type=shop_order&#038;p=114', 0, 'shop_order', '', 2),
(115, 1, '2022-10-22 21:51:06', '2022-10-22 19:51:06', '', 'Order &ndash; 22 októbra, 2022 @ 09:51 PM', '', 'wc-completed', 'closed', 'closed', 'wc_order_nNGiupMNTEAVt', 'objednat-oct-22-2022-0751-pm', '', '', '2022-10-22 21:51:41', '2022-10-22 19:51:41', '', 0, 'http://localhost/shop/?post_type=shop_order&#038;p=115', 0, 'shop_order', '', 2);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Sťahujem dáta pre tabuľku `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 15, 'product_count_product_cat', '0'),
(2, 19, 'order', '0'),
(3, 19, 'display_type', ''),
(4, 19, 'thumbnail_id', '0'),
(5, 19, 'product_count_product_cat', '5'),
(6, 21, 'order', '0'),
(7, 21, 'display_type', ''),
(8, 21, 'thumbnail_id', '0'),
(9, 22, 'order', '0'),
(10, 22, 'display_type', ''),
(11, 22, 'thumbnail_id', '0'),
(12, 23, 'order', '0'),
(13, 23, 'display_type', ''),
(14, 23, 'thumbnail_id', '0'),
(15, 24, 'order', '0'),
(16, 24, 'display_type', ''),
(17, 24, 'thumbnail_id', '0'),
(18, 25, 'order', '0'),
(19, 25, 'display_type', ''),
(20, 25, 'thumbnail_id', '0'),
(21, 25, 'product_count_product_cat', '6'),
(22, 21, 'product_count_product_cat', '5'),
(23, 23, 'product_count_product_cat', '5'),
(24, 24, 'product_count_product_cat', '5'),
(25, 22, 'product_count_product_cat', '5');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Sťahujem dáta pre tabuľku `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Nezaradené', 'nezaradene', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Nezaradené', 'nezaradene', 0),
(16, 'twentytwentytwo', 'twentytwentytwo', 0),
(17, 'twentytwenty', 'twentytwenty', 0),
(18, 'shop', 'shop', 0),
(19, 'Slúchadlá', 'sluchadla', 0),
(20, 'PawsGang-eCommerce-Theme-WooCommerce-main', 'pawsgang-ecommerce-theme-woocommerce-main', 0),
(21, 'Laptopy', 'laptopy', 0),
(22, 'Fotoaparáty', 'fotoaparaty', 0),
(23, 'Telefóny', 'telefony', 0),
(24, 'Príslušenstvo', 'prislusenstvo', 0),
(25, 'Desktopy', 'desktopy', 0);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Sťahujem dáta pre tabuľku `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(11, 2, 0),
(11, 19, 0),
(15, 16, 0),
(17, 17, 0),
(19, 18, 0),
(20, 2, 0),
(20, 15, 0),
(21, 2, 0),
(21, 15, 0),
(28, 20, 0),
(49, 2, 0),
(49, 25, 0),
(52, 2, 0),
(52, 25, 0),
(54, 2, 0),
(54, 25, 0),
(56, 2, 0),
(56, 25, 0),
(58, 2, 0),
(58, 25, 0),
(60, 2, 0),
(60, 25, 0),
(62, 2, 0),
(62, 21, 0),
(64, 2, 0),
(64, 21, 0),
(66, 2, 0),
(66, 21, 0),
(68, 2, 0),
(68, 21, 0),
(70, 2, 0),
(70, 21, 0),
(72, 2, 0),
(72, 23, 0),
(74, 2, 0),
(74, 23, 0),
(76, 2, 0),
(76, 23, 0),
(78, 2, 0),
(78, 23, 0),
(80, 2, 0),
(80, 23, 0),
(82, 2, 0),
(82, 19, 0),
(84, 2, 0),
(84, 19, 0),
(86, 2, 0),
(86, 19, 0),
(88, 2, 0),
(88, 19, 0),
(90, 2, 0),
(90, 19, 0),
(92, 2, 0),
(92, 24, 0),
(94, 2, 0),
(94, 24, 0),
(96, 2, 0),
(96, 24, 0),
(98, 2, 0),
(98, 24, 0),
(100, 2, 0),
(100, 24, 0),
(102, 2, 0),
(102, 22, 0),
(104, 2, 0),
(104, 22, 0),
(106, 2, 0),
(106, 22, 0),
(108, 2, 0),
(108, 22, 0),
(110, 2, 0),
(110, 22, 0);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Sťahujem dáta pre tabuľku `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 31),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 0),
(16, 16, 'wp_theme', '', 0, 1),
(17, 17, 'wp_theme', '', 0, 1),
(18, 18, 'wp_theme', '', 0, 1),
(19, 19, 'product_cat', '', 0, 5),
(20, 20, 'wp_theme', '', 0, 1),
(21, 21, 'product_cat', '', 0, 5),
(22, 22, 'product_cat', '', 0, 5),
(23, 23, 'product_cat', '', 0, 5),
(24, 24, 'product_cat', '', 0, 5),
(25, 25, 'product_cat', '', 0, 6);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Sťahujem dáta pre tabuľku `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', 'Daniel'),
(3, 1, 'last_name', 'Rzeszoto'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '43'),
(18, 1, '_woocommerce_tracks_anon_id', 'woo:L5LpODRIcbw25kJzspckSn3k'),
(19, 1, 'wc_last_active', '1666483200'),
(20, 1, 'meta-box-order_product', 'a:3:{s:4:\"side\";s:84:\"submitdiv,postimagediv,woocommerce-product-images,product_catdiv,tagsdiv-product_tag\";s:6:\"normal\";s:55:\"woocommerce-product-data,postcustom,slugdiv,postexcerpt\";s:8:\"advanced\";s:0:\"\";}'),
(21, 1, 'last_update', '1666468266'),
(22, 1, 'woocommerce_admin_task_list_tracked_started_tasks', '{\"payments\":1,\"tax\":1,\"marketing\":4,\"appearance\":1,\"review-shipping\":1}'),
(23, 1, 'woocommerce_admin_help_panel_highlight_shown', '\"yes\"'),
(25, 1, 'billing_first_name', 'Daniel'),
(26, 1, 'billing_last_name', 'Rzeszoto'),
(27, 1, 'billing_address_1', 'Nanterská 17'),
(28, 1, 'billing_city', 'Žilina'),
(29, 1, 'billing_postcode', '01008'),
(30, 1, 'billing_country', 'SK'),
(31, 1, 'billing_email', 'rzeszotodaniel@gmail.com'),
(32, 1, 'billing_phone', '0904646235'),
(33, 1, 'shipping_first_name', 'Daniel'),
(34, 1, 'shipping_last_name', 'Rzeszoto'),
(35, 1, 'shipping_address_1', 'Nanterská 17'),
(36, 1, 'shipping_city', 'Žilina'),
(37, 1, 'shipping_postcode', '01008'),
(38, 1, 'shipping_country', 'SK'),
(39, 1, 'shipping_method', 'a:1:{i:0;s:15:\"free_shipping:1\";}'),
(41, 1, 'paying_customer', '1'),
(45, 1, 'dismissed_no_secure_connection_notice', '1'),
(47, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(48, 1, 'metaboxhidden_nav-menus', 'a:4:{i:0;s:21:\"add-post-type-product\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-product_cat\";i:3;s:15:\"add-product_tag\";}'),
(49, 1, 'dismissed_template_files_notice', '1'),
(57, 1, 'wp_user-settings', 'libraryContent=browse'),
(58, 1, 'wp_user-settings-time', '1666441704');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Sťahujem dáta pre tabuľku `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B0XFrQ3XIgppR8JEwYIZ55sifNRyNs1', 'admin', 'rzeszotodaniel@gmail.com', 'http://localhost/shop', '2022-10-04 11:39:14', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_wc_admin_notes`
--

CREATE TABLE `wp_wc_admin_notes` (
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_reminder` datetime DEFAULT NULL,
  `is_snoozable` tinyint(1) NOT NULL DEFAULT 0,
  `layout` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `icon` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'info'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `wp_wc_admin_notes`
--

INSERT INTO `wp_wc_admin_notes` (`note_id`, `name`, `type`, `locale`, `title`, `content`, `content_data`, `status`, `source`, `date_created`, `date_reminder`, `is_snoozable`, `layout`, `image`, `is_deleted`, `is_read`, `icon`) VALUES
(1, 'wc-admin-complete-store-details', 'info', 'en_US', 'Add your store details to complete store setup', 'Complete your store details with important information for setup such as your store’s base address', '{}', 'unactioned', 'woocommerce-admin', '2022-10-05 18:11:11', NULL, 0, 'plain', '', 0, 0, 'info'),
(2, 'new_in_app_marketplace_2021', 'info', 'en_US', 'Customize your store with extensions', 'Check out our NEW Extensions tab to see our favorite extensions for customizing your store, and discover the most popular extensions in the WooCommerce Marketplace.', '{}', 'unactioned', 'woocommerce.com', '2022-10-05 18:11:11', NULL, 0, 'plain', '', 0, 0, 'info'),
(3, 'wayflyer_bnpl_q4_2021', 'marketing', 'en_US', 'Grow your business with funding through Wayflyer', 'Fast, flexible financing to boost cash flow and help your business grow – one fee, no interest rates, penalties, equity, or personal guarantees. Based on your store’s performance, Wayflyer provides funding and analytical insights to invest in your business.', '{}', 'pending', 'woocommerce.com', '2022-10-05 18:11:11', NULL, 0, 'plain', '', 0, 0, 'info'),
(4, 'wc_shipping_mobile_app_usps_q4_2021', 'marketing', 'en_US', 'Print and manage your shipping labels with WooCommerce Shipping and the WooCommerce Mobile App', 'Save time by printing, purchasing, refunding, and tracking shipping labels generated by <a href=\"https://woocommerce.com/woocommerce-shipping/\">WooCommerce Shipping</a> – all directly from your mobile device!', '{}', 'pending', 'woocommerce.com', '2022-10-05 18:11:11', NULL, 0, 'plain', '', 0, 0, 'info'),
(5, 'wc_shipping_mobile_app_q4_2021', 'marketing', 'en_US', 'Print and manage your shipping labels with the WooCommerce Mobile App', 'Save time by printing, purchasing, refunding, and tracking shipping labels generated by <a href=\"https://woocommerce.com/woocommerce-shipping/\">WooCommerce Shipping</a> – all directly from your mobile device!', '{}', 'pending', 'woocommerce.com', '2022-10-05 18:11:11', NULL, 0, 'plain', '', 0, 0, 'info'),
(6, 'ecomm-need-help-setting-up-your-store', 'info', 'en_US', 'Need help setting up your Store?', 'Schedule a free 30-min <a href=\"https://wordpress.com/support/concierge-support/\">quick start session</a> and get help from our specialists. We’re happy to walk through setup steps, show you around the WordPress.com dashboard, troubleshoot any issues you may have, and help you the find the features you need to accomplish your goals for your site.', '{}', 'pending', 'woocommerce.com', '2022-10-05 18:11:11', NULL, 0, 'plain', '', 0, 0, 'info'),
(7, 'woocommerce-services', 'info', 'en_US', 'WooCommerce Shipping & Tax', 'WooCommerce Shipping &amp; Tax helps get your store \"ready to sell\" as quickly as possible. You create your products. We take care of tax calculation, payment processing, and shipping label printing! Learn more about the extension that you just installed.', '{}', 'pending', 'woocommerce.com', '2022-10-05 18:11:11', NULL, 0, 'plain', '', 0, 0, 'info'),
(8, 'ecomm-unique-shopping-experience', 'info', 'en_US', 'For a shopping experience as unique as your customers', 'Product Add-Ons allow your customers to personalize products while they\'re shopping on your online store. No more follow-up email requests—customers get what they want, before they\'re done checking out. Learn more about this extension that comes included in your plan.', '{}', 'pending', 'woocommerce.com', '2022-10-05 18:11:11', NULL, 0, 'plain', '', 0, 0, 'info'),
(9, 'wc-admin-getting-started-in-ecommerce', 'info', 'en_US', 'Getting Started in eCommerce - webinar', 'We want to make eCommerce and this process of getting started as easy as possible for you. Watch this webinar to get tips on how to have our store up and running in a breeze.', '{}', 'unactioned', 'woocommerce.com', '2022-10-05 18:12:49', NULL, 0, 'plain', '', 0, 0, 'info'),
(10, 'your-first-product', 'info', 'en_US', 'Your first product', 'That’s huge! You’re well on your way to building a successful online store — now it’s time to think about how you’ll fulfill your orders.<br /><br />Read our shipping guide to learn best practices and options for putting together your shipping strategy. And for WooCommerce stores in the United States, you can print discounted shipping labels via USPS with <a href=\"https://href.li/?https://woocommerce.com/shipping\" target=\"_blank\">WooCommerce Shipping</a>.', '{}', 'unactioned', 'woocommerce.com', '2022-10-10 19:57:19', NULL, 0, 'plain', '', 0, 0, 'info'),
(11, 'wc-admin-optimizing-the-checkout-flow', 'info', 'en_US', 'Optimizing the checkout flow', 'It’s crucial to get your store’s checkout as smooth as possible to avoid losing sales. Let’s take a look at how you can optimize the checkout experience for your shoppers.', '{}', 'unactioned', 'woocommerce.com', '2022-10-10 19:57:19', NULL, 0, 'plain', '', 0, 0, 'info'),
(12, 'wc-admin-first-five-things-to-customize', 'info', 'en_US', 'The first 5 things to customize in your store', 'Deciding what to start with first is tricky. To help you properly prioritize, we’ve put together this short list of the first few things you should customize in WooCommerce.', '{}', 'unactioned', 'woocommerce.com', '2022-10-10 19:57:19', NULL, 0, 'plain', '', 0, 0, 'info'),
(13, 'wc-payments-qualitative-feedback', 'info', 'en_US', 'WooCommerce Payments setup - let us know what you think', 'Congrats on enabling WooCommerce Payments for your store. Please share your feedback in this 2 minute survey to help us improve the setup process.', '{}', 'pending', 'woocommerce.com', '2022-10-05 18:11:11', NULL, 0, 'plain', '', 0, 0, 'info'),
(14, 'share-your-feedback-on-paypal', 'info', 'en_US', 'Share your feedback on PayPal', 'Share your feedback in this 2 minute survey about how we can make the process of accepting payments more useful for your store.', '{}', 'pending', 'woocommerce.com', '2022-10-05 18:11:11', NULL, 0, 'plain', '', 0, 0, 'info'),
(15, 'google_listings_and_ads_install', 'marketing', 'en_US', 'Drive traffic and sales with Google', 'Reach online shoppers to drive traffic and sales for your store by showcasing products across Google, for free or with ads.', '{}', 'pending', 'woocommerce.com', '2022-10-05 18:11:11', NULL, 0, 'plain', '', 0, 0, 'info'),
(16, 'wc-subscriptions-security-update-3-0-15', 'info', 'en_US', 'WooCommerce Subscriptions security update!', 'We recently released an important security update to WooCommerce Subscriptions. To ensure your site’s data is protected, please upgrade <strong>WooCommerce Subscriptions to version 3.0.15</strong> or later.<br /><br />Click the button below to view and update to the latest Subscriptions version, or log in to <a href=\"https://woocommerce.com/my-dashboard\">WooCommerce.com Dashboard</a> and navigate to your <strong>Downloads</strong> page.<br /><br />We recommend always using the latest version of WooCommerce Subscriptions, and other software running on your site, to ensure maximum security.<br /><br />If you have any questions we are here to help — just <a href=\"https://woocommerce.com/my-account/create-a-ticket/\">open a ticket</a>.', '{}', 'pending', 'woocommerce.com', '2022-10-05 18:11:11', NULL, 0, 'plain', '', 0, 0, 'info'),
(17, 'woocommerce-core-update-5-4-0', 'info', 'en_US', 'Update to WooCommerce 5.4.1 now', 'WooCommerce 5.4.1 addresses a checkout issue discovered in WooCommerce 5.4. We recommend upgrading to WooCommerce 5.4.1 as soon as possible.', '{}', 'pending', 'woocommerce.com', '2022-10-05 18:11:11', NULL, 0, 'plain', '', 0, 0, 'info'),
(18, 'wcpay-promo-2020-11', 'marketing', 'en_US', 'wcpay-promo-2020-11', 'wcpay-promo-2020-11', '{}', 'pending', 'woocommerce.com', '2022-10-05 18:11:11', NULL, 0, 'plain', '', 0, 0, 'info'),
(19, 'wcpay-promo-2020-12', 'marketing', 'en_US', 'wcpay-promo-2020-12', 'wcpay-promo-2020-12', '{}', 'pending', 'woocommerce.com', '2022-10-05 18:11:11', NULL, 0, 'plain', '', 0, 0, 'info'),
(20, 'ppxo-pps-upgrade-paypal-payments-1', 'info', 'en_US', 'Get the latest PayPal extension for WooCommerce', 'Heads up! There’s a new PayPal on the block!<br /><br />Now is a great time to upgrade to our latest <a href=\"https://woocommerce.com/products/woocommerce-paypal-payments/\" target=\"_blank\">PayPal extension</a> to continue to receive support and updates with PayPal.<br /><br />Get access to a full suite of PayPal payment methods, extensive currency and country coverage, and pay later options with the all-new PayPal extension for WooCommerce.', '{}', 'pending', 'woocommerce.com', '2022-10-05 18:11:11', NULL, 0, 'plain', '', 0, 0, 'info'),
(21, 'ppxo-pps-upgrade-paypal-payments-2', 'info', 'en_US', 'Upgrade your PayPal experience!', 'Get access to a full suite of PayPal payment methods, extensive currency and country coverage, offer subscription and recurring payments, and the new PayPal pay later options.<br /><br />Start using our <a href=\"https://woocommerce.com/products/woocommerce-paypal-payments/\" target=\"_blank\">latest PayPal today</a> to continue to receive support and updates.', '{}', 'pending', 'woocommerce.com', '2022-10-05 18:11:11', NULL, 0, 'plain', '', 0, 0, 'info'),
(22, 'woocommerce-core-sqli-july-2021-need-to-update', 'update', 'en_US', 'Action required: Critical vulnerabilities in WooCommerce', 'In response to a critical vulnerability identified on July 13, 2021, we are working with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br />Our investigation into this vulnerability is ongoing, but <strong>we wanted to let you know now about the importance of updating immediately</strong>.<br /><br />For more information on which actions you should take, as well as answers to FAQs, please urgently review our blog post detailing this issue.', '{}', 'pending', 'woocommerce.com', '2022-10-05 18:11:11', NULL, 0, 'plain', '', 0, 0, 'info'),
(23, 'woocommerce-blocks-sqli-july-2021-need-to-update', 'update', 'en_US', 'Action required: Critical vulnerabilities in WooCommerce Blocks', 'In response to a critical vulnerability identified on July 13, 2021, we are working with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br />Our investigation into this vulnerability is ongoing, but <strong>we wanted to let you know now about the importance of updating immediately</strong>.<br /><br />For more information on which actions you should take, as well as answers to FAQs, please urgently review our blog post detailing this issue.', '{}', 'pending', 'woocommerce.com', '2022-10-05 18:11:11', NULL, 0, 'plain', '', 0, 0, 'info'),
(24, 'woocommerce-core-sqli-july-2021-store-patched', 'update', 'en_US', 'Solved: Critical vulnerabilities patched in WooCommerce', 'In response to a critical vulnerability identified on July 13, 2021, we worked with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br /><strong>Your store has been updated to the latest secure version(s)</strong>. For more information and answers to FAQs, please review our blog post detailing this issue.', '{}', 'pending', 'woocommerce.com', '2022-10-05 18:11:11', NULL, 0, 'plain', '', 0, 0, 'info'),
(25, 'woocommerce-blocks-sqli-july-2021-store-patched', 'update', 'en_US', 'Solved: Critical vulnerabilities patched in WooCommerce Blocks', 'In response to a critical vulnerability identified on July 13, 2021, we worked with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br /><strong>Your store has been updated to the latest secure version(s)</strong>. For more information and answers to FAQs, please review our blog post detailing this issue.', '{}', 'pending', 'woocommerce.com', '2022-10-05 18:11:11', NULL, 0, 'plain', '', 0, 0, 'info'),
(26, 'habit-moment-survey', 'marketing', 'en_US', 'We’re all ears! Share your experience so far with WooCommerce', 'We’d love your input to shape the future of WooCommerce together. Feel free to share any feedback, ideas or suggestions that you have.', '{}', 'pending', 'woocommerce.com', '2022-10-05 18:11:11', NULL, 0, 'plain', '', 0, 0, 'info'),
(27, 'ecomm-wc-navigation-survey', 'info', 'en_US', 'We’d like your feedback on the WooCommerce navigation', 'We’re making improvements to the WooCommerce navigation and would love your feedback. Share your experience in this 2 minute survey.', '{}', 'pending', 'woocommerce.com', '2022-10-05 18:11:11', NULL, 0, 'plain', '', 0, 0, 'info'),
(28, 'woocommerce-core-paypal-march-2022-updated', 'update', 'en_US', 'Security auto-update of WooCommerce', '<strong>Your store has been updated to the latest secure version of WooCommerce</strong>. We worked with WordPress to deploy PayPal Standard security updates for stores running WooCommerce (version 3.5 to 6.3). It’s recommended to disable PayPal Standard, and use <a href=\"https://woocommerce.com/products/woocommerce-paypal-payments/\" target=\"_blank\">PayPal Payments</a> to accept PayPal.', '{}', 'pending', 'woocommerce.com', '2022-10-05 18:11:11', NULL, 0, 'plain', '', 0, 0, 'info'),
(29, 'woocommerce-core-paypal-march-2022-updated-nopp', 'update', 'en_US', 'Security auto-update of WooCommerce', '<strong>Your store has been updated to the latest secure version of WooCommerce</strong>. We worked with WordPress to deploy security updates related to PayPal Standard payment gateway for stores running WooCommerce (version 3.5 to 6.3).', '{}', 'pending', 'woocommerce.com', '2022-10-05 18:11:11', NULL, 0, 'plain', '', 0, 0, 'info'),
(30, 'pinterest_03_2022_update', 'marketing', 'en_US', 'Your Pinterest for WooCommerce plugin is out of date!', 'Update to the latest version of Pinterest for WooCommerce to continue using this plugin and keep your store connected with Pinterest. To update, visit <strong>Plugins &gt; Installed Plugins</strong>, and click on “update now” under Pinterest for WooCommerce.', '{}', 'pending', 'woocommerce.com', '2022-10-05 18:11:11', NULL, 0, 'plain', '', 0, 0, 'info'),
(31, 'store_setup_survey_survey_q2_2022', 'survey', 'en_US', 'How is your store setup going?', 'Our goal is to make sure you have all the right tools to start setting up your store in the smoothest way possible.\r\nWe’d love to know if we hit our mark and how we can improve. To collect your thoughts, we made a 2-minute survey.', '{}', 'unactioned', 'woocommerce.com', '2022-10-12 18:38:40', NULL, 0, 'plain', '', 0, 0, 'info'),
(32, 'wc-admin-wisepad3', 'marketing', 'en_US', 'Take your business on the go in Canada with WooCommerce In-Person Payments', 'Quickly create new orders, accept payment in person for orders placed online, and automatically sync your inventory – no matter where your business takes you. With WooCommerce In-Person Payments and the WisePad 3 card reader, you can bring the power of your store anywhere.', '{}', 'pending', 'woocommerce.com', '2022-10-05 18:11:11', NULL, 0, 'plain', '', 0, 0, 'info'),
(33, 'woocommerce-payments-august-2022-need-to-update', 'update', 'en_US', 'Action required: Please update WooCommerce Payments', 'An updated secure version of WooCommerce Payments is available – please ensure that you’re using the latest patch version. For more information on what action you need to take, please review the article below.', '{}', 'pending', 'woocommerce.com', '2022-10-05 18:11:11', NULL, 0, 'plain', '', 0, 0, 'info'),
(34, 'woocommerce-payments-august-2022-store-patched', 'update', 'en_US', 'WooCommerce Payments has been automatically updated', 'You’re now running the latest secure version of WooCommerce Payments. We’ve worked with the WordPress Plugins team to deploy a security update to stores running WooCommerce Payments (version 3.9 to 4.5). For further information, please review the article below.', '{}', 'pending', 'woocommerce.com', '2022-10-05 18:11:11', NULL, 0, 'plain', '', 0, 0, 'info'),
(35, 'googlelistings_signals2022_hasGLA', 'marketing', 'en_US', 'Show off your products with Ads on Google', 'You’re ready to grow with ads. Google optimizes for performance across your products; you only pay for results. If you’re new to Google, you can earn up to $500 in ad credits (T&amp;Cs apply). <a href=\"https://woocommerce.com/my-account/create-a-ticket/\">Contact support</a> if you need guidance with Google Listings &amp; Ads.', '{}', 'pending', 'woocommerce.com', '2022-10-05 18:11:11', NULL, 0, 'plain', '', 0, 0, 'info'),
(36, 'googlelistings_signals2022_noGLA', 'marketing', 'en_US', 'Show off your products with Ads on Google', 'You’re ready to grow with ads. Google optimizes for performance across your products; you only pay for results. If you’re new to Google, you can earn up to $500 in ad credits (T&amp;Cs apply). <a href=\"https://woocommerce.com/my-account/create-a-ticket/\">Contact support</a> if you need guidance with Google Listings &amp; Ads.', '{}', 'pending', 'woocommerce.com', '2022-10-05 18:11:11', NULL, 0, 'plain', '', 0, 0, 'info'),
(37, 'pre-black-friday-sale-2022-announcement', 'marketing', 'en_US', 'Surprise! We’re offering 40% off everything at WooCommerce.com', 'Just in time to get your store Black Friday ready. Sale ends 7 October, 2pm UTC.', '{}', 'unactioned', 'woocommerce.com', '2022-10-05 18:11:11', NULL, 0, 'plain', '', 0, 0, 'info'),
(38, 'wc-refund-returns-page', 'info', 'en_US', 'Setup a Refund and Returns Policy page to boost your store\'s credibility.', 'We have created a sample draft Refund and Returns Policy page for you. Please have a look and update it to fit your store.', '{}', 'unactioned', 'woocommerce-core', '2022-10-05 18:11:12', NULL, 0, 'plain', '', 0, 0, 'info'),
(39, 'wc-admin-wc-helper-connection', 'info', 'en_US', 'Pripojte sa na WooCommerce.com', 'Pripojte sa a získajte dôležité upozornenia a aktualizácie produktov.', '{}', 'unactioned', 'woocommerce-admin', '2022-10-05 18:11:14', NULL, 0, 'plain', '', 0, 0, 'info'),
(40, 'wc-admin-test-checkout', 'info', 'en_US', 'Nezabudnite otestovať vašu pokladňu', 'Predtým ako zvereníte váš eshop sa uistite, že vaše objednávky fungujú správne. Prejdite si celý proces krok po kroku: pridať produkt do košíka, vybrať spôsob dodania a uskutočniť platbu.', '{}', 'unactioned', 'woocommerce-admin', '2022-10-05 18:35:16', NULL, 0, 'plain', '', 0, 0, 'info'),
(41, 'wc-admin-choosing-a-theme', 'marketing', 'en_US', 'Vyberáte si tému?', 'Check out the themes that are compatible with WooCommerce and choose one aligned with your brand and business needs.', '{}', 'unactioned', 'woocommerce-admin', '2022-10-10 19:57:18', NULL, 0, 'plain', '', 0, 0, 'info'),
(42, 'wc-admin-customizing-product-catalog', 'info', 'en_US', 'Ako prispôsobiť váš produktový katalóg', 'You want your product catalog and images to look great and align with your brand. This guide will give you all the tips you need to get your products looking great in your store.', '{}', 'unactioned', 'woocommerce-admin', '2022-10-10 19:57:18', NULL, 0, 'plain', '', 0, 0, 'info'),
(43, 'wc-admin-insight-first-product-and-payment', 'survey', 'en_US', 'Náhľad', 'More than 80% of new merchants add the first product and have at least one payment method set up during the first week.<br><br>Do you find this type of insight useful?', '{}', 'unactioned', 'woocommerce-admin', '2022-10-10 19:57:18', NULL, 0, 'plain', '', 0, 0, 'info'),
(44, 'wc-admin-launch-checklist', 'info', 'en_US', 'Ste pripravený spustiť váš obchod?', 'To make sure you never get that sinking \"what did I forget\" feeling, we\'ve put together the essential pre-launch checklist.', '{}', 'unactioned', 'woocommerce-admin', '2022-10-10 19:57:18', NULL, 0, 'plain', '', 0, 0, 'info'),
(45, 'wc-admin-mobile-app', 'info', 'en_US', 'Inštalovať Woo mobilnú aplikáciu', 'Nainštalujte si mobilnú aplikáciu WooCommerce na správu objednávok, prijímanie oznámení o predaji a na zobrazenie kľúčových metrík - nech ste kdekoľvek.', '{}', 'unactioned', 'woocommerce-admin', '2022-10-10 19:57:18', NULL, 0, 'plain', '', 0, 0, 'info'),
(46, 'wc-admin-personalize-store', 'info', 'en_US', 'Personalizujte hlavnú stránku vášho obchodu.', 'Úvodná stránka je jedným z najdôležitejších vstupných bodov vášho obchodu. Pri správnom prevedení môže viesť k vyšším konverziám a záujmu. Nezabudnite prispôsobiť domovskú stránku, ktorú sme pre vás vytvorili počas onboardingu.', '{}', 'unactioned', 'woocommerce-admin', '2022-10-10 19:57:19', NULL, 0, 'plain', '', 0, 0, 'info'),
(47, 'wc-admin-update-store-details', 'info', 'en_US', 'Edit your store details if you need to', 'Nice work completing your store profile! You can always go back and edit the details you just shared, as needed.', '{}', 'unactioned', 'woocommerce-admin', '2022-10-10 19:57:19', NULL, 0, 'plain', '', 0, 0, 'info'),
(48, 'wc-admin-insight-first-sale', 'survey', 'en_US', 'Vedeli ste?', 'A WooCommerce powered store needs on average 31 days to get the first sale. You\'re on the right track! Do you find this type of insight useful?', '{}', 'unactioned', 'woocommerce-admin', '2022-10-12 18:38:39', NULL, 0, 'plain', '', 0, 0, 'info'),
(49, 'wc-admin-usage-tracking-opt-in', 'info', 'en_US', 'Pomôžte WooCommerce zlepšiť sa vďaka sledovaniu používania', 'Zhromažďovanie údajov o používaní nám umožňuje vylepšiť WooCommerce. Váš obchod sa bude posudzovať, pri vyhodnocovaní nových funkcií, posudzovaní kvality aktualizácie, alebo určovaní, či má nejaké vylepšenie zmysel. Vždy môžete navštíviť <a href=\"http://localhost/shop/wp-admin/admin.php?page=wc-settings&#038;tab=advanced&#038;section=woocommerce_com\" target=\"_blank\">Nastavenia</a> a zvoliť zastavenie zdieľania údajov. <a href=\"https://woocommerce.com/usage-tracking?utm_medium=product\" target=\"_blank\">Čítajte viac</a> o tom, aké údaje zhromažďujeme.', '{}', 'unactioned', 'woocommerce-admin', '2022-10-12 18:38:39', NULL, 0, 'plain', '', 0, 0, 'info'),
(50, 'shipping_category_q4_2022', 'marketing', 'en_US', 'Save time on shipping', 'Is your store all set to ship? Save valuable time (and money!) by automating your fulfillment process for the busiest shopping season. Explore our range of trusted shipping partners to get started.', '{}', 'unactioned', 'woocommerce.com', '2022-10-13 19:53:39', NULL, 0, 'plain', '', 0, 0, 'info'),
(51, 'wc-admin-customize-store-with-blocks', 'info', 'en_US', 'Prispôsobte si svoj online obchod pomocou WooCommerce blokov', 'With our blocks, you can select and display products, categories, filters, and more virtually anywhere on your site — no need to use shortcodes or edit lines of code. Learn more about how to use each one of them.', '{}', 'unactioned', 'woocommerce-admin', '2022-10-19 18:11:55', NULL, 0, 'plain', '', 0, 0, 'info'),
(52, 'wc-admin-coupon-page-moved', 'update', 'en_US', 'Správa kupónov sa presunula!', 'Zľavové kódy je možné spravovať z Marketing &gt; Zľavové kódy. Kliknutím na tlačidlo nižšie odstránite starú položku WooCommerce &gt; Zľavové kódy z menu.', '{}', 'unactioned', 'woocommerce-admin', '2022-10-19 18:28:02', NULL, 0, 'plain', '', 0, 0, 'info'),
(53, 'facebook_q4-2022_noFB', 'marketing', 'en_US', 'Meet your customers where they are with Facebook for WooCommerce', 'Don’t wait for your customers to come to you – meet them where they’re browsing! Use the Facebook for WooCommerce extension to promote your products on Facebook, Instagram, Messenger, and WhatsApp. Create seamless shopping experiences – straight from your WooCommerce dashboard.', '{}', 'unactioned', 'woocommerce.com', '2022-10-22 11:23:56', NULL, 0, 'plain', '', 0, 0, 'info'),
(54, 'wc-admin-orders-milestone', 'info', 'en_US', 'Prvá objednávka bola prijatá', 'Gratulujeme k získaniu vašej prvej objednávky! Teraz je skvelý čas, aby ste sa naučili spravovať objednávky.', '{}', 'unactioned', 'woocommerce-admin', '2022-10-22 14:11:15', NULL, 0, 'plain', '', 0, 0, 'info');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_wc_admin_note_actions`
--

CREATE TABLE `wp_wc_admin_note_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `actioned_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonce_action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nonce_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `wp_wc_admin_note_actions`
--

INSERT INTO `wp_wc_admin_note_actions` (`action_id`, `note_id`, `name`, `label`, `query`, `status`, `actioned_text`, `nonce_action`, `nonce_name`) VALUES
(1, 1, 'add-store-details', 'Add store details', 'http://localhost/shop/wp-admin/admin.php?page=wc-admin&path=/setup-wizard', 'actioned', '', NULL, NULL),
(44, 38, 'notify-refund-returns-page', 'Upraviť stránku', 'http://localhost/shop/wp-admin/post.php?post=10&action=edit', 'actioned', '', NULL, NULL),
(76, 39, 'connect', 'Pripojiť', '?page=wc-addons&section=helper', 'unactioned', '', NULL, NULL),
(129, 37, 'pre-black-friday-sale-2022-announcement', 'Shop the sale', 'https://woocommerce.com/marketplace-sale/?utm_source=inbox_note&utm_medium=product&utm_campaign=pre-black-friday-sale-2022-announcement', 'actioned', '', NULL, NULL),
(130, 40, 'test-checkout', 'Otestovať pokladňu', 'http://localhost/shop/obchod/', 'actioned', '', NULL, NULL),
(131, 41, 'visit-the-theme-marketplace', 'Visit the theme marketplace', 'https://woocommerce.com/product-category/themes/?utm_source=inbox&utm_medium=product', 'actioned', '', NULL, NULL),
(132, 42, 'day-after-first-product', 'Zistite viac', 'https://woocommerce.com/document/woocommerce-customizer/?utm_source=inbox&utm_medium=product', 'actioned', '', NULL, NULL),
(133, 43, 'affirm-insight-first-product-and-payment', 'Áno', '', 'actioned', 'Ďakujeme za spätnú väzbu', NULL, NULL),
(134, 43, 'affirm-insight-first-product-and-payment', 'Nie', '', 'actioned', 'Ďakujeme za spätnú väzbu', NULL, NULL),
(135, 44, 'learn-more', 'Zistite viac', 'https://woocommerce.com/posts/pre-launch-checklist-the-essentials/?utm_source=inbox&utm_medium=product', 'actioned', '', NULL, NULL),
(136, 45, 'learn-more', 'Zistite viac', 'https://woocommerce.com/mobile/?utm_medium=product', 'actioned', '', NULL, NULL),
(137, 46, 'personalize-homepage', 'Personalizovať domovskú stránku', 'http://localhost/shop/wp-admin/post.php?post=12&action=edit', 'actioned', '', NULL, NULL),
(138, 47, 'update-store-details', 'Update store details', 'http://localhost/shop/wp-admin/admin.php?page=wc-admin&path=/setup-wizard', 'actioned', '', NULL, NULL),
(262, 48, 'affirm-insight-first-sale', 'Áno', '', 'actioned', 'Ďakujeme za spätnú väzbu', NULL, NULL),
(263, 48, 'deny-insight-first-sale', 'Nie', '', 'actioned', 'Ďakujeme za spätnú väzbu', NULL, NULL),
(264, 49, 'tracking-opt-in', 'Aktivujte sledovanie používania', '', 'actioned', '', NULL, NULL),
(304, 35, 'googlelistings_signals2022_hasGLA_click', 'Connect Google Listings & Ads', 'http://localhost/shop/wp-admin/admin.php?page=wc-admin&path=marketing', 'unactioned', '', NULL, NULL),
(305, 36, 'googlelistings_signals2022_noGLA', 'Connect Google Listings & Ads', 'https://woocommerce.com/products/google-listings-and-ads/?utm_medium=product&utm_source=inbox_note&utm_campaign=googlelistings_signals2022_noGLA', 'unactioned', '', NULL, NULL),
(666, 51, 'customize-store-with-blocks', 'Zistite viac', 'https://woocommerce.com/posts/how-to-customize-your-online-store-with-woocommerce-blocks/?utm_source=inbox&utm_medium=product', 'actioned', '', NULL, NULL),
(707, 52, 'remove-legacy-coupon-menu', 'Odstrániť staršiu ponuku kupónov', 'http://localhost/shop/wp-admin/admin.php?page=wc-admin&action=remove-coupon-menu', 'actioned', '', NULL, NULL),
(749, 54, 'learn-more', 'Zistite viac', 'https://woocommerce.com/document/managing-orders/?utm_source=inbox&utm_medium=product', 'actioned', '', NULL, NULL),
(872, 53, 'facebook_q4-2022_noFB-click', 'Get started', 'https://woocommerce.com/products/facebook/?utm_source=inbox_note&utm_medium=product&utm_campaign=facebook_q4-2022_noFB-click', 'unactioned', '', NULL, NULL),
(913, 2, 'browse_extensions', 'Browse extensions', 'http://localhost/shop/wp-admin/admin.php?page=wc-addons', 'unactioned', '', NULL, NULL),
(914, 3, 'wayflyer_bnpl_q4_2021', 'Level up with funding', 'https://woocommerce.com/products/wayflyer/?utm_source=inbox_note&utm_medium=product&utm_campaign=wayflyer_bnpl_q4_2021', 'actioned', '', NULL, NULL),
(915, 4, 'wc_shipping_mobile_app_usps_q4_2021', 'Get WooCommerce Shipping', 'https://woocommerce.com/woocommerce-shipping/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc_shipping_mobile_app_usps_q4_2021', 'actioned', '', NULL, NULL),
(916, 5, 'wc_shipping_mobile_app_q4_2021', 'Get the WooCommerce Mobile App', 'https://woocommerce.com/mobile/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc_shipping_mobile_app_q4_2021', 'actioned', '', NULL, NULL),
(917, 6, 'set-up-concierge', 'Schedule free session', 'https://wordpress.com/me/concierge', 'actioned', '', NULL, NULL),
(918, 7, 'learn-more', 'Learn more', 'https://docs.woocommerce.com/document/woocommerce-shipping-and-tax/?utm_source=inbox', 'unactioned', '', NULL, NULL),
(919, 8, 'learn-more-ecomm-unique-shopping-experience', 'Learn more', 'https://docs.woocommerce.com/document/product-add-ons/?utm_source=inbox', 'actioned', '', NULL, NULL),
(920, 9, 'watch-the-webinar', 'Watch the webinar', 'https://youtu.be/V_2XtCOyZ7o', 'actioned', '', NULL, NULL),
(921, 10, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/ecommerce-shipping-solutions-guide/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more', 'actioned', '', NULL, NULL),
(922, 11, 'optimizing-the-checkout-flow', 'Learn more', 'https://woocommerce.com/posts/optimizing-woocommerce-checkout?utm_source=inbox_note&utm_medium=product&utm_campaign=optimizing-the-checkout-flow', 'actioned', '', NULL, NULL),
(923, 12, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/first-things-customize-woocommerce/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more', 'unactioned', '', NULL, NULL),
(924, 13, 'qualitative-feedback-from-new-users', 'Share feedback', 'https://automattic.survey.fm/wc-pay-new', 'actioned', '', NULL, NULL),
(925, 14, 'share-feedback', 'Share feedback', 'http://automattic.survey.fm/paypal-feedback', 'unactioned', '', NULL, NULL),
(926, 15, 'get-started', 'Get started', 'https://woocommerce.com/products/google-listings-and-ads?utm_source=inbox_note&utm_medium=product&utm_campaign=get-started', 'actioned', '', NULL, NULL),
(927, 16, 'update-wc-subscriptions-3-0-15', 'View latest version', 'http://localhost/shop/wp-admin/&page=wc-addons&section=helper', 'actioned', '', NULL, NULL),
(928, 17, 'update-wc-core-5-4-0', 'How to update WooCommerce', 'https://docs.woocommerce.com/document/how-to-update-woocommerce/', 'actioned', '', NULL, NULL),
(929, 20, 'ppxo-pps-install-paypal-payments-1', 'View upgrade guide', 'https://docs.woocommerce.com/document/woocommerce-paypal-payments/paypal-payments-upgrade-guide/', 'actioned', '', NULL, NULL),
(930, 21, 'ppxo-pps-install-paypal-payments-2', 'View upgrade guide', 'https://docs.woocommerce.com/document/woocommerce-paypal-payments/paypal-payments-upgrade-guide/', 'actioned', '', NULL, NULL),
(931, 22, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more', 'unactioned', '', NULL, NULL),
(932, 22, 'dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL),
(933, 23, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more', 'unactioned', '', NULL, NULL),
(934, 23, 'dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL),
(935, 24, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more', 'unactioned', '', NULL, NULL),
(936, 24, 'dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL),
(937, 25, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more', 'unactioned', '', NULL, NULL),
(938, 25, 'dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL),
(939, 26, 'share-feedback', 'Share feedback', 'https://automattic.survey.fm/store-management', 'unactioned', '', NULL, NULL),
(940, 27, 'share-navigation-survey-feedback', 'Share feedback', 'https://automattic.survey.fm/feedback-on-woocommerce-navigation', 'actioned', '', NULL, NULL),
(941, 28, 'learn-more', 'Learn more', 'https://developer.woocommerce.com/2022/03/10/woocommerce-3-5-10-6-3-1-security-releases/', 'unactioned', '', NULL, NULL),
(942, 28, 'woocommerce-core-paypal-march-2022-dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL),
(943, 29, 'learn-more', 'Learn more', 'https://developer.woocommerce.com/2022/03/10/woocommerce-3-5-10-6-3-1-security-releases/', 'unactioned', '', NULL, NULL),
(944, 29, 'dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL),
(945, 30, 'pinterest_03_2022_update', 'Update Instructions', 'https://woocommerce.com/document/pinterest-for-woocommerce/?utm_source=inbox_note&utm_medium=product&utm_campaign=pinterest_03_2022_update#section-3', 'actioned', '', NULL, NULL),
(946, 31, 'store_setup_survey_survey_q2_2022_share_your_thoughts', 'Tell us how it’s going', 'https://automattic.survey.fm/store-setup-survey-2022', 'actioned', '', NULL, NULL),
(947, 32, 'wc-admin-wisepad3', 'Grow my business offline', 'https://woocommerce.com/products/wisepad3-card-reader/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc-admin-wisepad3', 'actioned', '', NULL, NULL),
(948, 33, 'learn-more', 'Find out more', 'https://developer.woocommerce.com/2022/08/09/woocommerce-payments-3-9-4-4-5-1-security-releases/', 'unactioned', '', NULL, NULL),
(949, 33, 'dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL),
(950, 34, 'learn-more', 'Find out more', 'https://developer.woocommerce.com/2022/08/09/woocommerce-payments-3-9-4-4-5-1-security-releases/', 'unactioned', '', NULL, NULL),
(951, 34, 'dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL),
(952, 50, 'shipping_category_q4_2022_click', 'Automate my shipping', 'https://woocommerce.com/product-category/woocommerce-extensions/shipping-delivery-and-fulfillment/?categoryIds=28685&collections=product&page=1&utm_source=inbox_note&utm_medium=product&utm_campaign=shipping_category_q4_2022_click', 'unactioned', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_wc_category_lookup`
--

CREATE TABLE `wp_wc_category_lookup` (
  `category_tree_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `wp_wc_category_lookup`
--

INSERT INTO `wp_wc_category_lookup` (`category_tree_id`, `category_id`) VALUES
(15, 15),
(19, 19),
(21, 21),
(22, 22),
(23, 23),
(24, 24),
(25, 25);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_wc_customer_lookup`
--

CREATE TABLE `wp_wc_customer_lookup` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_last_active` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT NULL,
  `country` char(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `postcode` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `wp_wc_customer_lookup`
--

INSERT INTO `wp_wc_customer_lookup` (`customer_id`, `user_id`, `username`, `first_name`, `last_name`, `email`, `date_last_active`, `date_registered`, `country`, `postcode`, `city`, `state`) VALUES
(4, 1, 'admin', 'Daniel', 'Rzeszoto', 'rzeszotodaniel@gmail.com', '2022-10-22 17:51:06', '2022-10-04 09:39:14', 'SK', '01008', 'Žilina', '');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_wc_order_coupon_lookup`
--

CREATE TABLE `wp_wc_order_coupon_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_wc_order_product_lookup`
--

CREATE TABLE `wp_wc_order_product_lookup` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variation_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_qty` int(11) NOT NULL,
  `product_net_revenue` double NOT NULL DEFAULT 0,
  `product_gross_revenue` double NOT NULL DEFAULT 0,
  `coupon_amount` double NOT NULL DEFAULT 0,
  `tax_amount` double NOT NULL DEFAULT 0,
  `shipping_amount` double NOT NULL DEFAULT 0,
  `shipping_tax_amount` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `wp_wc_order_product_lookup`
--

INSERT INTO `wp_wc_order_product_lookup` (`order_item_id`, `order_id`, `product_id`, `variation_id`, `customer_id`, `date_created`, `product_qty`, `product_net_revenue`, `product_gross_revenue`, `coupon_amount`, `tax_amount`, `shipping_amount`, `shipping_tax_amount`) VALUES
(7, 42, 21, 0, 4, '2022-10-18 21:38:30', 3, 105, 105, 0, 0, 0, 0),
(9, 112, 74, 0, 4, '2022-10-22 15:43:16', 1, 565.9, 565.9, 0, 0, 0, 0),
(11, 114, 92, 0, 4, '2022-10-22 21:48:13', 1, 13.99, 13.99, 0, 0, 0, 0),
(13, 115, 82, 0, 4, '2022-10-22 21:51:06', 1, 298.9, 298.9, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_wc_order_stats`
--

CREATE TABLE `wp_wc_order_stats` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `num_items_sold` int(11) NOT NULL DEFAULT 0,
  `total_sales` double NOT NULL DEFAULT 0,
  `tax_total` double NOT NULL DEFAULT 0,
  `shipping_total` double NOT NULL DEFAULT 0,
  `net_total` double NOT NULL DEFAULT 0,
  `returning_customer` tinyint(1) DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `wp_wc_order_stats`
--

INSERT INTO `wp_wc_order_stats` (`order_id`, `parent_id`, `date_created`, `date_created_gmt`, `num_items_sold`, `total_sales`, `tax_total`, `shipping_total`, `net_total`, `returning_customer`, `status`, `customer_id`) VALUES
(42, 0, '2022-10-18 21:38:30', '2022-10-18 19:38:30', 3, 105, 0, 0, 105, 0, 'wc-trash', 4),
(112, 0, '2022-10-22 15:43:16', '2022-10-22 13:43:16', 1, 565.9, 0, 0, 565.9, 0, 'wc-completed', 4),
(114, 0, '2022-10-22 21:48:13', '2022-10-22 19:48:13', 1, 13.99, 0, 0, 13.99, 1, 'wc-completed', 4),
(115, 0, '2022-10-22 21:51:06', '2022-10-22 19:51:06', 1, 298.9, 0, 0, 298.9, 1, 'wc-completed', 4);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_wc_order_tax_lookup`
--

CREATE TABLE `wp_wc_order_tax_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_tax` double NOT NULL DEFAULT 0,
  `order_tax` double NOT NULL DEFAULT 0,
  `total_tax` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_wc_product_attributes_lookup`
--

CREATE TABLE `wp_wc_product_attributes_lookup` (
  `product_id` bigint(20) NOT NULL,
  `product_or_parent_id` bigint(20) NOT NULL,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `term_id` bigint(20) NOT NULL,
  `is_variation_attribute` tinyint(1) NOT NULL,
  `in_stock` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_wc_product_download_directories`
--

CREATE TABLE `wp_wc_product_download_directories` (
  `url_id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `wp_wc_product_download_directories`
--

INSERT INTO `wp_wc_product_download_directories` (`url_id`, `url`, `enabled`) VALUES
(1, 'file://C:/xampp/htdocs/shop/wp-content/uploads/woocommerce_uploads/', 1),
(2, 'http://localhost/shop/wp-content/uploads/woocommerce_uploads/', 1);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_wc_product_meta_lookup`
--

CREATE TABLE `wp_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT 0,
  `downloadable` tinyint(1) DEFAULT 0,
  `min_price` decimal(19,4) DEFAULT NULL,
  `max_price` decimal(19,4) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT 0,
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT 0,
  `average_rating` decimal(3,2) DEFAULT 0.00,
  `total_sales` bigint(20) DEFAULT 0,
  `tax_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'taxable',
  `tax_class` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `wp_wc_product_meta_lookup`
--

INSERT INTO `wp_wc_product_meta_lookup` (`product_id`, `sku`, `virtual`, `downloadable`, `min_price`, `max_price`, `onsale`, `stock_quantity`, `stock_status`, `rating_count`, `average_rating`, `total_sales`, `tax_status`, `tax_class`) VALUES
(11, '', 0, 0, '15.0000', '15.0000', 1, NULL, 'instock', 0, '0.00', 7, 'taxable', ''),
(20, '', 0, 0, '290.0000', '290.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(21, '', 0, 0, '35.0000', '35.0000', 1, NULL, 'instock', 0, '0.00', 3, 'taxable', ''),
(49, '', 0, 0, '758.9000', '758.9000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(52, '', 0, 0, '1369.0000', '1369.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(54, '', 0, 0, '468.9000', '468.9000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(56, '', 0, 0, '471.9000', '471.9000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(58, '', 0, 0, '679.8600', '679.8600', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(60, '', 0, 0, '731.6500', '731.6500', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(62, '', 0, 0, '463.9000', '463.9000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(64, '', 0, 0, '464.9000', '464.9000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(66, '', 0, 0, '478.9000', '478.9000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(68, '', 0, 0, '484.9000', '484.9000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(70, '', 0, 0, '515.0000', '515.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(72, '', 0, 0, '199.0000', '199.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(74, '', 0, 0, '565.9000', '565.9000', 0, NULL, 'instock', 0, '0.00', 1, 'taxable', ''),
(76, '', 0, 0, '609.9000', '609.9000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(78, '', 0, 0, '898.9000', '898.9000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(80, '', 0, 0, '295.9000', '295.9000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(82, '', 0, 0, '298.9000', '298.9000', 0, NULL, 'instock', 0, '0.00', 1, 'taxable', ''),
(84, '', 0, 0, '128.9000', '128.9000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(86, '', 0, 0, '101.9000', '101.9000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(88, '', 0, 0, '89.9000', '89.9000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(90, '', 0, 0, '179.0000', '179.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(92, '', 0, 0, '13.9900', '13.9900', 0, NULL, 'instock', 0, '0.00', 1, 'taxable', ''),
(94, '', 0, 0, '19.9000', '19.9000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(96, '', 0, 0, '29.9000', '29.9000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(98, '', 0, 0, '35.9000', '35.9000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(100, '', 0, 0, '34.9000', '34.9000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(102, '', 0, 0, '679.0000', '679.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(104, '', 0, 0, '2499.0000', '2499.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(106, '', 0, 0, '2019.0000', '2019.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(108, '', 0, 0, '3429.0000', '3429.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(110, '', 0, 0, '535.9000', '535.9000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', '');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_wc_rate_limits`
--

CREATE TABLE `wp_wc_rate_limits` (
  `rate_limit_id` bigint(20) UNSIGNED NOT NULL,
  `rate_limit_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate_limit_expiry` bigint(20) UNSIGNED NOT NULL,
  `rate_limit_remaining` smallint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_wc_reserved_stock`
--

CREATE TABLE `wp_wc_reserved_stock` (
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `stock_quantity` double NOT NULL DEFAULT 0,
  `timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expires` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_wc_tax_rate_classes`
--

CREATE TABLE `wp_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `wp_wc_tax_rate_classes`
--

INSERT INTO `wp_wc_tax_rate_classes` (`tax_rate_class_id`, `name`, `slug`) VALUES
(1, 'Znížená sadzba', 'znizena-sadzba'),
(2, 'Nulová sadzba', 'nulova-sadzba');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT 0,
  `pending_delivery` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `wp_woocommerce_order_itemmeta`
--

INSERT INTO `wp_woocommerce_order_itemmeta` (`meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_product_id', '11'),
(2, 1, '_variation_id', '0'),
(3, 1, '_qty', '5'),
(4, 1, '_tax_class', ''),
(5, 1, '_line_subtotal', '100'),
(6, 1, '_line_subtotal_tax', '0'),
(7, 1, '_line_total', '100'),
(8, 1, '_line_tax', '0'),
(9, 1, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(10, 2, 'method_id', 'free_shipping'),
(11, 2, 'instance_id', '1'),
(12, 2, 'cost', '0.00'),
(13, 2, 'total_tax', '0'),
(14, 2, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(15, 2, 'Položky', 'Slúchadlá &times; 5'),
(16, 3, '_product_id', '11'),
(17, 3, '_variation_id', '0'),
(18, 3, '_qty', '1'),
(19, 3, '_tax_class', ''),
(20, 3, '_line_subtotal', '20'),
(21, 3, '_line_subtotal_tax', '0'),
(22, 3, '_line_total', '20'),
(23, 3, '_line_tax', '0'),
(24, 3, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(25, 4, 'method_id', 'free_shipping'),
(26, 4, 'instance_id', '1'),
(27, 4, 'cost', '0.00'),
(28, 4, 'total_tax', '0'),
(29, 4, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(30, 4, 'Položky', 'Slúchadlá &times; 1'),
(31, 5, '_product_id', '11'),
(32, 5, '_variation_id', '0'),
(33, 5, '_qty', '1'),
(34, 5, '_tax_class', ''),
(35, 5, '_line_subtotal', '15'),
(36, 5, '_line_subtotal_tax', '0'),
(37, 5, '_line_total', '15'),
(38, 5, '_line_tax', '0'),
(39, 5, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(40, 6, 'method_id', 'free_shipping'),
(41, 6, 'instance_id', '1'),
(42, 6, 'cost', '0.00'),
(43, 6, 'total_tax', '0'),
(44, 6, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(45, 6, 'Položky', 'Slúchadlá &times; 1'),
(46, 7, '_product_id', '21'),
(47, 7, '_variation_id', '0'),
(48, 7, '_qty', '3'),
(49, 7, '_tax_class', ''),
(50, 7, '_line_subtotal', '105'),
(51, 7, '_line_subtotal_tax', '0'),
(52, 7, '_line_total', '105'),
(53, 7, '_line_tax', '0'),
(54, 7, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(55, 8, 'method_id', 'free_shipping'),
(56, 8, 'instance_id', '1'),
(57, 8, 'cost', '0.00'),
(58, 8, 'total_tax', '0'),
(59, 8, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(60, 8, 'Položky', 'Klávesnica &times; 3'),
(61, 9, '_product_id', '74'),
(62, 9, '_variation_id', '0'),
(63, 9, '_qty', '1'),
(64, 9, '_tax_class', ''),
(65, 9, '_line_subtotal', '565.9'),
(66, 9, '_line_subtotal_tax', '0'),
(67, 9, '_line_total', '565.9'),
(68, 9, '_line_tax', '0'),
(69, 9, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(70, 10, 'method_id', 'free_shipping'),
(71, 10, 'instance_id', '1'),
(72, 10, 'cost', '0.00'),
(73, 10, 'total_tax', '0'),
(74, 10, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(75, 10, 'Položky', 'iPhone 11 128 GB čierny &times; 1'),
(76, 11, '_product_id', '92'),
(77, 11, '_variation_id', '0'),
(78, 11, '_qty', '1'),
(79, 11, '_tax_class', ''),
(80, 11, '_line_subtotal', '13.99'),
(81, 11, '_line_subtotal_tax', '0'),
(82, 11, '_line_total', '13.99'),
(83, 11, '_line_tax', '0'),
(84, 11, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(85, 12, 'method_id', 'free_shipping'),
(86, 12, 'instance_id', '1'),
(87, 12, 'cost', '0.00'),
(88, 12, 'total_tax', '0'),
(89, 12, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(90, 12, 'Položky', 'Kingston DataTraveler Kyson 128 GB &times; 1'),
(91, 13, '_product_id', '82'),
(92, 13, '_variation_id', '0'),
(93, 13, '_qty', '1'),
(94, 13, '_tax_class', ''),
(95, 13, '_line_subtotal', '298.9'),
(96, 13, '_line_subtotal_tax', '0'),
(97, 13, '_line_total', '298.9'),
(98, 13, '_line_tax', '0'),
(99, 13, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(100, 14, 'method_id', 'free_shipping'),
(101, 14, 'instance_id', '1'),
(102, 14, 'cost', '0.00'),
(103, 14, 'total_tax', '0'),
(104, 14, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(105, 14, 'Položky', 'Apple AirPods Pro 2022 &times; 1');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `wp_woocommerce_order_items`
--

INSERT INTO `wp_woocommerce_order_items` (`order_item_id`, `order_item_name`, `order_item_type`, `order_id`) VALUES
(1, 'Slúchadlá', 'line_item', 16),
(2, 'Poštovné zdarma', 'shipping', 16),
(3, 'Slúchadlá', 'line_item', 18),
(4, 'Poštovné zdarma', 'shipping', 18),
(5, 'Slúchadlá', 'line_item', 37),
(6, 'Poštovné zdarma', 'shipping', 37),
(7, 'Klávesnica', 'line_item', 42),
(8, 'Poštovné zdarma', 'shipping', 42),
(9, 'iPhone 11 128 GB čierny', 'line_item', 112),
(10, 'Poštovné zdarma', 'shipping', 112),
(11, 'Kingston DataTraveler Kyson 128 GB', 'line_item', 114),
(12, 'Poštovné zdarma', 'shipping', 114),
(13, 'Apple AirPods Pro 2022', 'line_item', 115),
(14, 'Poštovné zdarma', 'shipping', 115);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(136, 't_d0eb790e266ddbe9d2a7586025afc0', 'a:13:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:2055:\"a:5:{s:32:\"5f93f983524def3dca464469d2cf9f3e\";a:11:{s:3:\"key\";s:32:\"5f93f983524def3dca464469d2cf9f3e\";s:10:\"product_id\";i:110;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:535.9;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:535.9;s:8:\"line_tax\";i:0;}s:32:\"9a1158154dfa42caddbd0694a4e9bdc8\";a:11:{s:3:\"key\";s:32:\"9a1158154dfa42caddbd0694a4e9bdc8\";s:10:\"product_id\";i:52;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:1369;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:1369;s:8:\"line_tax\";i:0;}s:32:\"a3f390d88e4c41f2747bfa2f1b5f87db\";a:11:{s:3:\"key\";s:32:\"a3f390d88e4c41f2747bfa2f1b5f87db\";s:10:\"product_id\";i:68;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:484.9;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:484.9;s:8:\"line_tax\";i:0;}s:32:\"a684eceee76fc522773286a895bc8436\";a:11:{s:3:\"key\";s:32:\"a684eceee76fc522773286a895bc8436\";s:10:\"product_id\";i:54;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:2;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:937.8;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:937.8;s:8:\"line_tax\";i:0;}s:32:\"9f61408e3afb633e50cdf1b20de6f466\";a:11:{s:3:\"key\";s:32:\"9f61408e3afb633e50cdf1b20de6f466\";s:10:\"product_id\";i:56;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:471.9;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:471.9;s:8:\"line_tax\";i:0;}}\";s:22:\"shipping_for_package_0\";s:427:\"a:2:{s:12:\"package_hash\";s:40:\"wc_ship_8c34687e85dd8ba67fadc97f9636c55e\";s:5:\"rates\";a:1:{s:15:\"free_shipping:1\";O:16:\"WC_Shipping_Rate\":2:{s:7:\"\0*\0data\";a:6:{s:2:\"id\";s:15:\"free_shipping:1\";s:9:\"method_id\";s:13:\"free_shipping\";s:11:\"instance_id\";i:1;s:5:\"label\";s:17:\"Poštovné zdarma\";s:4:\"cost\";s:4:\"0.00\";s:5:\"taxes\";a:0:{}}s:12:\"\0*\0meta_data\";a:1:{s:8:\"Položky\";s:46:\"ASUS V161GART-BD077D Black dotykový &times; 1\";}}}}\";s:25:\"previous_shipping_methods\";s:43:\"a:1:{i:0;a:1:{i:0;s:15:\"free_shipping:1\";}}\";s:23:\"chosen_shipping_methods\";s:33:\"a:1:{i:0;s:15:\"free_shipping:1\";}\";s:22:\"shipping_method_counts\";s:14:\"a:1:{i:0;i:1;}\";s:8:\"customer\";s:716:\"a:27:{s:2:\"id\";s:1:\"0\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"SK\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"SK\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:0:\"\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";s:14:\"shipping_phone\";s:0:\"\";}\";s:10:\"wc_notices\";N;s:21:\"chosen_payment_method\";s:3:\"cod\";}', 1666812660);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `wp_woocommerce_shipping_zones`
--

INSERT INTO `wp_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(1, 'Slovensko', 0);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `wp_woocommerce_shipping_zone_locations`
--

INSERT INTO `wp_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(1, 1, 'SK', 'country');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `wp_woocommerce_shipping_zone_methods`
--

INSERT INTO `wp_woocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES
(1, 1, 'free_shipping', 1, 1);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT 0,
  `tax_rate_shipping` int(1) NOT NULL DEFAULT 1,
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Kľúče pre exportované tabuľky
--

--
-- Indexy pre tabuľku `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook` (`hook`),
  ADD KEY `status` (`status`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id_status_scheduled_date_gmt` (`claim_id`,`status`,`scheduled_date_gmt`);

--
-- Indexy pre tabuľku `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Indexy pre tabuľku `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Indexy pre tabuľku `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

--
-- Indexy pre tabuľku `wp_aws_index`
--
ALTER TABLE `wp_aws_index`
  ADD UNIQUE KEY `source_term` (`id`,`term`,`term_source`,`lang`),
  ADD KEY `id` (`id`),
  ADD KEY `term_id` (`term_id`);

--
-- Indexy pre tabuľku `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexy pre tabuľku `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Indexy pre tabuľku `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexy pre tabuľku `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexy pre tabuľku `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexy pre tabuľku `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexy pre tabuľku `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexy pre tabuľku `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexy pre tabuľku `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexy pre tabuľku `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexy pre tabuľku `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexy pre tabuľku `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexy pre tabuľku `wp_wc_admin_notes`
--
ALTER TABLE `wp_wc_admin_notes`
  ADD PRIMARY KEY (`note_id`);

--
-- Indexy pre tabuľku `wp_wc_admin_note_actions`
--
ALTER TABLE `wp_wc_admin_note_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `note_id` (`note_id`);

--
-- Indexy pre tabuľku `wp_wc_category_lookup`
--
ALTER TABLE `wp_wc_category_lookup`
  ADD PRIMARY KEY (`category_tree_id`,`category_id`);

--
-- Indexy pre tabuľku `wp_wc_customer_lookup`
--
ALTER TABLE `wp_wc_customer_lookup`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `email` (`email`);

--
-- Indexy pre tabuľku `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indexy pre tabuľku `wp_wc_order_coupon_lookup`
--
ALTER TABLE `wp_wc_order_coupon_lookup`
  ADD PRIMARY KEY (`order_id`,`coupon_id`),
  ADD KEY `coupon_id` (`coupon_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexy pre tabuľku `wp_wc_order_product_lookup`
--
ALTER TABLE `wp_wc_order_product_lookup`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexy pre tabuľku `wp_wc_order_stats`
--
ALTER TABLE `wp_wc_order_stats`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `date_created` (`date_created`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `status` (`status`(191));

--
-- Indexy pre tabuľku `wp_wc_order_tax_lookup`
--
ALTER TABLE `wp_wc_order_tax_lookup`
  ADD PRIMARY KEY (`order_id`,`tax_rate_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexy pre tabuľku `wp_wc_product_attributes_lookup`
--
ALTER TABLE `wp_wc_product_attributes_lookup`
  ADD PRIMARY KEY (`product_or_parent_id`,`term_id`,`product_id`,`taxonomy`),
  ADD KEY `is_variation_attribute_term_id` (`is_variation_attribute`,`term_id`);

--
-- Indexy pre tabuľku `wp_wc_product_download_directories`
--
ALTER TABLE `wp_wc_product_download_directories`
  ADD PRIMARY KEY (`url_id`),
  ADD KEY `url` (`url`(191));

--
-- Indexy pre tabuľku `wp_wc_product_meta_lookup`
--
ALTER TABLE `wp_wc_product_meta_lookup`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `virtual` (`virtual`),
  ADD KEY `downloadable` (`downloadable`),
  ADD KEY `stock_status` (`stock_status`),
  ADD KEY `stock_quantity` (`stock_quantity`),
  ADD KEY `onsale` (`onsale`),
  ADD KEY `min_max_price` (`min_price`,`max_price`);

--
-- Indexy pre tabuľku `wp_wc_rate_limits`
--
ALTER TABLE `wp_wc_rate_limits`
  ADD PRIMARY KEY (`rate_limit_id`),
  ADD UNIQUE KEY `rate_limit_key` (`rate_limit_key`(191));

--
-- Indexy pre tabuľku `wp_wc_reserved_stock`
--
ALTER TABLE `wp_wc_reserved_stock`
  ADD PRIMARY KEY (`order_id`,`product_id`);

--
-- Indexy pre tabuľku `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  ADD PRIMARY KEY (`tax_rate_class_id`),
  ADD UNIQUE KEY `slug` (`slug`(191));

--
-- Indexy pre tabuľku `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexy pre tabuľku `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexy pre tabuľku `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexy pre tabuľku `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`);

--
-- Indexy pre tabuľku `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexy pre tabuľku `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexy pre tabuľku `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexy pre tabuľku `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexy pre tabuľku `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexy pre tabuľku `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Indexy pre tabuľku `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexy pre tabuľku `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexy pre tabuľku `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexy pre tabuľku `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexy pre tabuľku `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT pre exportované tabuľky
--

--
-- AUTO_INCREMENT pre tabuľku `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT pre tabuľku `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  MODIFY `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=791;

--
-- AUTO_INCREMENT pre tabuľku `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pre tabuľku `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=278;

--
-- AUTO_INCREMENT pre tabuľku `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pre tabuľku `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pre tabuľku `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pre tabuľku `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3492;

--
-- AUTO_INCREMENT pre tabuľku `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1202;

--
-- AUTO_INCREMENT pre tabuľku `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT pre tabuľku `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT pre tabuľku `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT pre tabuľku `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT pre tabuľku `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT pre tabuľku `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pre tabuľku `wp_wc_admin_notes`
--
ALTER TABLE `wp_wc_admin_notes`
  MODIFY `note_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT pre tabuľku `wp_wc_admin_note_actions`
--
ALTER TABLE `wp_wc_admin_note_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=953;

--
-- AUTO_INCREMENT pre tabuľku `wp_wc_customer_lookup`
--
ALTER TABLE `wp_wc_customer_lookup`
  MODIFY `customer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pre tabuľku `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pre tabuľku `wp_wc_product_download_directories`
--
ALTER TABLE `wp_wc_product_download_directories`
  MODIFY `url_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pre tabuľku `wp_wc_rate_limits`
--
ALTER TABLE `wp_wc_rate_limits`
  MODIFY `rate_limit_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pre tabuľku `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  MODIFY `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pre tabuľku `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pre tabuľku `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pre tabuľku `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pre tabuľku `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pre tabuľku `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pre tabuľku `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT pre tabuľku `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pre tabuľku `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pre tabuľku `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pre tabuľku `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT pre tabuľku `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pre tabuľku `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pre tabuľku `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pre tabuľku `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pre tabuľku `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Obmedzenie pre exportované tabuľky
--

--
-- Obmedzenie pre tabuľku `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD CONSTRAINT `fk_wp_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
