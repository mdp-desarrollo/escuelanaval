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
var interno=$("#interno").val();
var ap=$("#ap").attr('value');
var am=$("#am").attr('value');
var nom=$("#nom").attr('value');
var ci=$("#ci").attr('value');
var email=$('#email').attr('value')
var tel=$("#tel").attr('value');
var sexo=$("#genero").attr('value');
var entidad=$("#entidad").val();
var username=$("#username").attr('value');
var pas1=$("#pas1").attr('value');
var prio=$("#prio").attr('value');
//Guardamos los valores con metodo ajax
var peticion = $.ajax({
	url:'main.php?controller=usuario&action=crearUsuario',
	type:'POST',
	data: { cargo : cargo, interno : interno, ap : ap, am : am, nom : nom, ci : ci, email : email, tel : tel, sexo : sexo, entidad: entidad, username : username, pas1 : pas1, prio : prio   },
	success: function(cate) { if(cate>0) { alert("Datos ingresados correctamente"); 
	window.location.href="main.php?controller=usuario&action=nuevoUsuario.php"; }
    else {alert(cate); } }, //mostramos el error
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
<div class="ui-widget-header ui-corner-top " style=" height:15px;"> Formulario de creacion de Proyectos: <span style="float: left;" class="ui-icon ui-icon-document"></span></div>
<div class="ui-widget-content ui-corner-bottom"> 
<form action="main.php?controller=usuario&action=crearUsuario" method="post" id="nuevo">
<!--<div class="container">
	<h4>Errores al ingresar datos:</h4>
	<ol>
        <li><label for="area" class="error">Escoja Area</label></li>
        <li><label for="cargo" class="error">Escriba Cargo</label></li>
        <li><label for="ap" class="error">Apellido paterno</label></li>
		<li><label for="am" class="error">Apellido Materno</label></li>
		<li><label for="nom" class="error">Nombre(s)</label></li>
        <li><label for="ci" class="error">CI(solo el numero)</label></li>
		<li><label for="an" class="error">Ano de nacimiento</label></li>
       	<li><label for="mes" class="error">Mes</label></li>
        <li><label for="dia" class="error">Dia de nacimietno</label></li>
        <li><label for="email" class="error">Email</label></li>
        <li><label for="tel" class="error">Telefono</label></li>
        <li><label for="cel" class="error">Celular</label></li>
		<li><label for="sexo" class="error">Sexo</label></li>
		<li><label for="username" class="error">Nombre de usuario</label></li>
        <li><label for="pas1" class="error">Pass minimo de 4 letras/numeros</label></li>
		<li><label for="pas2" class="error">Las contrasenas no coinciden</label></li>
		<li><label for="prio" class="error">Prioridad</label></li>
	</ol>
</div>-->
<p>
<label for="cargo">Cargo:</label>
<input name="cargo" class="required" id="cargo" title="Cargo que ocupa" size="40"  />
</p>
<p>
<label for="interno"># Interno:</label>
<input name="interno" class="required" id="interno" title="# de interno" size="6"  />
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
<p>
<label for="ci">Cedula de identidad:</label>
<input name="ci" class="required digits" id="ci" size="13" maxlength="12" title="Solo numeros" />
</p>
<p>
<label for="email">Email:</label>
<input id="email" name="email" class="required email"size="40" title="Ingrese un email valido" >
</p>
<p>
<label for="tel">Telefono/Celular:</label>
<input id="tel" name="tel" class="" size="30" />
</p>
<p>
<label for="genero">Genero:</label>
<select name="genero" id="genero" class="required" title="Escoja un genero">
<option value="" ></option>
<option value="m" >Masculino</option>
<option value="f" >Femenino</option>
</select>
</p>
<hr />
<h3>Datos Usuario</h3>
<p>
<label> Entidad:</label><select name="entidad" id="entidad" class="required text ui-widget-content ui-corner-all" >
<option value="">Seleccione..</option>
<?php while($e=$entidades->fetch(PDO::FETCH_OBJ)){ ?>
<option id="<?php echo $e->idEntidad;?>" value="<?php echo $e->idEntidad;?>"><?php echo "(".$e->abreEntidad.") ".$e->entidad;?></option>	
<?php }?>
</select>
</p>
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