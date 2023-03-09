<!-- یاسین کیانی : دانشجوی ترم چهارم رشته ی کاردانی پیوسته کامپیوتر نرم افزار در دانشگاه : مهاجر -->

<?php
session_start();
include 'PHP_Settings/settings.php';
include 'PHP_Settings/db.php';
include 'PHP_Settings/security.php';

$userid = $_GET['id'];
$dbc = new db( $dbHost, $dbUser, $dbPass, $dbName );

//تغییر وضعیت کالا به غیر فعال 
//0= غیر فعال
//1=فعال

$sql =	"UPDATE product SET status = '0'
WHERE id = ?";




$result = $dbc -> query( $sql, $userid );
$dbc -> close();

echo "
<center>
<label style='background-color: aquamarine;width: 100%;align-content: center;font-size: 20px;'>
عملیات حذف با موفقیت انجام شد
</label>
</center>
 ";		 

?>








