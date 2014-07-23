<?php
session_start ();
?>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8" />
<title>jQuery UI Tabs - Default functionality</title>
<link type="text/css" href="views/css/themes/<?php echo $_SESSION['theme'];?>/jquery-ui-1.8.1.custom.css"
	rel="stylesheet" />
<link type="text/css" href="views/css/themes/demos.css" rel="stylesheet" />
<script type="text/javascript" src="views/js/jquery-1.4.2.js"></script>
<script type="text/javascript"
	src="views/js/jquery-ui-1.8.1.custom.min.js"></script>
<script type="text/javascript" src="views/ui/jquery.ui.core.js"></script>
<script type="text/javascript" src="views/ui/jquery.ui.widget.js"></script>
<script type="text/javascript" src="views/ui/jquery.ui.tabs.js"></script>

<script type="text/javascript">
	$(function() {
		$("#tabs").tabs();
	});
	</script>
</head>
<body>

<div id="tabs">
<ul>
	<li><a href="#tabs-1">Inicio</a></li>
	<li><a href="#tabs-2"></a></li>
</ul>
<div id="tabs-1" align="center" >
<div >
<img src="views/images/sistema.jpg">
<p>

</p>
</div>
</div>
<div id="tabs-2">
<ul class="submenu">
	<li><a href="">listar</a></li>
	<li><a href="">listar</a></li>
	<li><a href="">listar</a></li>
	<li>listar</li>
	<li>listar</li>
</ul>
</div>

</div>

</body>
</html>