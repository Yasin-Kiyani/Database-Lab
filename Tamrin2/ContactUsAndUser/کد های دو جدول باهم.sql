
--> Database: `kiyanpcshop`

CREATE DATABASE  `kiyanpcshop` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_persian_ci;
USE `kiyanpcshop`;

-----------------------------------------------------


--> Table structure for table `contactus`


CREATE TABLE  `contactus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fname` varchar(50) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `lname` varchar(50) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `tel` char(50) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `textbody` text CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `status` enum('1','0') CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `tel` (`tel`)
) ENGINE=MyISAM AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_persian_ci;

--------------------------------------------------

--> insert data for table `contactus`


INSERT INTO `contactus` (`id`, `fname`, `lname`, `email`, `tel`, `title`, `textbody`) VALUES
(1, 'Yasin', 'Kiyani', 'YasinKiyani@gmail.com', '09918654559', 'کمکم کنید ', 'یک مشکلی برای خرید پیش امده', '1'),
(2, 'Ali', 'Kiyani', 'AliKiyani@gmail.com', '09303818172', 'تشکر از سایت', 'سایت بسیار مشکل گشا و درجه یکی دارید', '0');


-----------------------------------------------------

--> SOFT DELETE
0 = status = not received
1 = status = received

-->  Delete data of table `contactus` with enum

DELETE FROM contactus WHERE `contactus`.`status` = '1'
DELETE FROM contactus WHERE `contactus`.`status` = '0'

-->  Select data of table `contactus`

SELECT * FROM `contactus` WHERE status='1'

-->  Update data of table `contactus`

UPDATE contactus
SET status = '1'
WHERE status = 0;

-->  2Update data of table `contactus`

UPDATE `contactus` SET `not_recive`='recive' WHERE `id`=1



-----------------------------------------------------

-->  Select data of table `contactus`

SELECT * FROM `contactus` WHERE id=1

-- --------------------------------------------------------

--> Table structure for table `user`


CREATE TABLE  `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Rolls` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `Favorites1` varchar(50) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `Favorites2` varchar(50) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `Favorites3` varchar(50) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `gender` varchar(50) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `Datebirth` date NOT NULL,
  `cities` varchar(50) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `uploaded_on` datetime NOT NULL,
  `status` enum('1','0') CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password` (`password`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_persian_ci;


-----------------------------------------------------


--> insert data for table `user`

INSERT INTO `user` (`id`, `Rolls`, `username`, `email`, `password`, `Favorites1`, `Favorites2`, `Favorites3`, `gender`, `Datebirth`, `cities`, `file_name`, `uploaded_on`, `status`) VALUES
(1, 'admin', 'admin', 'admin@gmail.com', '@Admin1234', 'افزونه های وردپرسی', 'قالب های وردپرس', 'دروره های آموزشی طرحی سایت', 'مرد', '2000-01-17', 'اصفهان', 'AdminPhotoProfile.png', '2023-01-01 00:06:58', '1'),
(2, 'Nuser', 'user', 'user@gmail.com', '@User1234', 'افزونه های وردپرسی', 'قالب های وردپرسی', 'سایت های وردپرسی', 'مرد', '2000-01-17', 'اصفهان', 'UserPhotoProfile.png', '2023-01-01 00:06:58', '1');
COMMIT;


-----------------------------------------------------



--> SOFT DELETE
0 = status = Diactive
1 = status = Active

-->  Delete data of table `user` with enum

DELETE FROM user WHERE `contactus`.`status` = '1'
DELETE FROM user WHERE `contactus`.`status` = '0'

-->  Select data of table `user`

SELECT * FROM `user` WHERE status='1'

-->  Update data of table `user`

UPDATE user
SET status = '1'
WHERE status = 0;

-->  2Update data of table `user`

UPDATE `user` SET `is_active`='deactive' WHERE `id`=1

-----------------------------------------------------

