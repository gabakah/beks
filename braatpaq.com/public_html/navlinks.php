<?
	$scriptName = substr(strrchr($SCRIPT_NAME,"/"),1);

	function printLink ($linkText, $linkUrl)
	{
		global $scriptName;

		if (strcasecmp($scriptName,$linkUrl)!=0)
			echo "<a href=\"" . $linkUrl . "\">";
		echo $linkText;
		if (strcasecmp($scriptName,$linkUrl)!=0)
			echo "</a>";

	}
?>
<table width="100%" class="normal" border="0">
	<tr>
	<td align="left">
	<table border="0" width="100%" class="normal">
		<tr><td nowrap><?printLink("Home","index.php")?></td></tr>
		<tr><td nowrap><?printLink("Features","features.php")?></td></tr>
		<tr><td nowrap><?printLink("Accessories","accessories.php")?></td></tr>
		<tr><td nowrap><?printLink("How does it work?","how.php")?></td></tr>
		<tr><td nowrap><?printLink("FAQ","faq.php")?></td></tr>
		<tr><td nowrap><?printLink("Testimonials","testimonials.php")?></td></tr>
		<tr><td nowrap><?printLink("Pictures","pictures.php")?></td></tr>
		<tr><td nowrap><?printLink("Order","order.php")?></td></tr>
		<tr><td nowrap><?printLink("Affiliates","affiliate.php")?></td></tr>
	</table>
	</td>
	</tr>
</table>
