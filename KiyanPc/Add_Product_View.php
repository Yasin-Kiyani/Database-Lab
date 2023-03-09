<!doctype html>
<!-- یاسین کیانی : دانشجوی ترم چهارم رشته ی کاردانی پیوسته کامپیوتر نرم افزار در دانشگاه : مهاجر -->

<html lang = "fa">
<head>
    <title>ضافه کردن محصول</title>
    <meta name="description" content="addProduct" charset="utf-8">
    <link rel="stylesheet" type="text/css" href="assets/css/Panel-style.css">
    <link rel="stylesheet" type="text/css" href="assets/fonts/all.css">
	<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
		  
<body>

	
<!-- header-->
	
  <header>

<!-- navigate bar -->

<img src="assets/images/addProduct-logo.jpg" alt="addProduct" class="banner-catalog" title="addProduct"  >
  
	</header>
  

   <!-- section -->

	<section>
	
 <!-- article -->

	 <article>	
	
  
  <!-- Form -->
  
  <form action="Add_Product_Save.php" method="post" enctype="multipart/form-data" id="form">
 
  <center> 
  <h1><i class="fas fa-file-signature"></i>  فرم افزودن محصول</h1>
  <p>مشخصات کامل محصول خود را برای انتشار درج کنید.</p>
  </center>
  <hr>
  
 <!-- نام محصول -->
  
  <div class="display1 Pregister">
  <div class="outline-textfield">
  <input type="text" placeholder=" " id="pdtname" name="pdtname" class="input-outline" required>
  <label for="pdtname" class="label-outline">نام محصول</label>
  <div class="input-LEicon" ><i class="fas fa-file-signature"></i></div>
  <div class="input-TRicon" >
  <i class="far fa-times-circle"></i></div></div>
  <span class="help-text"> مثال : قالب ایمپرزا</span>
  <br><br></div>
  
  <!-- شناسه محصول -->
  
  <div class="display1 Pregister">
  <div class="display2 Pregister">
  <div class="outline-textfield">
  <input type="text" placeholder=" " id="pdtid" name="pdtid" class="input-outline" required>
  <label for="pdtid" class="label-outline">شناسه محصول</label>
  <div class="input-LEicon" ><i class="fas fa-barcode"></i></div>
  <div class="input-TRicon" >
  <i class="far fa-times-circle"></i></div></div>
  <span class="help-text"> مثال : K26</span>
  <br><br></div></div>
  
  
  <!-- برچسب محصول -->
  
  <div class="display1 Pregister">
  <div class="outline-textfield">
  <input type="text" placeholder=" " id="pdtlbl" name="pdtlbl" class="input-outline" required>
  <label for="pdtlbl" class="label-outline">برچسب محصول</label>
  <div class="input-LEicon" ><i class="fas fa-tag"></i></div>
  <div class="input-TRicon" >
  <i class="far fa-times-circle"></i></div></div>
  <span class="help-text"> مثال : قالب ها</span>
  <br><br></div>
 
 <!-- نسخه محصول -->
 
  <div class="display1 Pregister">
  <div class="display2 Pregister">
  <div class="outline-textfield">
  <input type="text" placeholder=" " id="pdtVersion" name="pdtVersion" class="input-outline" required>
  <label for="pdtVersion" class="label-outline">نسخه محصول</label>
  <div class="input-LEicon" ><i class="fas fa-envelope-open-text"></i></div>
  <div class="input-TRicon" >
  <i class="far fa-times-circle"></i></div></div>
  <span class="help-text"> مثال : 1.2.0</span>
  <br><br></div></div>
  
  <div class="display2 Pregister">
  </div>
  
  <!-- توضیخات محصول -->

  <label for="pdtDes"><i class="fas fa-comment-alt" style="color:#009BFF;margin:0px 15px 0 15px;"></i>
  <span style="margin-right:-5px;">توضیخات محصول</span>
  </label>

  <textarea style="width:91%;margin-right:10px;" class="texarea" placeholder="توضیحات محصول را درج کنید"  name="pdtDes" id="pdtDes" required></textarea><br><br>
  
  <!-- گالری محصول -->
  
  <div class="display1 Pregister">
  <div class="outline-textfield">
  <input type="file" name="file" placeholder=" " id="file" class="input-outline" required style="align-content:center">
  <label for="file" class="label-outline">گالری عکس محصول</label>
  <div class="input-LEicon" ><i class="fas fa-camera-retro"></i></div>
  <div class="input-TRicon" >
  <i class="far fa-times-circle"></i></div></div>
  <br><br></div>
  
 <!-- تاریخ محصول -->
  
  <div class="display1 Pregister">
  <div class="display2 Pregister">
  <div class="outline-textfield">
  <input type="date" placeholder=" " id="DateCreat" name="DateCreat" class="input-outline" required>
  <label for="DateCreat" class="label-outline">تاریخ ساخت محصول</label>
  <div class="input-LEicon" ></div>
  <div class="input-TRicon" >
  <i class="far fa-times-circle"></i></div></div>
  <span class="help-text"> مثال : 11/02/2021</span>
  <br><br></div></div>

   <!--  قیمت محصول -->

  <div class="display1 Pregister">
  <div class="outline-textfield">
  <input type="number" placeholder=" " id="pdtPrice" name="pdtPrice" class="input-outline" required >
  <label for="pdtPrice" class="label-outline">قیمت محصول</label>
  <div class="input-LEicon" ><i class="fas fa-dollar-sign"></i></div>
  <div class="input-TRicon" >
  <i class="far fa-times-circle"></i></div></div>
  <span class="help-text"> مثال : 20000</span>
  <br><br></div>
  
  
  <!-- نوع قیمت -->
  
  <div class="display1 Pregister">
  <div class="display2 Pregister">
  <div class="container2">
  <i class="fas fa-money-check-alt" style="color:#009BFF;margin:0px 5px 0 15px;">
  </i><span style="color:gray">نوع قیمت</span>
  <input type = "radio"  name = "pdtPricelbl" value = "تومان" checked id = "pdtPrice-toman">
  <label for = "pdtPrice-toman"> تومان </label> 
  <input type = "radio" name = "pdtPricelbl" value = "ریال" id = "pdtPrice-rial">
  <label for = "pdtPrice-rial">ریال</label>
  </div>
  <br>
  <br>
  </div>
  </div>

 <!-- میزان تخفیف -->

  <div class="display1 Pregister">
  <div class="outline-textfield">
  <input type="text" placeholder=" " id="pdtDiscount" name="pdtDiscount" class="input-outline" required>
  <label for="pdtDiscount" class="label-outline">میزان تخفیف</label>
  <div class="input-LEicon" ><i class="fas fa-percent"></i></div>
  <div class="input-TRicon" >
  <i class="far fa-times-circle"></i></div></div>
  <span class="help-text"> مثال : 50%</span>
  <br><br></div>

  <!-- رنگ محصول -->


  <div class="display1 Pregister">
  <div class="display2 Pregister">
  <div class="outline-textfield">
  <input type="text" placeholder=" " id="pdtColor" name="pdtColor" class="input-outline" required>
  <label for="pdtColor" class="label-outline">رنگ محصول</label>
  <div class="input-LEicon" ><i class="fas fa-palette"></i></div>
  <div class="input-TRicon" >
  <i class="far fa-times-circle"></i></div></div>
  <span class="help-text"> مثال : قرمز</span>
  <br><br></div></div>
  
  <!-- موجودیت -->
  
  <div class="display1 Pregister">
  <div class="container2">
  <i class="fas fa-store" style="color:#009BFF;margin:0px 5px 0 15px;">
  </i><span style="color:gray">موجوديت</span>
  <br>
  <input type = "radio"  name = "pdtMojodi" value = "موجود در انبار" checked id = "pdtMojodi-store">
  <label for = "pdtMojodi-store"> موجود در انبار </label> 
  <br>
  <input type = "radio" name = "pdtMojodi" value = "نا موجود" id = "pdtMojodi-finish">
  <label for = "pdtMojodi-finish">نا موجود</label>
  </div>
  <br>
  </div>
    
    <!-- دسته بندی -->
    
    
  <div class="display1 Pregister">
  <div class="display2 Pregister">
  <div class="container2">
  <i class="fas fa-clipboard-list" style="color:#009BFF;margin:0px 5px 0 15px;">
  </i><span style="color:gray">دسته بندی محصول</span>
  <br>
  <input type = "hidden" name = "Category1" value = "" id = "noune1" checked>
  <input type = "hidden" name = "Category2" value = "" id = "noune2" checked>
  <input type = "hidden" name = "Category3" value = "" id = "noune3" checked>
  <input type = "checkbox" name = "Category1" value = "افزونه های وردپرسی" id = "PL-WP-pdt">
  <label for = "PL-WP-pdt">افزونه های وردپرسی</label>
  <br>
  <input type = "checkbox" name = "Category2" value = "قالب های وردپرس" id = "TM-WP-pdt">
  <label for = "TM-WP-pdt">قالب های وردپرس</label>
  <br>
  <input type = "checkbox" name = "Category3" value = "دروره های آموزشی طرحی سایت" id = "LN-WP-pdt">
  <label for = "LN-WP-pdt">دروره های آموزشی طرحی سایت</label>
  </div>
  </div>
  </div>
  <br>
  
  <!-- ویژگی های محصول -->

  <div class="display1 Pregister">
  <br>
  <div class="container2">
  <i class="fas fa-check-circle" style="color:#009BFF;margin:0px 5px 0 15px;">
  </i><span style="color:gray">ویژگی های  محصول</span>
  <br>
  <input type = "hidden" name = "Property1" value = "" id = "noune4" checked>
  <input type = "hidden" name = "Property2" value = "" id = "noune5" checked>
  <input type = "hidden" name = "Property3" value = "" id = "noune6" checked>
  <input type = "hidden" name = "Property4" value = "" id = "noune7" checked>
  <input type = "hidden" name = "Property5" value = "" id = "noune8" checked>
  <input type = "hidden" name = "Property6" value = "" id = "noune9" checked>
  <input type = "hidden" name = "Property7" value = "" id = "noune10" checked>
  <input type = "checkbox" name = "Property1" value = "رایگان" id = "Property1">
  <label for = "Property1">رایگان</label>
  <br>
  <input type = "checkbox" name = "Property2" value = "پشتیبانی رایگان مادام العمر" id = "Property2">
  <label for = "Property2">پشتیبانی رایگان مادام العمر</label>
  <br>
  <input type = "checkbox" name = "Property3" value = "قالب کاملا فارسی سازی شده" id = "Property3">
  <label for = "Property3">قالب کاملا فارسی سازی شده</label>
  <br>
  <input type = "checkbox" name = "Property4" value = "آپدیت خودکار قالب و افزونه ها" id = "Property4">
  <label for = "Property4">آپدیت خودکار قالب و افزونه ها</label>
  <br>
  <input type = "checkbox" name = "Property5" value = "دارای فایل آسان نصب " id = "Property5">
  <label for = "Property5">دارای فایل آسان نصب</label>
  <br>
  <input type = "checkbox" name = "Property6" value = "آموزش رایگان " id = "Property6">
  <label for = "Property6">آموزش رایگان</label>
  <br>
  <input type = "checkbox" name = "Property7" value = "دوره نیم بها" id = "Property7">
  <label for = "Property7">دوره نیم بها</label>
  </div>
  <br>
  <br>
  </div>
  <br>
  <br>
  
  <!-- دکمه ارسال -->

  <button type="submit" name="submit" class="btn btn-filled primary">
  <span>ارسال اطلاعات</span>
  <i class=" icon fas fa-arrow-circle-left"></i></button>

  
  </form>
		 

	</article>
</section>
	
 <!-- aside --> 
	
  <aside>

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
