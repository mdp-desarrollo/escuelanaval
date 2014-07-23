<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>Cambiar Contrase&ntilde;a</title>
<link type="text/css" href="views/css/themes/<?php echo $_SESSION ['theme'];?>/jquery-ui-1.8.1.custom.css"	rel="stylesheet" />
<link type="text/css" href="views/css/style.css" rel="stylesheet" />
<link type="text/css" href="views/css/themes/demos.css" rel="stylesheet" />
<script type="text/javascript" src="views/js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="views/js/jquery.validate.js"></script>
<script type="text/javascript" src="views/js/jquery-ui-1.8.1.custom.min.js"></script>

<script type="text/javascript">
$.validator.setDefaults({
	submitHandler: function() {
//Extrameos las Variables
var pass=$("#pass").val();
var pass1=$("#pass1").val();
//Guardamos los valores con metodo ajax
var peticion = $.ajax({
	url:'main.php?controller=usuario&action=cambiarPass',
	type:'POST',
	data: { pass1 : pass1, pass : pass  },
	success: function(cate) { if(cate>0) { alert("Su contraseña fue cambiada exitosamente"); 
	window.location.href="main.php?controller=usuario&action=bienvenida"; }
    else {alert(cate); $("#pass").focus(); } }, //mostramos el error
	error: function() { alert('Se ha producido un error Inesperado'); }
	});
	}
});
	$(function() {
		$(".boton").button();
		$("#cambiar").validate({
			  rules: {
		    	pass1: "required",
		    	pass2: {  equalTo: "#pass1" }
		  	         }
		});	
		$("#pass").focus();
	});
	</script>
</head>
<body>
<div class="ui-widget" id="formulario" style="width: 100%;">
<div class="ui-widget-header ui-corner-top">Cambiar mi contrase&ntilde;a: <?php
echo $_SESSION ['usuario'];
?></div>
<div class="ui-widget-content ui-corner-bottom">
<form action="main.php?controller=usuario&action=guardarConfig" id="cambiar" 	method="post">
<input type="hidden" value="<?php echo $_SESSION ['idUsuario'];?>" name="usuario">
<p><label>Contrase&ntilde;a Actual: </label><input type="password"	id="pass" name="pass" class="required text ui-widget-content ui-corner-all" size="30" ></p>
<p><label>Contrase&ntilde;a Nueva: </label><input type="password" id="pass1"	name="pass1" class="text ui-widget-content ui-corner-all" title="Su contrase&ntilde;a debe ser de por lo menos 8 caracteres" size="30" minlength="8"></p>
<p><label>Repita Contrase&ntilde;a: </label><input type="password"	id="pass2" name="pass2" title="Las contrase&ntilde;as no coinciden"  class="text ui-widget-content ui-corner-all" size="30"></p>
<hr>
<input type="submit" value="Cambiar Contrase&ntilde;a" class="boton"></form>
</div>
</div>
</body>