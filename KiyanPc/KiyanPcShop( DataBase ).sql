-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 09, 2023 at 11:03 PM
-- Server version: 8.0.27
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kiyanpcshop`
--
CREATE DATABASE IF NOT EXISTS `kiyanpcshop` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_persian_ci;
USE `kiyanpcshop`;

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

DROP TABLE IF EXISTS `contactus`;
CREATE TABLE IF NOT EXISTS `contactus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fname` varchar(50) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `lname` varchar(50) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `tel` char(50) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `textbody` text CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `tel` (`tel`)
) ENGINE=MyISAM AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id`, `fname`, `lname`, `email`, `tel`, `title`, `textbody`) VALUES
(1, 'Yasin', 'Kiyani', 'YasinKiyani@gmail.com', '09918654559', 'کمکم کنید ', 'یک مشکلی برای خرید پیش امده'),
(2, 'Ali', 'Kiyani', 'AliKiyani@gmail.com', '09303818172', 'تشکر از سایت', 'سایت بسیار مشکل گشا و درجه یکی دارید');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pdtname` varchar(200) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `pdtid` varchar(200) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `pdtlbl` varchar(200) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `pdtVersion` varchar(200) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `pdtDes` varchar(1000) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `DateCreat` date NOT NULL,
  `pdtPrice` int NOT NULL,
  `pdtPricelbl` varchar(200) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `pdtDiscount` varchar(200) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `pdtColor` varchar(200) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `pdtMojodi` varchar(200) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `Category1` varchar(200) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `Category2` varchar(50) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `Category3` varchar(50) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `Property1` varchar(200) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `Property2` varchar(50) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `Property3` varchar(50) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `Property4` varchar(50) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `Property5` varchar(50) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `Property6` varchar(50) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `Property7` varchar(50) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `file_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `uploaded_on` datetime NOT NULL,
  `status` enum('1','0') CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `imgsrc` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `pdtname`, `pdtid`, `pdtlbl`, `pdtVersion`, `pdtDes`, `DateCreat`, `pdtPrice`, `pdtPricelbl`, `pdtDiscount`, `pdtColor`, `pdtMojodi`, `Category1`, `Category2`, `Category3`, `Property1`, `Property2`, `Property3`, `Property4`, `Property5`, `Property6`, `Property7`, `file_name`, `uploaded_on`, `status`, `imgsrc`) VALUES
