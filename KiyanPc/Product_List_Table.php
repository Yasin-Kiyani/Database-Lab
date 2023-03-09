<!-- یاسین کیانی : دانشجوی ترم سوم رشته ی کاردانی پیوسته کامپیوتر نرم افزار در دانشگاه : مهاجر -->

<!--  product Admin  list Table  -->

<?php
echo"
<tr>

<td>
 <input type='checkbox'>
</td>

<td>
{$product['id']}
</td>

<td>
{$product['pdtid']}
</td>


<td>
{$product['pdtname']}
</td>

<td>
<img src='assets/images/uploads/{$product['file_name']}' ' class='image-thumbnail'> </div>
</td>

<td>
{$product['pdtlbl']}
</td>

<td>
{$product['pdtVersion']}
</td>

<td>
{$product['DateCreat']}
</td>

<td  style='direction: ltr;padding-left: 50px'>
{$product['pdtPrice']}
</td>

<td>
{$product['pdtPricelbl']}
</td>

<td>
{$product['pdtDiscount']}
</td>

<td>
{$product['pdtColor']}
</td>

<td>
{$product['pdtMojodi']}
</td>

<td>
{$product['Category1']}
</td>

<td>
{$product['Category2']}
</td>

<td>
{$product['Category3']}
</td>

<td>
{$product['Property1']}
</td>

<td>
{$product['Property2']}
</td>

<td>
{$product['Property3']}
</td>

<td>
{$product['Property4']}
</td>

<td>
{$product['Property5']}
</td>

<td>
{$product['Property6']}
</td>

<td>
{$product['Property7']}
</td>

<td>



</td>

<td>

<a href='Soft_Delete_Products.php?id={$product['id']}'><button type='submit' class='btn btn-filled primary'><span> حذف</span>
<i class=' icon fas fa-trash-alt'></i></button></a>

</td>

</tr>
";

?>
