<?php
session_start ();
if (isset ( $_SESSION ['usuario'] )) {
	?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" "http://www.w3.org/TR/html4/frameset.dtd">
<html lang="es">
<head>
<link rel="shortcut icon" href="views/images/camu.ico">
<title>Sistema Disciplinario - Escuela Naval Militar</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="views/js/jquery-1.4.2.js"></script>
<link rel="stylesheet" href="views/css/queryLoader.css" type="text/css" />
<script type='text/javascript' src='views/js/queryLoader.js'></script>
<script type="text/javascript">
	$(function() {
			    QueryLoader.selectorPreload = "#main";
		QueryLoader.init();
	});
	</script>
</head>
<style>
*{margin:0; padding:0; }
</style>
<frameset rows="95,*,30" border="0">
 <frame class="menu" name="mainMenu" src="menu.php" scrolling="no" frameborder="0" noresize="noresize">
 <frame id="main" name="main" src="main.php" scrolling="auto" frameborder="0" onload="if (top.mainMenu.stopWork()) top.mainMenu.stopWork();">
 <frame class="menu" name="bottomFrame" src="bottom.php" scrolling="no" frameborder="0" noresize="bottomFrame">
</frameset>
</frameset>
<noframes>
Este software requiere un navegador con soporte de frames como Firefox
Mozilla.
</noframes>
<script type='text/javascript'>

//QueryLoader.init();
</script>
</html>
<?php
} else {
	include ('views/login.php');
}
?>