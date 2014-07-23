<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>jQuery UI Tabs - Default functionality</title>
<link type="text/css"
	href="views/css/themes/<?php
	echo $_SESSION ['theme'];
	?>/jquery-ui-1.8.1.custom.css"
	rel="stylesheet" />
    <link type="text/css" href="views/css/style.css"	rel="stylesheet" />
<link type="text/css" href="views/css/themes/demos.css" rel="stylesheet" />
<script type="text/javascript" src="views/js/jquery-1.4.2.js"></script>
<script type="text/javascript"
	src="views/js/jquery-ui-1.8.1.custom.min.js"></script>

<script type="text/javascript">
	$(function() {
		$(".boton").button();
		$("#formulario").resizable({
			handles: 'e'});
	
	});
	</script>
</head>
<body>
<div class="ui-widget" id="formulario" style="width:400px;">
<div class="ui-widget-header ui-corner-top">Perfil de Usuario</div>
<div class="ui-widget-content ui-corner-bottom"> 
<form action="main.php?controller=usuario&action=guardarConfig" method="post">
<input type="hidden" value="<?php echo $_SESSION ['idUsuario'] ?>" name="usuario">
<p>
<label>Apellido Paterno:</label><input name="paterno" type="text" class="text ui-widget-content ui-corner-all" value="<?php echo $c[0]['paterno']; ?>" size="20" ></input>
</p>
<p>
<label>Apellido Materno:</label><input name="materno" type="text"  class="text ui-widget-content ui-corner-all" value="<?php echo $c[0]['materno']; ?>" size="20" ></input>
</p>
<p>
<label>Nombres:</label><input name="nombres" type="text" class="text ui-widget-content ui-corner-all" value="<?php echo $c[0]["nombres"];?>" size="30"></input></p>
<p>
<label>Tema:</label><select name="theme" class="text ui-widget-content ui-corner-all">
<?php
while ( $t = $themes->fetch ( PDO::FETCH_OBJ ) ) {
	if($t->idTheme==$c[0]['idTheme']){		
?>
<option value="<?php echo $t->idTheme;?>" selected="selected"><?php echo $t->theme;?></option>
<?php
} 
else {
	?>
	<option value="<?php echo $t->idTheme;?>" ><?php echo $t->theme;?></option>
		<?php 
	}
}
?>
</select>
</p>
<hr>
<input type="submit" value="Guardar cambios" class="boton">
</form>
</div>
</div>
</body>