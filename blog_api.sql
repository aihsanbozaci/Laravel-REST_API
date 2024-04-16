-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 16 Nis 2024, 10:07:46
-- Sunucu sürümü: 8.0.30
-- PHP Sürümü: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `blog_api`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2024_04_15_162427_create_posts_table', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Güncellenmiş Post', 'Bu bir güncellenmiş test postudur.', 1, '2024-04-15 13:34:23', '2024-04-15 13:38:04'),
(2, 'Yeni Post 2', 'Bu bir test postudur 2.', 1, '2024-04-15 13:34:23', '2024-04-15 13:34:23'),
(3, 'Yeni Post 3', 'Bu bir test postudur 3.', 2, '2024-04-15 13:34:23', '2024-04-15 13:34:23'),
(4, 'Yeni Post 4', 'Bu bir test postudur 4.', 2, '2024-04-15 13:34:23', '2024-04-15 13:34:23'),
(5, 'Yeni Post 5', 'Bu bir test postudur 5.', 3, '2024-04-15 13:34:23', '2024-04-15 13:34:23'),
(6, 'Yeni Post 6', 'Bu bir test postudur 6.', 3, '2024-04-15 13:34:23', '2024-04-15 13:34:23'),
(7, 'Yeni Post 7', 'Bu bir test postudur 7.', 4, '2024-04-15 13:34:23', '2024-04-15 13:34:23'),
(8, 'Yeni Post 8', 'Bu bir test postudur 8.', 4, '2024-04-15 13:34:23', '2024-04-15 13:34:23'),
(9, 'Yeni Post 9', 'Bu bir test postudur 9.', 5, '2024-04-15 13:34:23', '2024-04-15 13:34:23'),
(11, 'Yeni Post 10', 'Bu bir test postudur 10.', 5, '2024-04-15 13:43:07', '2024-04-15 13:43:07'),
(12, 'Yeni Post 11', 'Bu bir test postudur 11', 5, '2024-04-15 13:43:07', '2024-04-15 13:43:07');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Holden Bednar', 'orion67@gmail.com', NULL, '$2y$12$KLIlNtkhsxsbwH2wHKgtjehlGaG2afXV66dGO6vPQ47ftZB04gy42', 'fCjrbMp62Z', '2005-11-10 10:06:47', NULL),
(2, 'Cory Feeney IV', 'shanie.king@williamson.biz', NULL, '$2y$12$OUNGKZlglCBPGljZCCdLfORs612T0zN4vAYKbHdZZObYb2apVnWlS', 'bfqDIQkA8w', '2006-11-01 16:51:56', NULL),
(3, 'Willis Bogisich', 'hbuckridge@gmail.com', NULL, '$2y$12$wsaAvmeaVMx0uzDN2gXuU.AfiYpa7tII3JwoxocvK/6pZkZHZldn6', 'G0l6PIbm0X', '1989-07-09 16:15:41', NULL),
(4, 'Annette Johns Jr.', 'ywehner@volkman.com', NULL, '$2y$12$s3HgwwNJGTx.vVxYXisLMuq4bqu6CxjkSY7e0HSuoLpqUB5PmRW7i', 'BXO2nemaT0', '1996-01-19 21:54:07', NULL),
(5, 'Felicia DuBuque', 'therman@waelchi.com', NULL, '$2y$12$uvj/hTzGPf9YEAoIWAazaOIq/DH/e6I9nu6Sn9RythmiM/FelCCBy', 'MCl0PIzYtL', '2022-11-11 02:07:40', NULL),
(6, 'Dena Ortiz MD', 'myrtis80@schneider.com', NULL, '$2y$12$D229JwODcIT3lvTja3Amw.z/eQGz6aQSBrIgXkFrnWNlg7bVnl7hK', 'VkZ3IiObWy', '1970-05-09 16:39:03', NULL),
(7, 'Eloise Langosh', 'gabbott@corwin.com', NULL, '$2y$12$1DDYlzxXUM39d8NWlKPzjOHetI6KG6g2xPK1KsVOQnpR8hryURFJG', 'P4Xq7JUq7S', '2009-12-04 04:45:36', NULL),
(8, 'Prof. Dina Nikolaus', 'gennaro39@reynolds.com', NULL, '$2y$12$HxagwAe3/gWhlpiV75NTb.y.H/ip2WzL/xjsWqyBZxmjZ444G6q4e', 'MYC4J9KUzS', '1991-08-29 20:52:55', NULL),
(9, 'Carey Barrows', 'kutch.amelie@kihn.org', NULL, '$2y$12$aKZYWH1BVX5j7qY8pIu7ieNjrt4n7Su4UVHDH.1jjmId58Cbe5D5y', 'uEW5Z8JSGL', '1995-12-07 05:55:22', NULL),
(10, 'John Gorczany', 'bart06@mccullough.com', NULL, '$2y$12$X6BBItkwwfUSwziU5CUCs.XfofXk03HwaGpL99YcRtCg3KH26aNGy', 'NEccCJ8apN', '1976-12-27 12:46:27', NULL),
(11, 'Ryder Waters', 'kamron.ankunding@gmail.com', NULL, '$2y$12$u8RnC2aAktKBmVOCLPsy6.HkxZxzddr8jAaHCc8GXfv3DQ9aWOxOK', 'JoLiZDOLRo', '2004-12-15 10:15:31', NULL),
(12, 'Noe Pollich', 'gerson59@kautzer.com', NULL, '$2y$12$0N3LXmBNkCaoz5olHN6ejuW5JPwQKI/4uSjtxtFB1E7eebl3Qw9Y2', '83kI3bTmec', '1992-11-01 17:58:51', NULL),
(13, 'Jimmy Langworth', 'hodkiewicz.elvie@yahoo.com', NULL, '$2y$12$wnW0Jx1gxPfJXBQ5VwMkfOyHO.MVFXkvo8igItXJ7Q3lRf.PnKvP2', 'xMLJvW9eY5', '1975-07-28 18:40:51', NULL),
(14, 'Nils Emmerich', 'mayer.victoria@hotmail.com', NULL, '$2y$12$HxNx2/pqTpWXcAKci9jb6.Sneco4IWu3s.cAyS3Xef/ZV985Fpgi2', '3KW6EoggDW', '2010-09-19 21:10:52', NULL),
(15, 'Viviane Fahey', 'jaskolski.romaine@gmail.com', NULL, '$2y$12$1Y9H5CRaxWtuiQIVpV8WY.i69CauE7GCpNw1E1mwrJMVodvTNP.Iq', 'k0a0g75tIp', '1985-07-19 00:56:37', NULL),
(16, 'Madelyn Fadel PhD', 'geraldine.dach@yahoo.com', NULL, '$2y$12$nd07lGyiSrCVPxXtg0UICedNJsoccDqmWqEgOw4smMzizxD.9KJ/e', 'MvDfcV1Wi7', '1994-07-15 07:56:46', NULL),
(17, 'Yasmeen Kirlin', 'elyse57@gmail.com', NULL, '$2y$12$06ujaunJu2UekC6FH.zlf.vIfepWjnxBejvtDSB/a59NlXwAihVbO', 'sBHh8SWiWr', '2022-06-19 20:39:45', NULL),
(18, 'Dr. Barney Haley', 'adelia06@kihn.info', NULL, '$2y$12$tp5HiPVUPFfAj/yv5399l.9uEahNxkQuoI0l5hFSCEd4fl5mTQ9Bi', 'SG3wAL3JYp', '1988-09-05 20:45:07', NULL),
(19, 'Casandra Ferry', 'gward@hotmail.com', NULL, '$2y$12$aJ34SoMg9wiwCQoXFhev5uUJQ9B2lTR3aCv84JZetZzfzHeF.kT6e', 'DCVYrlLNNE', '1989-08-07 20:23:27', NULL),
(20, 'Mr. Fletcher Funk PhD', 'wkilback@runolfsdottir.com', NULL, '$2y$12$dAcrJNXot1e6.GaqnL4yeORhUdQ5IdzfHg1yReFpcXGX/N5q8av6W', 'DK2hym2eB9', '1987-07-30 14:52:06', NULL),
(21, 'Miss Ally Mante', 'gottlieb.rodrick@yahoo.com', NULL, '$2y$12$GPD5YkkKQKthJID58ZrDVe0Oo.9ZTp0NqMwhRoIt0LrxCBfJ2MDdq', 'BogpSHlLdf', '2001-02-24 03:27:36', NULL),
(22, 'Prof. Muhammad Leannon', 'janae.abernathy@rosenbaum.net', NULL, '$2y$12$UvZBynM/.rZujnltPDBv3.OGm2HyY8igu2lEv2HzWOjaGEm3T8avu', 'G8uQymytpH', '2012-05-09 14:25:55', NULL),
(23, 'Keira Labadie', 'ogreenholt@yahoo.com', NULL, '$2y$12$rysXHqAVTqEbO9jCI1hlpeMyxUdkPiLTURRy7txvhipCWMJQ.Ft7K', '4XOcIYUBXm', '2019-10-02 22:07:58', NULL),
(24, 'Princess Lesch', 'colten81@stehr.biz', NULL, '$2y$12$MqWTOjUm25ajwivWWwlFp.Prrg4/uNdD3cvckxpxOHr6Uf71ctHne', 'ReWfhYmVE5', '1989-05-24 05:16:15', NULL),
(25, 'Isom D\'Amore', 'vschiller@gmail.com', NULL, '$2y$12$4QIix6XAugr8gR9NK8I1euLwuhXTJIFEE5.vPVM.DqyiZTIOM/Bdm', '8U3sUXWuw7', '2004-04-15 01:30:28', NULL),
(26, 'Johanna Runolfsson', 'noe.auer@gmail.com', NULL, '$2y$12$2emmsqVMCMYu5bEqt1y4quNVNAZtnuhenf.0AzjxlxEQ8tdQgDZiC', 'MP1LoNSOmQ', '2007-01-24 23:26:23', NULL),
(27, 'Ms. Jordane Willms', 'glover.nelle@luettgen.net', NULL, '$2y$12$EMebP5Wm./nwO2Jyu6y8deU1xDnaAidvcbyv/H8AJOWlgXg8trbr6', 'nDCmrrUUWa', '1980-10-04 05:54:35', NULL),
(28, 'Norwood Kirlin', 'wdoyle@howell.com', NULL, '$2y$12$mBHIBHaiQBZJoIJB7yxmwupBYYBRNV6eVgDA8Cd6DU.gouvlK.COe', 'HfeGNafXbe', '1986-10-28 11:49:02', NULL),
(29, 'Prof. Ernie Raynor II', 'lolita.yost@heller.com', NULL, '$2y$12$RslzxCFjyl5ydHZFkKI4hOWD6N5L6Eg4K/WYsYzK/6eILBbZ0Ofn6', '2YhgYLBB87', '1976-06-07 07:40:14', NULL),
(30, 'Violette Denesik PhD', 'kdurgan@hotmail.com', NULL, '$2y$12$q6.iDXnVBTUxzU8kghT7u.Zo6BsJPbbaC9F3f4GMOL1t16cc4FvNG', 'O3n2vXXaPu', '2019-02-22 03:19:03', NULL),
(31, 'Merritt Frami', 'fkovacek@medhurst.com', NULL, '$2y$12$ygZ8jqUMN6zow1PJQPTA0uA7b.qQ1Eb8rHILWD4JD/UKETmTAwDSq', 'aKBt3V2NXk', '1987-07-06 07:41:51', NULL),
(32, 'Freeman Gusikowski', 'ewyman@rath.com', NULL, '$2y$12$/BWdZnA9CutVn5nviChBt.myN30/XwbhDaQhvaqJ88gQaBkK97ZBe', 'aqhyRaAF53', '2014-09-08 08:52:44', NULL),
(33, 'Alisha Lang MD', 'nellie.kuphal@shanahan.com', NULL, '$2y$12$WGzdY6xIZ7NXJ9TV8ZgWM.JLMmRbiA2JxWUisDoZy/Bx.tqwQaZHW', '3VdTdArWRo', '1970-10-10 14:05:42', NULL),
(34, 'Tiffany Feest DVM', 'brent.lind@yahoo.com', NULL, '$2y$12$.2T7311q2YE4yfshqnF6MOIVx8IrY3pKKStSDuW4nq1odR86zodBW', 'g8wVKbfq4A', '1991-02-14 20:58:02', NULL),
(35, 'Dr. Price Kunze DVM', 'yjaskolski@hotmail.com', NULL, '$2y$12$juK3NDd4brc.7V6of4uzWONFkkS0d1tdcOouT7AjUOAJM9qwQrYcG', 'eZTiWytTO5', '2017-02-05 13:31:47', NULL),
(36, 'Mariah Kuvalis', 'bergnaum.jarrett@gmail.com', NULL, '$2y$12$el.HkziUFxsMijTdICdt5u7gfjcPyAE4DAMmF/Eb0BgpyBjleHide', 'fi5JdsYbyK', '2003-07-10 09:34:01', NULL),
(37, 'Jalyn Blanda', 'medhurst.mikel@oberbrunner.com', NULL, '$2y$12$JU.w/nLeEKq3/yclwvrPt.09sJDkutgj66G8Dc1bL4ZcGJ.hmUFsO', 'Od1U7Ah5NP', '2022-10-30 02:53:13', NULL),
(38, 'Micah Crona Jr.', 'briana70@hotmail.com', NULL, '$2y$12$YrL6UT6bIP9uhmHlarpoI.7UcdNo2gathIi3Rvx7bKqBoBdCoOnb.', 'dWstDob2UL', '1972-03-19 01:54:00', NULL),
(39, 'Vicky Cummerata I', 'brandyn47@corwin.com', NULL, '$2y$12$QmqK1.dvBIw5yuAYM2SUz.bdSzPHh/FQJryxjPlQGFatPMmAxjkie', 'uyJUxffJL1', '1994-04-09 09:06:47', NULL),
(40, 'Mr. Keven Howe III', 'kathleen.buckridge@yahoo.com', NULL, '$2y$12$GvsVETZNL2s.bHQ6O/jMDuKkFSOZ17GqWQiAF9ujLLoWUJeWuVwTq', 'B3izSixQSs', '1999-01-22 23:15:08', NULL),
(41, 'Miss Isabell Jones DDS', 'ondricka.freeda@yahoo.com', NULL, '$2y$12$a/7Pf0rm4/GWfqb.crrPf.TIIH0fK2tIymRKn.wK.UNZJ8YACUy1y', 'ieO5awQqJD', '1979-07-29 11:54:15', NULL),
(42, 'Travon Effertz', 'vwaelchi@hotmail.com', NULL, '$2y$12$DxU7MsFhqCWJDjl3vwyR8O4dRpyy7TdPYpClVAv.iYDKJRUmym3cC', '6bTAQXrrMO', '1989-06-08 03:09:36', NULL),
(43, 'Jessika Schamberger', 'stark.tressa@johns.com', NULL, '$2y$12$rHNxzuJi/98mlQuLTQQrleRSyAspzA6HIcoEgruJdHE0pu1asLG6e', 'pQBWnFe4Ji', '1990-10-07 13:33:52', NULL),
(44, 'Glen Nikolaus', 'gisselle13@gmail.com', NULL, '$2y$12$z63hbRCd6hX..NYYFiZZw.c7jhfE9.JS/Ia3ElyvAb8vKUbQZncJO', '110V3xaAYs', '2008-08-20 18:53:48', NULL),
(45, 'Demetrius Lynch', 'lang.miracle@gmail.com', NULL, '$2y$12$aR6sSOeMtcT/N85XyKiQ/epaCefYfF5srTrOgcilJKnqCECSR69gm', '23BHuULP8x', '1971-11-26 09:38:23', NULL),
(46, 'Muhammad Ortiz', 'bethany.breitenberg@renner.com', NULL, '$2y$12$Cvo2h/RFF0/Ihd1Tl.80DuxmOsv2ST68qHZuohe0kfG1d8znK6Swi', 'qHDglJ1PeZ', '2002-10-07 09:16:57', NULL),
(47, 'Liam Beahan V', 'pagac.hailie@yahoo.com', NULL, '$2y$12$bf0BnQmIBEV1fExQazvh/O/FXum3qbXtjhhJtgHJRHaf/CoW5EHwK', 'qc3y0ntuk7', '1988-12-17 09:50:31', NULL),
(48, 'Ms. Sally Kirlin', 'sstokes@yahoo.com', NULL, '$2y$12$RF.KEzRoc8jh2K1y2C6yUe/nlMXzKkicPUiYgFirbltgogiMxD50e', 'BccoifeUSl', '1979-07-01 22:44:08', NULL),
(49, 'Prof. Floyd Bartoletti III', 'qwolf@oconnell.info', NULL, '$2y$12$g5OnkZp/vFAjiW9cWatfk.ueY0N0HvBmNlti3ktnuxEAre4UcSZ9S', '5dZoNFMBry', '1973-12-16 03:32:03', NULL),
(50, 'Stella Fadel', 'mprosacco@steuber.com', NULL, '$2y$12$IsDK8qEfXrBt/E02ALDs.uA.CJi/IS6sWbVoy6Ktyn6P7tDn4WLhS', 'k6XGmQY1jI', '1975-05-28 00:31:27', NULL),
(51, 'Raven Spencer', 'sarina.raynor@hotmail.com', NULL, '$2y$12$GZNZoGUg.Bj/3cTJ1811M.jsnfapRhwcf7hPpuDAX2aapRzlSFr/u', '922D43eVST', '1972-05-29 18:39:59', NULL),
(52, 'Rosemary Little', 'cwalker@kertzmann.com', NULL, '$2y$12$aEg1dpTIhHWTWsOr9eV1dO8uekJ4h4ZPRYVaZjgjbLU/uM0hdcIQm', '9xTN3LIq6m', '1986-09-12 21:39:05', NULL),
(53, 'Miss Lavinia Balistreri', 'marcella68@gmail.com', NULL, '$2y$12$mKrBTZZ2Ys31asXEIQu3HezB8K5s4EABOKFFvK4rqBDqmSz/xC77W', 'atLZNSlQ72', '1987-04-11 10:44:15', NULL),
(54, 'Maryam Runolfsson', 'znicolas@yahoo.com', NULL, '$2y$12$LyTk.O6FSD44Qy5kzw8MOuxRSdMiH6Hww/PzQLX/duBQuT7k4DXCK', 'gMoZ6xK8lH', '1989-12-04 12:50:51', NULL),
(55, 'Mrs. Althea Fahey', 'jensen.kulas@klocko.com', NULL, '$2y$12$WsSB9kJBmBuYuUhuFNX5VOsZxpTychqRM3Zik3s3AbASIMxQkZIem', 'dTzlIHAb3Q', '2011-08-09 16:35:36', NULL),
(56, 'Efren Paucek', 'mercedes17@gmail.com', NULL, '$2y$12$g1kDWB55DT46Ll32HslrDeM2OYhuRBvpYDhRr0X0IfyMcJX34ynna', 'lYf01r6hre', '2015-05-21 08:23:34', NULL),
(57, 'Benedict McGlynn', 'malcolm.greenfelder@gmail.com', NULL, '$2y$12$uWbcZ1xARp2p0CrTYO.9x.z0.AHxLw9tfGMFzZAGBCNcIMqPVIW0u', 'JvaYHco1Pq', '1999-02-05 06:07:14', NULL),
(58, 'Aiyana Roberts', 'ffarrell@lebsack.biz', NULL, '$2y$12$ivM9XEIz/prpr.GyKHVfDu6spqRfsuj6ql9cNUMe2OruO7W6RcHsm', 'QwaifXVT1O', '2005-04-06 17:44:26', NULL),
(59, 'Santa Goyette Jr.', 'hand.ahmed@gmail.com', NULL, '$2y$12$PSnSrlpHUPx.PJlXApcIDO1tAkrmlrd.TpdEUSayj2AgnYHK0liTy', 'DhLKQMd3lz', '1988-04-26 10:37:12', NULL),
(60, 'Kelton Hoppe DDS', 'trace98@yahoo.com', NULL, '$2y$12$id7I8tieRtJpMTfr.UnOJOQil.Dx3uSilARN3SVk/kF34hLRXT6Y2', 'A7ACfb7YI2', '1980-08-25 10:13:58', NULL),
(61, 'Rachelle Hill DVM', 'ysatterfield@smitham.info', NULL, '$2y$12$7owv3hiMlK92zH0qnmbCL.xJehrHC1PRwxk2yiBTxpUwI6OQlXf8i', 'mwQekeVWpY', '2009-10-22 02:53:31', NULL),
(62, 'Jeff Gleason', 'jbeer@spinka.com', NULL, '$2y$12$ftO9Lc7FNDaWoEXIOYjdf.WbayWrDJGXPsXirqxtxpmnz6ZYuLRHW', 'NE0Gblzm33', '1989-01-30 23:49:36', NULL),
(63, 'Junius Spencer', 'burnice14@lakin.biz', NULL, '$2y$12$dHMvWojgE5keVoyee9aOLOIPzHj0z.KLewytl3LbZ7aNUZe3SSsny', 'ehzBcsi9hD', '1988-07-31 14:29:13', NULL),
(64, 'Mr. Evans Larson II', 'ccartwright@dietrich.com', NULL, '$2y$12$2wHFybGOncuMCUO7WVlxku8lWmoboEx2VpPXYGb5r5oyRUqypz5H6', '1tliMeARnq', '1973-12-08 00:16:38', NULL),
(65, 'Cleora Wisozk I', 'ebert.kari@marvin.info', NULL, '$2y$12$iZmKPomm0Q9FuuGaliLgEecOwV2gS2ZaTlhLjywxTXUn8UJsY6Hke', '1xiyBzeCrr', '2006-04-13 13:45:58', NULL),
(66, 'Elody O\'Connell', 'denesik.ernie@christiansen.net', NULL, '$2y$12$ikqw.f7LlcC1kgCQmNISQezzDKt757BhyFewR8G9f6bCcxdj.3r.q', 'GM9Z2edV7L', '2018-05-25 15:18:39', NULL),
(67, 'Meta Yost', 'bdonnelly@grady.biz', NULL, '$2y$12$/MIPu3XMzgE5h1mhzfKePORPhAhghEEQxV6aX4qFZmlFTF4MX2taq', '7ZzpBa6IvO', '1986-05-02 00:37:18', NULL),
(68, 'Geo Nicolas', 'wendy37@huels.com', NULL, '$2y$12$d8BOL4lYkulXr0ZyBSYz/urkpqq/CxLViCDHzAulcQ7WM5I9uMWHq', '9XJnshmO9V', '2014-06-16 07:00:13', NULL),
(69, 'Jerrod Spencer', 'witting.lizeth@bechtelar.com', NULL, '$2y$12$I9VyGOtBtVWnj4ahA2A1leBhebXq9UFoohw81GtA8eRJnW962GmEO', 'VT1ggqIjuM', '1975-04-05 06:35:39', NULL),
(70, 'Laurianne Stehr', 'sbatz@hotmail.com', NULL, '$2y$12$vvpyXVnoZWYw9KVUxNN1r.oQxOcJyA7sHWEeCgpkN5tN2lT7Bi5La', 'JUbfHYzmyQ', '2017-10-25 01:37:27', NULL),
(71, 'Brando Nitzsche', 'fredrick76@gmail.com', NULL, '$2y$12$2s0mK71E3T0KBpnnCGNVw.zmJCEy/j0KNwyz7oh4zhOR3F8PJ52hi', 'SPiddoogqW', '1976-06-15 22:36:11', NULL),
(72, 'Prof. Berry Dickens', 'santos03@crona.com', NULL, '$2y$12$PTmIozwg/uQ337hQp8xaD.Fb5IFttY1SaZ8VHF1zFCAsOgO8PBrlS', 'PEuT5V8rpJ', '2005-01-08 04:04:30', NULL),
(73, 'Giovanny Schuster', 'vernice.mcclure@kutch.com', NULL, '$2y$12$7VLHO1W.ybggEtH69dJ6Be26abXb0jwvYTTWWi3MZDvCIo.CKQA/6', 'CTj7chj8Is', '2006-10-02 18:42:44', NULL),
(74, 'Reece Smitham II', 'simonis.jakayla@dickens.com', NULL, '$2y$12$NuM9RVXsB4EsfumcEpbanOKAPe15FIu01ClxeKvw580l.deWvWxjW', 'PBTzuZyxBc', '2022-09-02 19:24:30', NULL),
(75, 'Dr. Mariane Macejkovic II', 'torphy.aiden@wuckert.com', NULL, '$2y$12$vvx/Bbv3YHEDoEfkT/ASE.UPZqbLpvTCJ0OWiH0bDIyKoQ8p0NGUi', 'kmopoRZGK6', '2006-02-19 06:28:50', NULL),
(76, 'Rashawn Williamson', 'pamela.streich@halvorson.com', NULL, '$2y$12$ZP/Vw1rbbnETgBuoLDzb6.NwBpn8Wk3DqZKpG7AUsdgDcFZhj39T2', 'i5mu7lMaGk', '1979-07-13 06:45:01', NULL),
(77, 'Janice Ondricka', 'krystal75@hotmail.com', NULL, '$2y$12$ME8ZHoHARyUl7TUT5JTaaOPN0pU7yknvV6WY5EoVoVNMkxBLQM.Ta', 'yIjhDv9t5L', '2003-07-25 06:35:05', NULL),
(78, 'Hugh Kerluke', 'sauer.eula@ohara.com', NULL, '$2y$12$sZU2r8Uq9wObUl9sBpPPS.GRui.B9CSzt1HyX5Q19sHDUV.Qllpva', 'Q7FCAubbl9', '1976-09-09 13:03:52', NULL),
(79, 'Derrick Sauer', 'berta92@yahoo.com', NULL, '$2y$12$1suAG2u71hVR7nLFXJlzmuNddwfudPRgvwIxli2oMISWW6z1cWkjG', 'HRPPMHd8w3', '1994-09-25 18:18:13', NULL),
(80, 'Aric Hansen', 'harmony.smith@yahoo.com', NULL, '$2y$12$7LCTCPMSWvXLnpuiRcFhK.QOh5ZpKT64D56hoXDhUUCWo06VbT8H.', '0Pb6nkrwxl', '2018-09-04 14:42:58', NULL),
(81, 'Felicita Rice', 'hgorczany@tromp.com', NULL, '$2y$12$XlSTolqaNJmNoDMOsrgNBenSmCx1EAo5tEKlIRl84XEtb0kf1JfQW', 'CYRSTFxmsB', '1997-03-06 03:37:31', NULL),
(82, 'Ken Carroll', 'steuber.eli@howe.com', NULL, '$2y$12$ElxhX0wqsFUZW.gRjyVrP.M//qw4KbP2G/CmVEcWiSHmHMdaaAQxe', 'HxmjK0DG9N', '2017-03-14 07:11:11', NULL),
(83, 'Adrianna Daugherty', 'williamson.justen@prohaska.com', NULL, '$2y$12$qLzjnrwzbts/Mxbb05cVT.g3flD9x7uJKLzjoUbY8q3f8UaFEcsKK', 'RSEoqoEGsF', '1975-04-18 06:33:03', NULL),
(84, 'Ms. Melissa McClure I', 'kmcglynn@zboncak.info', NULL, '$2y$12$C5ARan5pPmbb7dx8Pv3glOfsnpy0aO8Bh14HTJwUk7q4zb.bs3MAW', '3GabYTo3m7', '1998-07-14 04:59:10', NULL),
(85, 'Prof. Hector Jakubowski', 'muller.audreanne@reichert.com', NULL, '$2y$12$d9Y2R9yL1t/rTB/C5ZFi6e5sK5Tng6.2AArIGq.89RkvNTrdaAINW', 'ktVt29yEOZ', '2004-07-25 19:45:19', NULL),
(86, 'Brenna Considine', 'ratke.toney@rohan.biz', NULL, '$2y$12$eaU4Pq51JXURumuKLQNC/u0cDwV2enoPjKNA/HfOEGDLsvK8tv/Je', 'Z9rhdqPhOr', '1992-05-23 06:01:02', NULL),
(87, 'Arnulfo Hermiston', 'eschaden@yahoo.com', NULL, '$2y$12$GWIeGevXH/x/9xT0Xpksu.U5XsusUMgtKute9UutZYZAzb2.tg4Nu', 'KUR86iVRdh', '2023-08-31 10:58:34', NULL),
(88, 'Eldridge Nicolas', 'bailey26@walter.net', NULL, '$2y$12$LL5PQ4.xtEv/JJ2w3/vrhONiMRve4TKIYrXtDkjySGntAXXyYrmMW', '2BehpV8Yf5', '1988-02-26 15:34:06', NULL),
(89, 'Agustin Kilback', 'littel.henderson@frami.com', NULL, '$2y$12$TgssvK24khkvFHotT0CxH.RpCZ9HSdQyYKOeEuwojioRwS3ynGyFq', 'mcyGpBxCW8', '1982-10-02 01:55:27', NULL),
(90, 'Mr. Conor Ziemann DVM', 'ifisher@gaylord.com', NULL, '$2y$12$aBS2gmZFg/3nxez6rslsy.NuUV2mwaU9YQ905NXm2uV/5xekMu.du', 'QjYvnLZirv', '2016-06-25 09:07:06', NULL),
(91, 'Donny Oberbrunner', 'mante.clara@yahoo.com', NULL, '$2y$12$KuGgNh2BIrNRtiDwpy/BV.CpTKYALE/BbkPdH6RDnucA/WyaI0RO2', 'FiaEgI17XE', '1983-07-27 15:30:07', NULL),
(92, 'Jo Russel III', 'ashlynn.schiller@reichel.com', NULL, '$2y$12$D1Rt.v2PhOndItsKs/W83uvY2EQClcZ.U3VeH1yZYwPX0271XkbNW', 'fskTly5ifg', '2016-11-21 03:42:08', NULL),
(93, 'Joanne Becker I', 'vcrist@kub.com', NULL, '$2y$12$Rtni/c0xou2Mu.Lk51TTBO.cL6JxyjojwIpb/1C5ohQ.ry7CbJ6D2', 'GLBlSOjUGY', '2000-09-06 12:09:25', NULL),
(94, 'Mr. Gillian Bernhard', 'danyka01@dickinson.com', NULL, '$2y$12$CZq1Yhm2JxGLDX9qd7456eSdCcRNcbp0bF.g/UmCN77jj8NNaxyZ.', '4ZTffouTSE', '1973-12-13 05:56:30', NULL),
(95, 'Mr. Sage Weimann', 'dane07@gmail.com', NULL, '$2y$12$FhRaR4JL/lCfB79C2NGkK.buOBqUpYAb7pjiJo5.ZHhntMZ8qO09O', '290QgF76n3', '2011-09-25 16:31:19', NULL),
(96, 'Jeffry Wintheiser', 'murl61@gmail.com', NULL, '$2y$12$Ny.mqVlsv9RxJMiu4B4G7OBhYPe9dh3b2E2revHuLFvVyPVTfyQom', 'xaTp8MCnvL', '1991-11-18 11:20:49', NULL),
(97, 'Ramon O\'Keefe', 'opal18@hotmail.com', NULL, '$2y$12$62CaGvpxKEUrnWpxPF16V.O5t/uwJmrDCEKCJtyqoZtoYiVlp8mhO', 'sxmKRR3IkQ', '2005-08-31 08:30:33', NULL),
(98, 'Orville Rohan', 'fbergnaum@gmail.com', NULL, '$2y$12$/MYriDrcFhuhcasrEhsNL.FVKpNC0hwjQpmVWgwdH07GyNns95e7q', 'S2GLY8EmZR', '2018-05-10 11:33:17', NULL),
(99, 'Faye Murphy', 'adell.langworth@larkin.com', NULL, '$2y$12$kMy1sjMCOaNdmkfasHXo0eavaf.QjaejKjCpbXo0AOHWd4N7QmnDG', 'ZO8IZ7Eohn', '1971-04-14 05:45:13', NULL),
(100, 'Gay Quitzon', 'hreichel@hotmail.com', NULL, '$2y$12$dqMiRn347ZvWJhYfA2XqP.M.k2CLls8ljn961XDgohVvYYq.rkarW', 'otaIIuOonw', '2000-09-12 18:24:43', NULL),
(101, 'Yasin Yılmaz', 'yasinyilmaz@hotmail.com', NULL, '$2y$12$qjiZ8H/jk06uUsDK.uoAOuTOHj4wBfK3ULWz2v5V1ZkI0rIA/PDc6', 'otkkIsOonw', '2024-03-20 12:03:52', '2024-03-20 12:03:52'),
(102, 'Burak Karaman', 'burakkaraman@gmail.com', NULL, 'fcea920f7412b5da7be0cf42b8c93759', '351TgZ76y3', NULL, NULL);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Tablo için indeksler `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
