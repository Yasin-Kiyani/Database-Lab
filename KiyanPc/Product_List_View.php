<!doctype html>
<!-- یاسین کیانی : دانشجوی ترم سوم رشته ی کاردانی پیوسته کامپیوتر نرم افزار در دانشگاه : مهاجر -->

<html lang = "fa">
<head>
    <title> تمامی  محصولات</title>
    <meta name="description" content="ProductAdminPanel" charset="utf-8">
    <link rel="stylesheet" type="text/css" href="assets/css/Panel-style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="assets/fonts/all.css">
    
</head>
		  
<body>
	 <!-- header -->

  <header>
	  
<!-- navigate bar -->
	   
	  
      <img src="assets/images/Admin_Product.jpg" alt="Admin_Product" class="banner-catalog" title="Admin_Product"  >
 
  </header>
	
  
  <!-- section -->

	<section>
	
 <!-- article -->
	

	 <article>	
	
  <!-- سر تیتر ها -->

 <div class="container2"  >
 <strong><label>لیست محصولات(پنل ادمین)</label></strong>
 <a href= "Add_Product_View.php"><button  type="submit" class="btn btn-tonal primary"><span> افزودن </span>
	 
 <i class=' fas fa-plus-square'></i></button></a>
 </div><br><div class="data-container">
 <table class="datatable">
 <tr>
 <th><input type="checkbox">
 </th><th>کد</th><th>شناسه</th><th>نام</th><th>تصویر</th>
 <th> برچسب </th><th> نسخه</th> <th><i class="fas fa-arrow-down"></i>	 تاریخ ساخت
 </th><th><i class="fas fa-arrow-down"></i>	 قیمت</th><th>نوع قیمت
 </th><th> تخفیف</th><th> رنگ</th><th> موجودیت</th><th>دسته بندی 1</th><th>دسته بندی 2
 </th><th>دسته بندی 3</th><th> ویژگی 1</th><th> ویژگی 2</th><th>ویژگی 3</th><th>ویژگی 4 </th>
 <th>ویژگی 5</th><th>ویژگی 6</th><th>ویژگی 7</th><th>ویرایش کالا</th><th>حدف نرم کالا </th>
 </tr>			 

<!-- PHP --> 
	 

<?php
include 'PHP_Settings/settings.php';
include 'PHP_Settings/db.php';
include 'PHP_Settings/security.php';
include 'PHP_Settings/functions.php';


//نمایش فقط کالا های فعال

$dbc = new db( $dbHost, $dbUser, $dbPass, $dbName );
$sql = "SELECT * FROM product WHERE  status='1'";

$result=$dbc ->query ($sql); 
$productList = $result -> fetchAll();

foreach( $productList as $product )

include'Product_List_Table.php'

?>
		 
</table>
</div>

</article>		
</section>
	
 <!-- aside --> 
	
  <aside>

 <?php

?>
	 
 </aside>
 
 <div class="goup">

 <a href="#top">
برو بالا 
 <br>
 <i class="fas fa-chevron-up"></i>
 </a>
 </div>
	
	
<!-- footer --> 
<div class="res320">	
<footer>
	 <?php

?>
</footer>
	</div>
	
 <div class="goup">

 <a href="#top">
برو بالا 
 <br>
 <i class="fas fa-chevron-up"></i>
 </a>
 </div>

 </body>
 </html>
 