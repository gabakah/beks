<? $scriptName = substr(strrchr($SCRIPT_NAME,"/"),1);  
function printImage ($linkImg, $imgID, $linkUrl) 
{ 	global $scriptName; 	 	$onPage=(strcasecmp($scriptName,$linkUrl)==0); 	 	
if (strcasecmp($scriptName,"index.php")==0 && strcasecmp($linkUrl,"http://www.braatpaq.com")==0)
	$onPage=TRUE;		 	 	
echo "<tr><td height=\"25\" id=\"" . $imgID . "TD\""; 	
if ($onPage) echo " class=\"greyedLink\" bgcolor=\"#85A168\""; 	echo ">"; 	
if (!$onPage) 		
echo "<a href=\"" . $linkUrl . "\" onmouseover=\"imageSwap('" . $imgID . "','images/" . $linkImg . "_w.gif', '#85A168')\" onmouseout=\"imageSwap('" . $imgID . "','images/" . $linkImg . "_b.gif', 'transparent')\" style=\"text-decoration:none\">"; 		 	
echo "<img id=\"" . $imgID . "\" name=\"" . $imgID . "\" src=\"images/" . $linkImg . "_" . (($onPage) ? "w":"b") . ".gif\" border=\"0\" alt=\"\">"; 		 	
if (!$onPage) 	        
echo "</a>"; 	
echo "</td></tr>"; }  
function printBlankRow() 
{?> 	<tr style="height:10px"> 		
<td>&nbsp;</td></tr> <?}  
function printNavBar($printHeader) 
{ ?> 	<?if ($printHeader) {?> 	
<table width="231" height="240" cellspacing="0" cellpadding="0" border="0"> 		
<tr><td>&nbsp;</td></tr> 	</table> 	<?}?> 	
<table cellspacing="0" cellpadding="0"> 		
<?printImage("home", "homeImage", "http://www.braatpaq.com")?> 		
<?printBlankRow()?> 		
<?printImage("features", "featuresImage", "features.php")?> 		
<?printBlankRow()?> 		
<?printImage("how", "howImage", "how.php")?> 		
<?printBlankRow()?> 		
<?printImage("accessories", "accessoriesImage", "accessories.php")?> 		
<?printBlankRow()?> 		
<?printImage("order", "orderImage", "order.php")?> 		
<?printBlankRow()?> 		
<?printImage("pictures", "picturesImage", "pictures.php")?> 		
<?printBlankRow()?> 		
<?printImage("testimonials", "testimonialsImage", "testimonials.php")?> 		
<?printBlankRow()?>
<?printImage("faqs", "faqsImage", "faq.php")?> 	</table> <? } ?> 