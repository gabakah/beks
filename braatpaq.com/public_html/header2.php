<? include "phpfunctions.php" ?>
<?
	$browser=strtoupper($HTTP_USER_AGENT);
	if (strstr($browser,"MSIE") || strstr($browser,"MOZILLA/5.0"))
		$browserType="IE";
	else if (strstr($browser,"MOZILLA"))
		$browserType="NS";
	else
		$browserType="?";
?>
<?
	if ($browserType=="IE")
		include "header_ie.php";
	else
		include "header_ns.php";
?>
<script>
	//preload function
	function pl(url)
	{
		img=new Image();
		img.src="images/"+url;
	}
	pl("home_b.gif"); pl("home_w.gif"); pl("features_b.gif"); pl("features_w.gif");
	pl("how_b.gif"); pl("how_w.gif"); pl("accessories_b.gif"); pl("accessories_w.gif");
	pl("order_b.gif"); pl("order_w.gif"); pl("pictures_b.gif"); pl("pictures_w.gif");
	pl("testimonials_b.gif"); pl("testimonials_w.gif"); pl("faqs_b.gif");
	pl("faqs_w.gif");
</script>
