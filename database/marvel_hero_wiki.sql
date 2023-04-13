-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 13, 2023 at 04:36 PM
-- Server version: 8.0.30
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `marvel_hero_wiki`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `heroes`
--

DROP TABLE IF EXISTS `heroes`;
CREATE TABLE IF NOT EXISTS `heroes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `avatar` text COLLATE utf8mb4_vietnamese_ci,
  `alias` text COLLATE utf8mb4_vietnamese_ci,
  `realName` text COLLATE utf8mb4_vietnamese_ci,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci,
  `updated_at` date NOT NULL,
  `created_at` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `heroes`
--

INSERT INTO `heroes` (`id`, `avatar`, `alias`, `realName`, `description`, `updated_at`, `created_at`) VALUES
(1, 'https://static.wikia.nocookie.net/marvelcinematicuniverse/images/d/d7/CapAmerica-EndgameProfile.jpg', 'Captain America', 'Steve Rogers', 'Thuyền trưởng Steven Grant \"Steve\" Rogers là một cựu chiến binh trong Thế chiến II , thành viên sáng lập của Avengers và là siêu anh hùng đầu tiên được biết đến của Trái đất . Rogers lớn lên với nhiều vấn đề về sức khỏe, và khi Hoa Kỳ tham gia Thế chiến thứ hai, anh đã bị từ chối phục vụ trong Quân đội Hoa Kỳ mặc dù đã nhiều lần cố gắng nhập ngũ. Rogers cuối cùng đã tình nguyện tham gia Dự án Tái sinh , nơi anh là người duy nhất nhận được Huyết thanh Siêu chiến binh do Abraham Erskine phát triển thuộc Cục Dự trữ Khoa học Chiến lược. Huyết thanh đã tăng cường đáng kể khả năng thể chất của Rogers lên mức siêu phàm. Sau khi Erskine bị ám sát và bị nghi ngờ bởi giám đốc SSR Chester Phillips , Rogers đã bị xuống hạng để thực hiện trong các chiến dịch trái phiếu chiến tranh, nơi anh đóng vai một linh vật yêu nước dưới biệt danh Captain America.', '2023-03-26', '0000-00-00'),
(2, 'https://static.wikia.nocookie.net/marvelcinematicuniverse/images/3/35/IronMan-EndgameProfile.jpg', 'Iron Man', 'Tony Stark', 'Anthony Edward \"Tony\" Stark là một nhà công nghiệp tỷ phú, thành viên sáng lập của Avengers và là cựu CEO của Stark Industries . Là một nhà phát minh thô lỗ nhưng tài giỏi, Stark tự nhận mình là một thiên tài, tỷ phú, tay chơi và nhà từ thiện. Với sự giàu có và kiến ​​thức kỹ thuật đặc biệt của mình, Stark là một trong những người đàn ông quyền lực nhất thế giới sau cái chết của cha mẹ mình và tận hưởng lối sống ăn chơi trong nhiều năm cho đến khi anh ta bị bắt cóc bởi Mười chiếc nhẫn ở Afghanistan , trong khi trình diễn một đội tên lửa Jericho . Với mạng sống của mình, Stark đã tạo ra một bộ đồ bọc thépmà anh ta đã sử dụng để thoát khỏi những kẻ bắt giữ mình. Khi trở về nhà, anh ta sử dụng thêm một số áo giáp để chống lại những kẻ khủng bố, cũng như Obadiah Stane , người đã chống lại Stark. Sau cuộc chiến chống lại Stane, Stark công khai tiết lộ mình là Người Sắt .', '2023-03-26', '2023-03-26'),
(3, 'https://static.wikia.nocookie.net/marvelcinematicuniverse/images/9/9a/BlackWidow-EndgameProfile.jpg', 'Black Widow', 'Natasha Romanoff', 'Natalia Alianovna \"Natasha\" Romanoff (tiếng Nga: Наталья Альяновна \"Наташа\" Романов ) là một trong những điệp viên và sát thủ tài năng nhất trên toàn thế giới và là thành viên sáng lập của Biệt đội báo thù . Khi còn nhỏ, cô được Tướng Dreykov đưa vào Phòng Đỏ , và sống một thời gian ngắn với tư cách là con gái thay thế của Alexei Shostakov và Melina Vostokoff khi họ hoạt động bí mật ở Hợp chủng quốc Hoa Kỳ . Sau Sự hủy diệt của Viện phía Bắc , cô ấy đã trải qua quá trình điều hòa tâm lý rộng rãi, trước khi tốt nghiệp Phòng Đỏ với tư cách là một Góa phụ . Làm việc như một đặc vụ choKGB , cô ấy là mục tiêu của SHIELD , trước khi được Clint Barton trao cho cơ hội đào thoát khỏi tổ chức bằng cách ám sát Dreykov. Romanoff đã thành công, mặc dù việc phải sử dụng mạng sống của con gái Antonia Dreykov làm thiệt hại tài sản thế chấp sẽ ám ảnh cô ấy đến hết đời.', '2023-03-26', '2023-03-26'),
(4, 'https://static.wikia.nocookie.net/marvelcinematicuniverse/images/f/f5/Hawkeye_Char_Poster.jpg', 'Hawkeye 1', 'Clint Barton', 'Clinton Francis \"Clint\" Barton là một tay thiện xạ cực giỏi, cựu đặc công của S.H.I.E.L.D. và là một trong những thành viên sáng lập của Avengers. Được biết đến với việc sử dụng cung tên làm vũ khí chính cũng như thị lực cực kỳ nhạy bén và độ chính xác khiến anh ta có mật danh là Hawkeye, Barton đã trở thành một trong những S.H.I.E.L.D. đặc vụ, chịu trách nhiệm tuyển dụng Black Widow, người mà anh ta đã phát triển một tình bạn bền chặt. Được Nick Fury giao nhiệm vụ trông coi khối Tesseract, anh ta bị Loki tẩy não và sử dụng làm con tốt trong nỗ lực trở thành vua của Midgard. Tuy nhiên, sau Cuộc tấn công vào Helicarrier, anh đã được Black Widow giải thoát khỏi sự kiểm soát tinh thần của Loki và gia nhập Avengers để chiến đấu chống lại Loki và quân đội Chitauri trong trận chiến ở New York, chấm dứt cuộc xâm lược của Loki, trước khi Hawkeye quay trở lại công việc của mình tại một lá chắn.', '2023-03-27', '2023-03-26'),
(5, 'https://static.wikia.nocookie.net/marvelcinematicuniverse/images/9/97/Scarlet_Witch.jpg', 'Scarlet Witch', 'Wanda Maximoff', 'Wanda Maximoff là người gốc Sokovia, lớn lên cùng với người anh em sinh đôi khác trứng của mình, Pietro. Sinh ra với khả năng thần thoại tiềm ẩn để khai thác Ma thuật Hỗn loạn, cô nảy sinh lòng căm thù đối với Tony Stark và tập hợp các cuộc biểu tình chống Mỹ sau Vụ đánh bom Novi Grad giết chết cha mẹ cô. Nhiều năm sau, trong nỗ lực giúp thanh trừng đất nước xung đột của họ, cặp song sinh đã gia nhập HYDRA và đồng ý trải qua các thí nghiệm với Vương trượng dưới sự giám sát của Nam tước Strucker, với Viên đá Tâm trí đánh thức và khuếch đại sức mạnh của Wanda. Trong khi anh trai cô ấy phát triển siêu tốc độ, cô ấy đã đạt được nhiều khả năng tâm linh khác nhau. Khi HYDRA thất thủ, cặp song sinh tham gia cùng Ultron để trả thù Stark, nhưng đã bỏ rơi anh ta khi họ phát hiện ra ý định thực sự của anh ta là tiêu diệt loài người. Wanda và Pietro gia nhập Avengers trong Trận chiến Sokovia để ngăn chặn Ultron; Pietro đã bị giết trong trận chiến nhưng Wanda vẫn sống sót, và ngay sau đó được chuyển đến Khu liên hợp Avengers ở Hợp chủng quốc Hoa Kỳ.', '2023-03-26', '2023-03-26'),
(6, 'https://static.wikia.nocookie.net/marvelcinematicuniverse/images/2/28/Qckslvr.jpg', 'Quicksilver', 'Pietro Maximoff', 'Pietro Maximoff là người gốc Sokovia, lớn lên cùng với người chị em sinh đôi của mình, Wanda. Sau khi mất cha mẹ trong một vụ đánh bom do Lực lượng Không quân Hoa Kỳ sử dụng vũ khí của Stark Industries gây ra, Maximoffs hình thành lòng căm thù đối với Hoa Kỳ và Tony Stark. Trong khi phản đối chiến tranh và xung đột liên miên ở Sokovia, cặp song sinh đã tham gia phòng giam HYDRA của Nam tước Strucker và trở thành tình nguyện viên cho các thí nghiệm trên người. Sau khi tiếp xúc với Viên đá Tâm trí trong Vương trượng, anh ta có được khả năng di chuyển với tốc độ siêu phàm và được mệnh danh là Quicksilver.', '2023-03-26', '2023-03-26'),
(7, 'https://static.wikia.nocookie.net/marvelcinematicuniverse/images/e/eb/Bucky_TF%26TWS_ProfIle.png', 'Winter Soldier', 'Bucky Barnes', 'James Buchanan \"Bucky\" Barnes là một cựu chiến binh Thế chiến II, cựu sĩ quan của Trung đoàn Bộ binh 107 và là bạn thân nhất của Steve Rogers từ thời thơ ấu. Barnes đã gia nhập Quân đội sau cuộc tấn công vào Trân Châu Cảng và được bổ nhiệm vào quân đoàn 107 vào năm 1943. Đơn vị của anh ta bị HYDRA bắt giữ, nơi Barnes được Arnim Zola trao cho một biến thể của Huyết thanh Siêu chiến binh. Barnes sau đó được giải cứu bởi Rogers, người đã trở thành Captain America. Sau khi gia nhập lực lượng, Barnes và Rogers đã thành lập Biệt đội Howling để chiến đấu với lực lượng của Red Skull. Tuy nhiên, trong nỗ lực cuối cùng để bắt Zola ở dãy núi Alps của Áo, Barnes đã bị cuốn vào ổ phục kích và rơi xuống hàng trăm mét. Vì không có thi thể nào được tìm thấy, Barnes được cho là đã chết và được tôn vinh như một anh hùng đã chết khi phục vụ đất nước của mình.', '2023-03-29', '2023-03-29');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 3, 'main', 'd14165911d59eae45d6feaf6cbc4d0e413b30b5570d4bae3c447ff5b9b28e70c', '[\"*\"]', NULL, NULL, '2023-03-25 10:02:27', '2023-03-25 10:02:27'),
(2, 'App\\Models\\User', 3, 'main', 'f89e04369719156a169ec1d383c233d5582f80be04296faf8777e1dee5c5f84d', '[\"*\"]', NULL, NULL, '2023-03-25 10:09:30', '2023-03-25 10:09:30'),
(3, 'App\\Models\\User', 3, 'main', '99fe6034da48eed5710c7bb5aabb042c9a550afaf5b81f18b17d4a7b1296035f', '[\"*\"]', NULL, NULL, '2023-03-25 10:27:16', '2023-03-25 10:27:16'),
(4, 'App\\Models\\User', 3, 'main', '1c1a7236e491d06a6bd1483d8bd7442f987eb008b9fb034bead6f4d6cbfa8235', '[\"*\"]', NULL, NULL, '2023-03-25 10:32:10', '2023-03-25 10:32:10'),
(5, 'App\\Models\\User', 3, 'main', 'fdf89af6fabf6ad0d49662d2288d703cf544ed0e0a7adabfcf3eed293418f5cf', '[\"*\"]', NULL, NULL, '2023-03-25 10:36:05', '2023-03-25 10:36:05'),
(6, 'App\\Models\\User', 3, 'main', 'd842714910dddbd0724403f5eb87520d7b04288616602ac4b7334137042da232', '[\"*\"]', NULL, NULL, '2023-03-25 10:36:06', '2023-03-25 10:36:06'),
(7, 'App\\Models\\User', 3, 'main', '230c69e84d42484f9d91ac47205b045c1ab0b8da528f5b95662c950d60d70a17', '[\"*\"]', NULL, NULL, '2023-03-25 10:36:15', '2023-03-25 10:36:15'),
(8, 'App\\Models\\User', 3, 'main', 'fa1aed1aa10a9e41839eba3f4ea401f70bf29b7956247d9c47febdcbaca8f7d6', '[\"*\"]', NULL, NULL, '2023-03-25 10:36:16', '2023-03-25 10:36:16'),
(9, 'App\\Models\\User', 3, 'main', '5023168f04afb765a0a83a93d075039690a2ec81bb2a9c28f996d611da49ce2a', '[\"*\"]', NULL, NULL, '2023-03-25 10:36:16', '2023-03-25 10:36:16'),
(10, 'App\\Models\\User', 3, 'main', 'eb6dcc01ae727d9374f3131675fa7d110be9b8c3df64fce0128ca3749ed01c59', '[\"*\"]', NULL, NULL, '2023-03-25 10:36:16', '2023-03-25 10:36:16'),
(11, 'App\\Models\\User', 3, 'main', '92566df1ecc06b3b1cf874216ac47ac77cbe94e14471fde94d7834af465c2b88', '[\"*\"]', NULL, NULL, '2023-03-25 10:37:29', '2023-03-25 10:37:29'),
(12, 'App\\Models\\User', 3, 'main', '9850f3251232ee42eff99f3c1c56b24570f72486294184289e069b6cce21d056', '[\"*\"]', NULL, NULL, '2023-03-25 10:37:41', '2023-03-25 10:37:41'),
(18, 'App\\Models\\User', 3, 'main', '10d8f95e85f66d39f9c3703ca0351368e21efb4d7d84942cfc97130d714b9eb8', '[\"*\"]', NULL, NULL, '2023-03-26 07:30:52', '2023-03-26 07:30:52'),
(20, 'App\\Models\\User', 3, 'main', '7c197879998969cacf1f358fbf5a3cd4549209ca1083dd35199b953447de3cea', '[\"*\"]', NULL, NULL, '2023-03-26 07:32:44', '2023-03-26 07:32:44'),
(21, 'App\\Models\\User', 3, 'main', '3b40d66c0f4b167eab65f6e2380c8ba5065cd0c9ee2b884e1e9e1a5209427864', '[\"*\"]', NULL, NULL, '2023-03-26 07:32:54', '2023-03-26 07:32:54'),
(22, 'App\\Models\\User', 3, 'main', '5862879a398f6181b8cd8ed7f5201a29cb96086fab09dfeea50f8a25504382f0', '[\"*\"]', NULL, NULL, '2023-03-26 07:32:56', '2023-03-26 07:32:56'),
(24, 'App\\Models\\User', 3, 'main', '66a83f1f647dd42164017815944fb89b6afa1df5f46566395b4124018e2267b9', '[\"*\"]', NULL, NULL, '2023-03-26 07:33:28', '2023-03-26 07:33:28'),
(25, 'App\\Models\\User', 3, 'main', 'af67fad3c23934d77e5337a4fbe5865ad1c7b052cc61e1e7d6600aca515a790e', '[\"*\"]', NULL, NULL, '2023-03-26 07:33:33', '2023-03-26 07:33:33'),
(26, 'App\\Models\\User', 3, 'main', 'a43a20962d2097c6a69a4b6e97099ea53ff443927c6266ff7d040a9ff1baa220', '[\"*\"]', NULL, NULL, '2023-03-26 07:33:37', '2023-03-26 07:33:37'),
(27, 'App\\Models\\User', 3, 'main', 'd39967ebd58d3d12bbc772e80a9e6e1c1d85895a4a0116821f1a20c99f619ee1', '[\"*\"]', NULL, NULL, '2023-03-26 07:33:38', '2023-03-26 07:33:38'),
(28, 'App\\Models\\User', 3, 'main', '7712ca7f63b6394e8403370343cea997360763cb395e80f5be7b1391be17f11d', '[\"*\"]', NULL, NULL, '2023-03-26 07:33:38', '2023-03-26 07:33:38'),
(29, 'App\\Models\\User', 3, 'main', '94a614445bd03e4e22b89f626386653af7d210f45969415256c2d7d31e366bd1', '[\"*\"]', NULL, NULL, '2023-03-26 07:33:39', '2023-03-26 07:33:39'),
(30, 'App\\Models\\User', 3, 'main', '7bc64331bb3eb49c1e6967292f9ac13050782cf3e1352d6a5360052c139c0d24', '[\"*\"]', NULL, NULL, '2023-03-26 07:33:39', '2023-03-26 07:33:39'),
(31, 'App\\Models\\User', 3, 'main', '694e1f0e43101cd52e0570e6ade8aa92810089678eed304963599a4e2a393821', '[\"*\"]', NULL, NULL, '2023-03-26 07:33:40', '2023-03-26 07:33:40'),
(32, 'App\\Models\\User', 3, 'main', '998353544621999d32d05156f587664896811e283b400a8cfe944a01448f086f', '[\"*\"]', NULL, NULL, '2023-03-26 07:33:40', '2023-03-26 07:33:40'),
(35, 'App\\Models\\User', 3, 'main', 'ea67c211574ad9f3e3ccb01b362f3d770d2dfda6a6aaead7f50c293d4e5ed5fb', '[\"*\"]', NULL, NULL, '2023-03-26 07:42:23', '2023-03-26 07:42:23'),
(39, 'App\\Models\\User', 3, 'main', '275036bd63af4b29a78e47ab360af7fb904f42f0981659f254a8a5840f295b7a', '[\"*\"]', NULL, NULL, '2023-03-26 07:46:42', '2023-03-26 07:46:42'),
(40, 'App\\Models\\User', 3, 'main', 'c702c93bee8608769b92e500f3e535a735c9fb78e8097c6033c1f9da49ebb164', '[\"*\"]', NULL, NULL, '2023-03-26 07:46:46', '2023-03-26 07:46:46'),
(41, 'App\\Models\\User', 3, 'main', '672c492733c8ecb50f7de1c3666a3b56fb5c108bf4df5ada8b3b4c672a811d3b', '[\"*\"]', NULL, NULL, '2023-03-26 07:46:47', '2023-03-26 07:46:47'),
(42, 'App\\Models\\User', 3, 'main', 'be043d7e64a5c0705643c4d29dab5fd24e9c9371bfaccae24aee9c180950ea29', '[\"*\"]', NULL, NULL, '2023-03-26 07:46:48', '2023-03-26 07:46:48'),
(43, 'App\\Models\\User', 3, 'main', 'c7ec451f502f17c36f8e57b2da218ae14ad7207db09676ea5b68a627c0713aa1', '[\"*\"]', NULL, NULL, '2023-03-26 07:46:48', '2023-03-26 07:46:48'),
(44, 'App\\Models\\User', 3, 'main', '3559bad20e73628288822452cf33eb4d6eabb772abc510a89eeae194d99f25cc', '[\"*\"]', NULL, NULL, '2023-03-26 07:46:48', '2023-03-26 07:46:48'),
(45, 'App\\Models\\User', 3, 'main', '8e0d599bc15d27a372f2e03a1ecf5be73004acdd08700297d3e6be05d8b451a6', '[\"*\"]', NULL, NULL, '2023-03-26 07:46:49', '2023-03-26 07:46:49'),
(47, 'App\\Models\\User', 3, 'main', '49233a09274868aa3be380b5176f7ca73ce415daf5f7fcc26dc6504d8af72355', '[\"*\"]', NULL, NULL, '2023-03-26 07:47:18', '2023-03-26 07:47:18'),
(49, 'App\\Models\\User', 3, 'main', '5b8bee8da0790251e8bc66952649ceb26f288fa680e3f22e58d1f8f0f1177555', '[\"*\"]', NULL, NULL, '2023-03-26 07:47:22', '2023-03-26 07:47:22'),
(52, 'App\\Models\\User', 3, 'main', 'f2a496108f9ffec2e2c04aed44ac7241f7e3ce601f302e5fd6b84e20b3feab14', '[\"*\"]', NULL, NULL, '2023-03-26 07:47:35', '2023-03-26 07:47:35'),
(53, 'App\\Models\\User', 3, 'main', '0be388ddb8f710182e780882a3cf2717d7af98f5b9d789de62ba3b7a893f9c0e', '[\"*\"]', NULL, NULL, '2023-03-26 07:47:54', '2023-03-26 07:47:54'),
(54, 'App\\Models\\User', 3, 'main', '2dfa0fb0c6c630ca149365534624a68d6e262a15c6b3abacdbd674fe41450a0c', '[\"*\"]', NULL, NULL, '2023-03-26 07:48:35', '2023-03-26 07:48:35'),
(55, 'App\\Models\\User', 3, 'main', '7e6d4f7603501cd0a5b5598c48f80e6ed8ee2a86d89f5d7b82fc9109b0d77059', '[\"*\"]', NULL, NULL, '2023-03-26 07:50:26', '2023-03-26 07:50:26'),
(60, 'App\\Models\\User', 3, 'main', 'c9bbf476b3fe3aaa3388246bfd0517ca276d4d7f22720f8a23957200f076b46b', '[\"*\"]', NULL, NULL, '2023-03-26 08:44:42', '2023-03-26 08:44:42'),
(66, 'App\\Models\\User', 3, 'main', '55a3747b384f593039ecfd3511aa67000904020cd36db46bfb89e1f6482fc965', '[\"*\"]', NULL, NULL, '2023-03-29 00:45:14', '2023-03-29 00:45:14'),
(67, 'App\\Models\\User', 3, 'main', 'f93223da109f5c4520a1efa53da12a7c6adaf99f92ea68c1eafd317c3ff0e6a6', '[\"*\"]', NULL, NULL, '2023-04-06 21:49:29', '2023-04-06 21:49:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'admin', 'user1@admin.com', NULL, '$2y$10$pjm4IPzn.eyqi0zp9.DWvOxlHfYo5ZoXIwuqU3zps3um1PnhiCuES', NULL, '2023-03-25 10:02:27', '2023-03-25 10:02:27');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
