<html>
<head>
	<title>BRAATPAQ - Get more from your laptop</title>
	<script>
		function imageSwap(strImgName, newURL, strBGCol)
		{
			eval("document.menuDiv.document.images['"+strImgName+"'].src='"+newURL+"'");
		}

		function repositionMenu()
		{
			document.layers['menuDiv'].left=(self.innerWidth/2)-350;
			document.layers['menuDiv'].visibility="show";
		}
		
		window.onresize=function(){document.location.reload();};
	</script>
	<link href="mainstyle.css" rel="stylesheet" type="text/css">
</head>

<body onload="repositionMenu();">

<table id="contentTable" cellspacing="0" cellpadding="0" border="0" width="741" height="632" align="center">
	<tr>
		<td width="231" height="630" rowspan="2" valign="top" align="center" class="leftFrame">
			&nbsp;
		</td>
		<td width="10" height="630" rowspan="2" valign="top" align="left" class="vertSeparator">&nbsp;</td>
		<td width="500" height="180" valign="top" align="left" class="topFrame">&nbsp;</td>
	</tr>
	<tr>
		<td width="500" height="452" align="center" valign="middle" border="0" class="contentFrame">
			<table border="0" cellspacing="0" cellpadding="0" width="80%">
			<tr><td class="contentStyle">
