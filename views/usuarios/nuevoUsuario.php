<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Crear Proyecto</title>
	<link type="text/css" href="views/css/themes/<?php echo $_SESSION ['theme']; ?>/jquery-ui-1.8.1.custom.css"	rel="stylesheet" />
	<link type="text/css" href="views/css/themes/demos.css" rel="stylesheet" />
	<link type="text/css" href="views/css/style.css" rel="stylesheet" />
	<script type="text/javascript" src="views/js/jquery-1.4.2.js"></script>
	<script type="text/javascript" src="views/js/jquery-ui-1.8.1.custom.min.js"></script>
	<script type="text/javascript" src="views/js/jquery.validate.js"></script>
	<script type="text/javascript" src="views/ui/i18n/jquery.ui.datepicker-es.js"></script>
	<script type="text/javascript">
	$.validator.setDefaults({
		submitHandler: function() {
	//Extrameos las Variables
	var cargo=$("#cargo").attr('value');
	var ap=$("#ap").attr('value');
	var am=$("#am").attr('value');
	var nom=$("#nom").attr('value');
	var username=$("#username").attr('value');
	var pas1=$("#pas1").attr('value');
	var prio=$("#prio").attr('value');
	//Guardamos los valores con metodo ajax
	var peticion = $.ajax({
		url:'main.php?controller=usuario&action=crearUsuario',
		type:'POST',
		data: { cargo : cargo, ap : ap, am : am, nom : nom, username : username, pas1 : pas1, prio : prio   },	
		success: function(cate) { 
			if(cate>0) { 
				//alert(cate); 
				location.href="main.php?controller=usuario&action=listarUsuarios";
			}
    		else {
    			alert(cate); 
    		} 
    	}, //mostramos el error
    error: function() { alert('Se ha producido un error Inesperado'); }
});
}
});
	$(function() {
		$(".boton").button();
		var pickerOpts = {
			changeMonth: true,
			changeYear: true,
			yearRange: "-30:+30",
			dateFormat:"yy-mm-dd"
		};
		$("#fechaInicio,#fechaFinal").datepicker(pickerOpts,$.datepicker.regional['es']);
		$("#nuevo").validate();	   
		$("#codigo").focus();
		$("#nuevo").validate({
			rules: {
				pas1: "required",
				pas2: {
					equalTo: "#pas1"
				}
			}
		});
	});
	</script>
	<style type="text/css">
	body * {
		margin: 0px; 
		padding: 0px;
	}


	#formulario{
		width: 100%;
		border: 2px solid  #ccc;	
		-moz-border-radius: 6px;
		box-shadow: 5px -9px 3px #000; 
	}
	p{
		margin:10px;	
	}
	</style>
</head>
<body>
	<div class="ui-widget" id="formulario" >
		<div class="ui-widget-header ui-corner-top " style=" height:15px;"> Crear un Usuario: <span style="float: left;" class="ui-icon ui-icon-document"></span></div>
		<div class="ui-widget-content ui-corner-bottom"> 
			<form action="main.php?controller=usuario&action=crearUsuario" method="post" id="nuevo">
				<p>
					<label for="cargo">Cargo:</label>
					<input name="cargo" class="required" id="cargo" title="Cargo que ocupa" size="40"  />
				</p>
				<p>
					<label for="ap">Apellido Paterno:</label>
					<input name="ap" class="required" id="ap" size="30" title="Campo Requerido" />
				</p>
				<p>
					<label for="am">Apellido Materno:</label>
					<input id="am" name="am" class="required" size="30"  title="Campo Requerido"/>
				</p>
				<p>
					<label for="nom">Nombres:</label>
					<input id="nom" name="nom" class="required" size="30" title="Campo Requerido" />
				</p>
				<hr />
				<h3>Datos Usuario</h3>
				<p>
					<label for="username">Nombre de Usuario:</label>
					<input name="username" class="required" minlength="3" id="username" title="Ingrese un nombre de usuario" size="20" value=""  />
				</p>
				<p>
					<label for="pas1">Contrase&ntilde;a:</label>
					<input id="pas1" name="pas1" type="password" class="required" minlength="8" size="20" title="Minimo 8 caracteres" />
				</p>
				<p>
					<label for="pas2">Repita:</label>
					<input id="pas2" name="pas2" type="password" class="required equalTo:'#pas1'" equalTo="#pas1"size="20"	title="Las contrase&ntilde;as deben de ser iguales" />
				</p>		
				<p>
					<label for="prio">Prioridad:</label>
					<select name="prio" id="prio" class="required" title="Escoja una Prioridad">
						<option value=""></option>
						<option value="3">Administrador</option>
						<option value="2">Usuario nivel 2</option>
						<option value="1">Usuario nivel 1</option>
						<option value="0">Usuario nivel 0</option>
					</select>
				</p>

				<hr>
				<label></label><input type="submit" class="boton" value="Crear Usuario"><input type="reset" value="Resetear Campos" class="boton">
			</form>
		</div>
	</div>
</body>