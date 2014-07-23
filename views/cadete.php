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
<link type="text/css" href="views/css/themes/demos.css" rel="stylesheet" />
<script type="text/javascript" src="views/js/jquery-1.4.2.js"></script>
<script type="text/javascript"
	src="views/js/jquery-ui-1.8.1.custom.min.js"></script>

<script type="text/javascript">
	$(function() {
		$("#tabs").tabs();
//Formulairo modal
		
	$("#formulario").dialog({ bgiframe: true, autoOpen: false, height: 300, modal: true, resizable: true,
		buttons: { 'Aceptar': function() { $(this).dialog('close'); },
		'Cancelar': function() { $(this).dialog('close'); }
		} });
	$("#nuevo").click(function(){
		//Abrimos el dialogo
		$("#formulario").dialog('open');
		});
	
	});
	</script>
</head>
<body>

<div class="demo">

<div id="tabs">
<ul>
	<li><a href="#tabs-1">Lista de Cadetes</a></li>
	<li><a href="#tabs-2">formualrio</a></li>
	<li><a href="#tabs-3">Aenean lacinia</a></li>
</ul>
<div id="tabs-1">
<p>
<?php
while ( $c = $listaCadetes->fetch ( PDO::FETCH_OBJ ) ) {
	echo $c->paterno . " " . $c->materno . " " . $c->nombres . "<br>";
}
?></p>
</div>
<div id="tabs-2">
<div id="nuevo">Abrir</div>

<div id="formulario" title="Titulo del formulario">
<form action="main.php?controller=login&action=identificarse" id="login" method="post">
<label for="name">Nombre</label><br />
<input type="text" name="name" id="name" class="text ui-widget-content ui-corner-all" style="width:95%; " /><br />
<label for="email">Correo</label><br />
<input type="text" name="email" id="email" value="" class="text ui-widget-content ui-corner-all" /><br />
<label for="password">Contraseña</label><br />
<input type="password" name="password" id="password" value="" class="text ui-corner-all" />
</form>
</div>
</div>
<div id="tabs-3">
<p>Mauris eleifend est et turpis. Duis id erat. Suspendisse potenti.
Aliquam vulputate, pede vel vehicula accumsan, mi neque rutrum erat, eu
congue orci lorem eget lorem. Vestibulum non ante. Class aptent taciti
sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.
Fusce sodales. Quisque eu urna vel enim commodo pellentesque. Praesent
eu risus hendrerit ligula tempus pretium. Curabitur lorem enim, pretium
nec, feugiat nec, luctus a, lacus.</p>
<p>Duis cursus. Maecenas ligula eros, blandit nec, pharetra at, semper
at, magna. Nullam ac lacus. Nulla facilisi. Praesent viverra justo vitae
neque. Praesent blandit adipiscing velit. Suspendisse potenti. Donec
mattis, pede vel pharetra blandit, magna ligula faucibus eros, id
euismod lacus dolor eget odio. Nam scelerisque. Donec non libero sed
nulla mattis commodo. Ut sagittis. Donec nisi lectus, feugiat porttitor,
tempor ac, tempor vitae, pede. Aenean vehicula velit eu tellus interdum
rutrum. Maecenas commodo. Pellentesque nec elit. Fusce in lacus. Vivamus
a libero vitae lectus hendrerit hendrerit.</p>
</div>
</div>

</div>
<!-- End demo -->

<div class="demo-description">

<p>Click tabs to swap between content that is broken into logical
sections.</p>

</div>
<!-- End demo-description -->

</body>
</html> 