(104, 'قالب ایمپرزا', 'k2', 'قالب وردپرس', '1.2.0', 'قالب ایمپرزا قابلیت این را دارد که به راحتی هر نوع وبسایتی برای خودتان طراحی کنید. تفاوتی ندارد چه نوع وبسایتی با چه موضوعی در نظر دارید ، هرچیزی با Impreza امکان پذیر است. زیرا این قالب وردپرس بسیار بسیار انعطاف پذیر و قابل کنترل است.\r\n\r\nوبسایت خبری ، وبسایت فروشگاهی ، وبسایت شرکتی ، وبسایت نمونه کار ، وبسایت رزومه و هرچیز دیگری … را می توانید به روش دراگ و دراپ ( کشیدنی رها کردنی ) به راحتی با حرکت موس در قالب وردپرس ایمپرزا طراحی کنید و به دنیای اینترنت ورود موفقی داشته باشید.', '2022-01-04', 30000, 'تومان', '12 درصد', 'تنوع رنگی', 'موجود در انبار', '', '', '', '', '', '', '', '', '', '', 'Kiyanpc-impreza.png', '2022-01-04 14:15:59', '1', ''),
(103, 'قالب زفایر', 'k1', 'قالب وردپرس', '1.2.0', 'به بررسی قدرتمند ترین قالب وردپرسی خوش آمدید! قالب زفایر مدعی سبک طراحی متریال است. روشی که برای طراحی قالب زفایر استفاده شده است الهام گرفته از گوگل بوده و می تواند پیشنهاد خوبی در موفقیت شما باشد.\r\n\r\nقالب زفایر به راحتی می تواند طراحی یک وبسایت شرکتی ، تجاری ، فروشگاهی و … را ممکن سازد. شما را به ادامه معرفی قالب Zephyr دعوت می کنیم تا دقیق تر با همه موارد و ویژگی های این قالب وردپرس بسیار عالی آشنا بشوید.', '2022-01-04', 40000, 'تومان', '12 درصد', 'تنوع رنگی', 'موجود در انبار', '', 'قالب های وردپرس', '', '', 'پشتیبانی رایگان مادام العمر', 'قالب کاملا فارسی سازی شده', 'آپدیت خودکار قالب و افزونه ها', 'دارای فایل آسان نصب ', '', '', 'Kiyanpc-zephayer.png', '2022-01-04 14:15:59', '1', ''),
(105, 'قالب مایوسیس', 'k3', 'قالب وردپرس', '1.2.0', 'قالب ایزی دیجیتال دانلود مایوسیس – Mayosis که یک قالب فروشگاهی وردپرس است علاوه بر ظاهر خوب ، از سرعت بارگزاری بسیار بالایی هم برخوردار است تا در آزمون سرعت موتور های جستجوگر از جمله گوگل ، جهت کسب امتیاز بیشتر در بحث سئو ، سربلند بیرون بیاید.\r\n\r\nقالب فروش فایل مایوسیس Mayosis ، فروش فایل های مجازی با فروشگاه ایزی دیجیتال دانلود ، ایده و طراحی شرکت TeconceTheme است که با همه مرورگر های محبوب و موجود و با تمام نسخه های وردپرس که تا الان منتشر شده است سازگاری کامل دارد.', '2022-01-04', 50000, 'تومان', '12 درصد', 'تنوع رنگی', 'موجود در انبار', '', 'قالب های وردپرس', '', '', 'پشتیبانی رایگان مادام العمر', 'قالب کاملا فارسی سازی شده', 'آپدیت خودکار قالب و افزونه ها', 'دارای فایل آسان نصب ', '', '', 'Kiyanpc-mayosis', '2022-01-04 14:15:59', '1', ''),
(106, 'قالب وودمارت', 'k4', 'قالب وردپرس', '1.2.0', 'به نام خدا ، کاربران محترم کیان پی سی سلام ، افتخار داریم بار دیگر با معرفی یک محصول جدید در خدمت شما بزرگواران باشیم ، محصول جدیدی که روبروی آن هستید قالب وردپرس کم نظیر وودمارت ، یک قالب حرفه ای و بزرگ فروشگاهی است.\r\n\r\nشرکت Xtemos که فعالیت خود را در سایت معتبر و معروف تم فارست آغاز کرده است ، با داشتن تعداد دو محصول توانسته است فروش خود را در مدت زمان کوتاهی به بیش از 9200 هزار فروش و رضایت صد در صدی کاربران برساند.\r\n\r\n', '2022-01-04', 60000, 'تومان', '12 درصد', 'تنوع رنگی', 'موجود در انبار', '', 'قالب های وردپرس', '', '', 'پشتیبانی رایگان مادام العمر', 'قالب کاملا فارسی سازی شده', 'آپدیت خودکار قالب و افزونه ها', 'دارای فایل آسان نصب ', '', '', 'Woodmart-Kiyanpc.png', '2022-01-04 14:15:59', '1', ''),
(107, 'قالب پزشکی', 'k5', 'قالب وردپرس', '1.2.0', 'قالب MediLink یا همان پزشکی ، قالب وردپرسی با موضوع پزشکی و سلامت که نبود آن در مجموعه قالب های سایت ابزار وردپرس حس میشد و با توجه به درخواست بیشتر کاربران مبنی بر قرارگیری قالبی با موضوع پزشکی ، اقدام به آماده سازی و انتشار این قالب در سایت کرده ایم.\r\n\r\nقالب پزشکی مدیلینک که در حال حاضر در سایت منتشر شده است یکی از قالب های بسیار محبوب در حوزه پزشکی و سلامت می باشد که کاربرد های جذابی میتواند برای این نوع حرفه داشته باشد. از موارد مهم این قالب میتوان به حالت ریسپانسیو ، بهینه سازی کامل برای حالت موبایل و دارا بودن چندین دمو با طراحی های مختلف میباشد که می تواند در انتخاب شما بسیار تاثیر گذار باشد.', '2022-01-04', 70000, 'تومان', '12 درصد', 'تنوع رنگی', 'موجود در انبار', '', 'قالب های وردپرس', '', '', 'پشتیبانی رایگان مادام العمر', 'قالب کاملا فارسی سازی شده', 'آپدیت خودکار قالب و افزونه ها', 'دارای فایل آسان نصب ', '', '', 'Kiyanpc-docter', '2022-01-04 14:15:59', '1', ''),
(108, 'قالب Autrics', 'k6', 'قالب وردپرس', '1.2.0', 'قالب آتریکس Autrics وردپرس را یک قالب مدرن ، جذاب و حرفه ای و یکی از بهترین قالب های چند منظوره می توان معرفی کرد که به قدری قدرتمند است که می تواند برای طراحی انواع وب سایت های تجاری ، شرکتی و فروشگاهی هم مورد استفاده قرار دهید.\r\n\r\nقالب Autrics توسط سازنده خارجی که با نام trippleS فعالیت می کنند ، طراحی شده است. گروه trippleS پوسته خدمات خودرو و خدمات مکانیکی را بسیار عالی طراحی کرده اند که قابلیت سفارشی سازی بالایی دارد و برای راه اندازی هر نوع سایتی در هر موضوع و حیطه ای کاملا مناسب است.', '2022-01-04', 80000, 'تومان', '12 درصد', 'تنوع رنگی', 'موجود در انبار', '', 'قالب های وردپرس', '', '', 'پشتیبانی رایگان مادام العمر', 'قالب کاملا فارسی سازی شده', 'آپدیت خودکار قالب و افزونه ها', 'دارای فایل آسان نصب ', '', '', 'Kiyanpc-car.png', '2022-01-04 14:15:59', '1', ''),
(109, 'قالب The7', 'k7', 'قالب وردپرس', '1.2.0', 'قالب the7 یکی از پرفروش ترین قالب های جهان است! هر آنچه لازم است در این قالب وردپرس گنجانده شده است و جالب اینجاست که بغیر از المان ها یا امکاناتی که افزونه صفحه ساز ویژوال کامپوسر به آن اضافه می کند خود این قالب نیز المان های اختصاصی برای طراحی دارد و در ویژوال کامپوسر اضافه شده است.\r\n\r\nبا استفاده از قالب سون می توانید هر نوع وبسایتی را طراحی نمایید زیرا این قالب چندمنظوره است.', '2022-01-04', 90000, 'تومان', '12 درصد', 'تنوع رنگی', 'موجود در انبار', '', 'قالب های وردپرس', '', '', 'پشتیبانی رایگان مادام العمر', 'قالب کاملا فارسی سازی شده', 'آپدیت خودکار قالب و افزونه ها', 'دارای فایل آسان نصب ', '', '', 'Kiyanpc-the7.png', '2022-01-04 14:15:59', '1', ''),
(110, 'قالب Be', 'k8', 'قالب وردپرس', '1.2.0', 'قالب Be یکی از برترین قالب وردپرس ، امکانات فراوان ، انعطاف پذیری بسیار بالا ، دارای بیش از 300 نوع دمو مختلف برای هر نوع شغل و موضوعی ، دارای تنظیمات فارسی شده و راستچین و دارای چندین فونت جذاب با لایسنس اصلی می باشد.\r\n\r\nقالب بی امروز توسط گروه قدرتمند کیان پی سی آماده سازی و ارائه شده است که قابلیت نصب همه دمو ها میسر است. دارای دو نوع صفحه ساز جذاب ، کاربری قدرتمند و جذاب ، سازگاری کامل برای ایجاد فروشگاه کالای دیجیتال و کالای فیزیکی ، طراحی گرافیکی بسیار زیبا و …', '2022-01-04', 100000, 'تومان', '12 درصد', 'تنوع رنگی', 'موجود در انبار', '', 'قالب های وردپرس', '', '', 'پشتیبانی رایگان مادام العمر', 'قالب کاملا فارسی سازی شده', 'آپدیت خودکار قالب و افزونه ها', 'دارای فایل آسان نصب ', '', '', 'Kiyanpc-Be.png', '2022-01-04 14:15:59', '1', ''),
(111, 'قالب آوادا', 'k9', 'قالب وردپرس', '1.2.0', 'قالب آوادا یکی از پر فروش ترین قالب های چند منظوره در جهان است که توسط تیم قدرتمند ThemeFusion طراحی و کدنویسی شده است. این قالب وردپرس امکانات بسیار زیادی دارد و در طراحی با هر نوع وبسایتی می توان از آن استفاده نمود. قالب avada بیشترین فروش را در بین قالب های چندمنظوره در جهان داشته است.\r\n\r\nقالب آوادا قابلیت این را دارد که به راحتی هر نوع وبسایتی برای خودتان طراحی کنید. تفاوتی ندارد چه نوع وبسایتی با چه موضوعی در نظر دارید ، هر چیزی با قالب آوادا امکان پذیر است.', '2022-01-04', 1100000, 'تومان', '12 درصد', 'تنوع رنگی', 'موجود در انبار', '', 'قالب های وردپرس', '', '', 'پشتیبانی رایگان مادام العمر', 'قالب کاملا فارسی سازی شده', 'آپدیت خودکار قالب و افزونه ها', 'دارای فایل آسان نصب ', '', '', 'Kiyanpc-avada.png', '2022-01-04 14:15:59', '1', ''),
(112, 'افزونه وردفنس', 'k10', 'افزونه وردپرس', '1.2.0', 'افزونه وردفنس پرو یک روبات کاملاً دقیق است که همه چیز را اتوماتیک برای شما انجام می دهد. شما به راحتی می توانید با نصب این افزونه سایت خود را از حمله روبات ها و هکر ها در امان نگه دارید.\r\n\r\nافزونه Wordfence Security Pro سایت را از آدرس های مخرب که ممکن است به سایت شما آسیب وارد کنند را در امان نگه میدارد. محبوب ترین افزونه اسکنر امنیتی و فایروال شعار کوتاهی هست که به این افزونه نسبت داده شده و بیانگر قدرت واقعی وردفنس است.', '2022-01-04', 1120000, 'تومان', '12 درصد', 'تنوع رنگی', 'موجود در انبار', 'افزونه های وردپرس', '', '', '', 'پشتیبانی رایگان مادام العمر', 'قالب کاملا فارسی سازی شده', 'آپدیت خودکار قالب و افزونه ها', 'دارای فایل آسان نصب ', '', '', 'Kiyanpc-A-Wordfanc.png', '2022-01-04 14:15:59', '1', ''),
(113, 'افزونه مداد زرد', 'k11', 'افزونه وردپرس', '1.2.0', 'افزونه مداد زرد به شما کمک می کند تا به راحتی ظاهر سایت خود را در هر قالب وردپرس تغییر دهید. این تغییرات فراتر از حد تصور شما حرفه ای است و باعث حرفه ای تر شدن شما می شود.\r\n\r\nیکی از قابلیت هایی که این افزونه کاربردی وردپرس به سایت شما اضافه می کند ، قابلیت انعطاف پذیری نامحدود است. در ادامه با ما باشید با معرفی افزونه مداد زرد قدرتمند ، همچنین پیشنهاد می شود آموزش ویدئویی آن را نیز مشاهده فرمایید.', '2022-01-04', 1140000, 'تومان', '12 درصد', 'تنوع رنگی', 'موجود در انبار', 'افزونه های وردپرس', '', '', '', 'پشتیبانی رایگان مادام العمر', 'قالب کاملا فارسی سازی شده', 'آپدیت خودکار قالب و افزونه ها', 'دارای فایل آسان نصب ', '', '', 'Kiyanpc-yellow-pencil.png', '2022-01-04 14:15:59', '1', ''),
(114, 'افزونه عضویت', 'k12', 'افزونه وردپرس', '1.2.0', 'شاید تاکنون شما هم از افزونه وردپرسی مانند Userpro استفاده کرده اید و امکانات آن را دیده اید. اما امروز ابزار وردپرس با معرفی افزونه اختصاصی خود برای اولین بار در ایران مشکل مدیریت کاربران وردپرس را به خوبی حل کرده است. افزونه Ultimate Member بخوبی پاسخگوی همه نیاز های شما در این زمینه خواهد بود.\r\n\r\nاین پلاگین روی کلیه قالب های وردپرسی سازگاری داشته و به راحتی قابل استفاده است. هم اکنون می توانید از نسخه کامل و اورجینال آلتیمیت ممبر استفاده نمایید. شما پس از نصب این افزونه شگفت زده خواهید شد که چه امکاناتی را در وردپرس خود خواهید داشت.', '2022-01-04', 1130000, 'تومان', '12 درصد', 'تنوع رنگی', 'موجود در انبار', 'افزونه های وردپرس', '', '', '', 'پشتیبانی رایگان مادام العمر', 'قالب کاملا فارسی سازی شده', 'آپدیت خودکار قالب و افزونه ها', 'دارای فایل آسان نصب ', '', '', 'Kiyanpc-ultimate-member.png', '2022-01-04 14:15:59', '0', ''),
(115, 'افزونه اسلایدر', 'k13', 'افزونه وردپرس', '1.2.0', 'افزونه روولوشن اسلایدر توسط تیم قدرتمند themepunch ساخته شده است و تاکنون یکی از پر فروش ترین محصولات تم فارست بوده که در حدود 330.000 فروش داشته است که عدد حیرت انگیزی است.\r\n\r\nهم اکنون بسیاری از قالب وردپرس از این افزونه وردپرس استفاده کرده و اسلایدر های خود را با آن ساخته اند. افزونه Slider Revolution قابلیت ایجاد اسلایدر های دو بعدی و سه بعدی را دارد و هر گونه المانی را می توان در آن قرار داد.', '2022-01-04', 1150000, 'تومان', '12 درصد', 'تنوع رنگی', 'موجود در انبار', 'افزونه های وردپرس', '', '', '', 'پشتیبانی رایگان مادام العمر', 'قالب کاملا فارسی سازی شده', 'آپدیت خودکار قالب و افزونه ها', 'دارای فایل آسان نصب ', '', '', 'Kiyanpc-slider6.png', '2022-01-04 14:15:59', '0', ''),
(116, 'افزونه ایمیل', 'k14', 'افزونه وردپرس', '1.2.0', 'کاربرانی که از شما خرید می کنند ، انتظار دارند سفارش خود را در قالب یک ایمیل جذاب دریافت کنند ، افزونه ویرایش ایمیل ووکامرس WooMail فارسی که توسط تیم ابزار ورپرس فارسی سازی شده است برای این مورد است.\r\n\r\nالبته افزونه WooMail ویژگی های جذاب دیگری دارد که باید توضیحات کامل محصول را بخوانید تا متوجه همه ویژگی های آن شوید ، یکی از ویژگی های مهم این افزونه وردپرس ، باعث افزایش فروش بیشتر شدن است که همه به آن علاقه دارند.', '2022-01-04', 1160000, 'تومان', '12 درصد', 'تنوع رنگی', 'موجود در انبار', 'افزونه های وردپرس', '', '', '', 'پشتیبانی رایگان مادام العمر', 'قالب کاملا فارسی سازی شده', 'آپدیت خودکار قالب و افزونه ها', 'دارای فایل آسان نصب ', '', '', 'kiyanpc-JPG-Plugin.png', '2022-01-04 14:15:59', '0', ''),
(117, 'افزونه گراویتی ویو', 'k15', 'افزونه وردپرس', '1.2.0', 'امکان ویرایش یا حذف اطلاعات در ورودی های گراویتی فرم یک امر بسیار مهم و اجتناب ناپذیر است که این امکان توسط افزونه قدرتمند گراویتی ویو قابل اجرا می باشد . ازین رو تیم ابزار وردپرس این افزونه مهم و قدرتمند را برای شما کابران عزیر محیا کرده است.\r\n\r\nبه کمک این افزونه می توانید ورودی های گرویتی فرم را به صورت لیست یا جدول نمایش دهید . همچنین این امکان را به شما میدهد که اطلاعات ورودی را پس از تکمیل ویرایش یا حذف کنید یا حتی می توانید یک صفحه پیگیری سفارش با کد رهیگیری برای مشتریان خود ایجاد کنید .', '2022-01-04', 1170000, 'تومان', '12 درصد', 'تنوع رنگی', 'موجود در انبار', 'افزونه های وردپرس', '', '', '', 'پشتیبانی رایگان مادام العمر', 'قالب کاملا فارسی سازی شده', 'آپدیت خودکار قالب و افزونه ها', 'دارای فایل آسان نصب ', '', '', 'Kiyanpc-Gravity-view.png', '2022-01-04 14:15:59', '0', ''),
(118, 'افزونه دیجیتس ', 'k16', 'افزونه وردپرس', '1.2.0', 'قدرتمندترین افزونه ورود و ثبت نام با موبایل در وردپرس، این شعاری است که افزونه ورود و ثبت نام با موبایل – Digits برای خود در نظر گرفته است و بی شک میتوان گفت این شعار برازنده این افزونه بسیار محبوب و حرفه ای وردپرس میباشد که نبودش در سایت شما واقعا یک کاستی حساب میشود.\r\n\r\n ویژگی اصلی این پلاگین را میتوان به ثبت نام و ورود با شماره موبایل معرفی کرد که با کمک این افزونه وردپرس میتوانید در سایت خود فرم های ورود با کمک شماره موبایل راه اندازی کنید و حتی اینکه نیازی به استفاده از رمز عبور نیز نمیباشد و کاربران میتوانند از رمز های ورود یکبار مصرف که از لحاظ امنیت نیز بسیار مهم میباشد در سایت خود استفاده کنند.', '2022-01-04', 1180000, 'تومان', '12 درصد', 'تنوع رنگی', 'موجود در انبار', 'افزونه های وردپرس', '', '', '', 'پشتیبانی رایگان مادام العمر', 'قالب کاملا فارسی سازی شده', 'آپدیت خودکار قالب و افزونه ها', 'دارای فایل آسان نصب ', '', '', 'Kiyanpc-digits.png', '2022-01-04 14:15:59', '0', ''),
(119, 'افزونه خبرنامه', 'k17', 'افزونه وردپرس', '1.2.0', 'افزونه Mailster یکی از افزونه های است که به شما کمک می کند تا بتوانید ایمیل های خود را بصورت انبوه ارسال کنید و نگرانی بابت اسپم شدن ایمیل ها نداشته باشید. این افزونه وردپرس توسط تیم قدرتمند revaxarts طراحی شده و تاکنون هزاران فروش را در سراسر جهان داشته است.\r\n\r\nافزونه خبرنامه – Mailster در نوع خود کامل و جامع ترین افزونه خبرنامه وردپرس است و آنقدر فیدبک ها زیاد بوده که می توان با جرات گفت هیچ کم و کسری در آن دیده نمی شود. پلاگین فارسی خبرنامه وردپرس برای فعالیت هایی در زمینه email marketing بسیار مناسب و کاربردی است.\r\n\r\n', '2022-01-04', 1190000, 'تومان', '12 درصد', 'تنوع رنگی', 'موجود در انبار', 'افزونه های وردپرس', '', '', '', 'پشتیبانی رایگان مادام العمر', 'قالب کاملا فارسی سازی شده', 'آپدیت خودکار قالب و افزونه ها', 'دارای فایل آسان نصب ', '', '', 'Kiyanpc-Mailster.png', '2022-01-04 14:15:59', '0', ''),
(120, 'افزونه تخفیف', 'k18', 'افزونه وردپرس', '1.2.0', 'آیا ایده های زیادی در رابطه با نوع تخفیف گذاری بر روی محصولات دارید ولی نمیتونید بر روی سایت خود اجرا کنید ؟ امروز با یک افزونه بسیار خاص در زمینه قیمت گذاری و تخفیف به صورت هوشمند و پویا در خدمت شما هستیم که شما را واقعا شگفت زده خواهد کرد.\r\n\r\nافزونه تخفیف و قیمت گذاری پویا در ووکامرس به شما این امکان رو میدهد که بر روی محصولات ووکامرسی خود انواع گوناگونی از سناریوهای تخفیف گذاری را اعمال کنید و همین تخفیف گذاری های هدفمند باعث میشود قیمت محصولات شما با توجه به نوع تخفیف گذاری ها جذاب و مشتریان شما را ترغیب به خرید بیشتر و بهره مندی از تخفیف کند و نتیجه نهایی که فروش بیشتر میباشد را برای شما به ارمغان بیاورد.', '2022-01-04', 1200000, 'تومان', '12 درصد', 'تنوع رنگی', 'موجود در انبار', 'افزونه های وردپرس', '', '', '', 'پشتیبانی رایگان مادام العمر', 'قالب کاملا فارسی سازی شده', 'آپدیت خودکار قالب و افزونه ها', 'دارای فایل آسان نصب ', '', '', 'Kiyanpc-min-buy.png', '2022-01-04 14:15:59', '0', ''),
(121, 'افزونه فشرده ساز تصاویر', 'k19', 'افزونه وردپرس', '1.2.0', 'همانطور که میدانید سرعت لود سایت جزو فاکتورهای مهم گوگل برای رتبه بندی سایتها در نتایج جستجو است ، و یکی از راه های افزایش سرعت سایت ، بهینه کردن و کاهش حجم تصاویر سایت شماست که افزونه WP Smush Pro به صورت حرفه ای و به بهترین شکل ممکن و بدون کاهش کیفیت تصویر ، این کار را برای شما انجام میدهد\r\n\r\nدر واقع اگر سرعت لود سایت شما پایین است و اگرتمایل دارید با بهینه سازی تصاویر سایت، حجم کلی سایتتان کاهش یابد ما به شما افزونه اسموش را پیشنهاد میکنیم !\r\n\r\n', '2022-01-04', 1210000, 'تومان', '12 درصد', 'تنوع رنگی', 'موجود در انبار', 'افزونه های وردپرس', '', '', '', 'پشتیبانی رایگان مادام العمر', 'قالب کاملا فارسی سازی شده', 'آپدیت خودکار قالب و افزونه ها', 'دارای فایل آسان نصب ', '', '', 'Kiyanpc-wp-smush-pro.png', '2022-01-04 14:15:59', '0', ''),
(122, 'افزونه جوایز و امتیاز', 'k20', 'افزونه وردپرس', '1.2.0', 'افزونه جوایز و امتیاز ووکامرس با نام Yith Woocommerce Points and Rewards Premium محصولی از شرکت Yithemes میباشد که جهت ارائه امتیاز و پاداش به خریداران در زمان خرید از فروشگاه ساز ووکامرس کاربرد دارد که میتواند نقش مهمی در موفقیت فروشگاه اینترنتی شما داشته باشد.\r\n\r\nدر صورتیکه قصد افزایش فروش و تشویق مشتریان برای خرید بیشتر از سایت خود را دارید پیشنهاد میکنیم حتما از افزونه جوایز و امتیاز های ووکامرس در سایت خود استفاده کنید ،  این افزونه کاملا هماهنگ با فروشگاه ساز ووکامرس بوده و هم اکنون به صورت صد در صد اورجینال و کاملا فارسی توسط تیم ابزار وردپرس آماده شده است.', '2022-01-04', 1220000, 'تومان', '12 درصد', 'تنوع رنگی', 'موجود در انبار', 'افزونه های وردپرس', '', '', '', 'پشتیبانی رایگان مادام العمر', 'قالب کاملا فارسی سازی شده', 'آپدیت خودکار قالب و افزونه ها', 'دارای فایل آسان نصب ', '', '', 'Kiyanpc-win-woocamers.png', '2022-01-04 14:15:59', '0', ''),
(123, 'افزونه ویرایش محصول', 'k21', 'افزونه وردپرس', '1.2.0', 'افزونه ویرایش صفحات محصول ووکامرس با المنتور – WooCommerce shortcodes & Custom Product page with Elementor توسط SiteSao طراحی شده و دارای قابلیت های بسیار کاربردی است. این افزونه وردپرس با گزینه هایی که در اختیار شما قرار می دهد به شما امکان طراحی یک تمپلیت یا قالب اختصاصی و منحصر به فردی را می دهد که می توانید این قالب را برای گروه های محصول خود انتخاب و تنظیم نمایید.\r\n\r\nبرای بیان دقیق تر مفهوم توضیح قبل باید عرض کنیم که برای مثال اگر در فروشگاه خود چندین گروه محصولاتی دارید (موبایل – کامپیوتر – لوازم جانبی – و…) و قصد دارید برای هر کدام از این گروه ها یک قالب خاصی را قرار دهید کافی است که فقط افزونه ویرایش صفحات محصول ووکامرس با المنتور را نصب کنید.\r\n\r\n', '2022-01-04', 1230000, 'تومان', '12 درصد', 'تنوع رنگی', 'موجود در انبار', 'افزونه های وردپرسی', '', '', '', 'پشتیبانی رایگان مادام العمر', 'قالب کاملا فارسی سازی شده', 'آپدیت خودکار قالب و افزونه ها', 'دارای فایل آسان نصب ', '', '', 'Kiyanpc-Restrict-contactPro.png', '2022-01-04 14:15:59', '0', ''),
(127, 'تست', '123', 'برچسب', '1.1.1', 'توضیحات', '2022-01-06', 2000, 'ریال', '50', 'قرمز', 'موجود در انبار', '', 'قالب های وردپرس', '', '', 'پشتیبانی رایگان مادام العمر', 'قالب کاملا فارسی سازی شده', 'آپدیت خودکار قالب و افزونه ها', 'دارای فایل آسان نصب ', '', '', 'Kiyanpc-avada.png', '2022-01-06 14:47:29', '0', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
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

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `Rolls`, `username`, `email`, `password`, `Favorites1`, `Favorites2`, `Favorites3`, `gender`, `Datebirth`, `cities`, `file_name`, `uploaded_on`, `status`) VALUES
(1, 'admin', 'admin', 'admin@gmail.com', '@Admin1234', 'افزونه های وردپرسی', 'قالب های وردپرس', 'دروره های آموزشی طرحی سایت', 'مرد', '2000-01-17', 'اصفهان', 'AdminPhotoProfile.png', '2023-01-01 00:06:58', '1'),
(2, 'Nuser', 'user', 'user@gmail.com', '@User1234', 'افزونه های وردپرسی', 'قالب های وردپرسی', 'سایت های وردپرسی', 'مرد', '2000-01-17', 'اصفهان', 'UserPhotoProfile.png', '2023-01-01 00:06:58', '1');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
