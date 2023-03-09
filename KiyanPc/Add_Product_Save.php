<!-- یاسین کیانی : دانشجوی ترم چهارم رشته ی کاردانی پیوسته کامپیوتر نرم افزار در دانشگاه : مهاجر -->

<?php

include 'PHP_Settings/settings.php';
include 'PHP_Settings/db.php';
$dbc = new db( $dbHost, $dbUser, $dbPass, $dbName );
$statusMsg = '';

$targetDir = "assets/images/uploads/";
$fileName = basename($_FILES["file"]["name"]);
$targetFilePath = $targetDir . $fileName;
$fileType = pathinfo($targetFilePath,PATHINFO_EXTENSION);

// Upload
if(move_uploaded_file($_FILES["file"]["tmp_name"], $targetFilePath)){

$sql = "INSERT INTO product(pdtname,pdtid,pdtlbl,pdtVersion,pdtDes,DateCreat,pdtPrice,
pdtPricelbl,pdtDiscount,pdtColor,pdtMojodi,
Category1,Category2,Category3,Property1,Property2,Property3,Property4,Property5,Property6,Property7,file_name,uploaded_on)

VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,'".$fileName."', NOW())";
$result = $dbc -> query( $sql, $_POST['pdtname'],
$_POST['pdtid'],
$_POST['pdtlbl'],
$_POST['pdtVersion'],
$_POST['pdtDes'],
$_POST['DateCreat'],
$_POST['pdtPrice'],
$_POST['pdtPricelbl'],
$_POST['pdtDiscount'],
$_POST['pdtColor'],
$_POST['pdtMojodi'],
$_POST['Category1'],
$_POST['Category2'],
$_POST['Category3'],
$_POST['Property1'],
$_POST['Property2'],
$_POST['Property3'],
$_POST['Property4'],
$_POST['Property5'],
$_POST['Property6'],
$_POST['Property7'] );
}

$dbc -> close();

echo "
<center>
<label style='background-color: aquamarine;width: 100%;align-content: center;font-size: 20px;'>
کالا با موفقیت درج شد
</label>
</center>
 ";		
 
