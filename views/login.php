<!DOCTYPE html>
<html lang="en">
<head>
<link rel="shortcut icon" href="views/images/seguridad.gif">

<meta charset="UTF-8" />
<title>Sistema Disciplinario</title>
<link type="text/css" href="views/css/themes/dark-hive/jquery-ui-1.8.1.custom.css" rel="stylesheet" />
<link type="text/css" href="views/css/themes/demos.css" rel="stylesheet" />
<script type="text/javascript" src="views/js/jquery-1.4.2.js"></script>
<script type="text/javascript" src="views/js/jquery-ui-1.8.1.custom.min.js"></script>
<script type="text/javascript" src="views/js/jquery.validate.js"></script>
<link rel="stylesheet" href="views/css/queryLoader.css" type="text/css" />
<script type='text/javascript' src='views/js/queryLoader.js'></script>
<script type="text/javascript">
	$(function() {
		$(".login").button();

		$("#usuario").focus();
		$("#login").validate({
   errorLabelContainer: "#messageBox",
   wrapper: "li",
   submitHandler: function() { identificarse(); }
})

		
function identificarse(){
	var usuario=$("#usuario").val();
	var password=$("#password").val();
	var ajax=$.ajax({
		type:"POST",
		url:"main.php?controller=usuario&action=identificarse",
		data:{ usuario : usuario, password : password },
		success:function(msg){
		  if(msg>0){ location.reload();  }
		  else{  $("#err").fadeIn(500).fadeOut(200).fadeIn(1000).fadeOut(1000); }
		  },
		 error: function() { alert('Se ha producido un error Inesperado');  }
		  });		
}
$("#err").hide();		
	});
	</script>
	<style type="text/css">
body * {
	margin: 0px; 
	padding: 0px;
}
body{
 background: #d1d2d2 url(views/images/body-bg.jpg) top left repeat-x; 
/*background:url(views/images/fondo.jpg) 50% 0 no-repeat;*/
margin:0 auto 0 auto;
width:990px; text-align:left;
/*background-color: #80bd35  ;*/
overflow: auto;
	}
.options-panel {			
	font-size:11px;
	background-color: # FFF;
}
label.error, #err { float: none; color: red; vertical-align: top;  }
label, input { display:block; }
		input.text {  }

.options-panel label{
	width:250px;
}
#formulario{
position: absolute;
left: 50%;
top: 50%;
width: 300px;
height: 200px;
margin-top: -100px;
margin-left: -150px; 
overflow: auto;
border: 2px solid  #000;	
background: #CCC;
border:1px solid #fff;
-moz-border-radius: 6px;
box-shadow: 5px -9px 3px #000; 
/*filter:alpha(opacity=70);/* para Internet Explorer */
-moz-opacity:0.8;        /* para Firefox, Netscape, Mozilla */
-khtml-opacity:0.8;      /* para Khtml, version anterior de Safari */
opacity:0.8;             /* para Opera, Safari, Google Chrome */
/*text-shadow:  #fff 1px -1px 1px;*/
-webkit-box-shadow: 0 0 10px rgb(0,0,0);
-moz-box-shadow: 0 0 10px rgb(0,0,0);
box-shadow: 0 0 15px rgb(0,0,0);
}
#escudo{
 background: #fff url(views/images/fondo.jpg) top  no-repeat;
position:absolute;
text-align:center;
top: 0;
left: 50%;
width: 990px;
height:100%;
margin-left: -495px;

overflow: auto;
}
#abajo{	
background: #666 url(views/images/abajo.jpg) top left repeat-x; 
position:absolute;
text-align:center;
bottom:0;
left: 50%;
width: 990px;
height:50px;
margin-left: -495px;
overflow: auto;
font-size:11px;
color:#999;
}


	</style>
	
</head>
<body>
<div id="escudo"></div>
<div id="formulario">

<div class="options-panel"><div class="ui-widget-header ui-corner-all"> 
        <h3 align="center">Formulario de Ingreso:</h3></div><br>
<div id="err">Usuario y/o contrase&ntilde;a incorrectas</div>        
<ul id="messageBox"></ul> 
<form action="main.php?controller=login&action=identificarse" id="login" method="post">
  <p><span>Usuario: </span>
  <input name="usuario" type=text class="required text ui-widget-content ui-corner-all"  title="Nombre de usuario" id="usuario" style=" width:90%;margin-bottom:10px;  padding: .2em;" size="30">
<span>Contrase&ntilde;a: </span>
<input  name="password" type="password" class="required text ui-widget-content ui-corner-all"  title="Ingrese su Contraseña" id="password" style="width:90%; margin-bottom:10px; padding: .2em; float:" size="30"></p>
<hr></hr>
<input type="submit" value="Ingresar" id="entrar" class="login">
</form>

</div>

</div>
<div id="abajo"><br>
Copyright &copy; 2010 - JEISOFT  <br> <span style="color:#CCC; font-size:11px;">ESCUELA NAVAL MILITAR - BOLIVIA</span>
</div>
<!-- End demo-description -->
<script type='text/javascript'>
	QueryLoader.init();
</script>

</body>
</html>