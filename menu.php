<?php
session_start ();
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html lang="es" xml:lang="es">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>nav</title>
<link rel="stylesheet" type="text/css" href="views/media/style.css" />
<link rel="stylesheet" type="text/css" href="views/css/tipsy.css" />
<script src="views/js/jquery-1.4.2.min.js" type="text/javascript"></script>
<script type="text/javascript">
	function NavToggle(element) {
	// This gives the active tab its look
	var navid = $('#nav');
	var navs = $('li');
	var navsCount = navs.length;
	for(j = 0; j < navsCount; j++) {
		active = (navs[j].id == element.parentNode.id) ? "active" : "";
		navs[j].className = active;
	}
	// remove focus from top nav
	if(element) element.blur();
}
$(function(){
	
	//$('.tipsy2').tipsy({gravity: 'n', html: true});
});
	
	</script>
</head>

<body id="topMenu" class="ltr">

<div id="tocText"></div>
<div id="topbar">
<div id="topbar-container">
<div id="statusbar"><span id="buildText"></span> <span id="workText"></span></div>

<div id="supplementalNav"><img src="views/images/user.gif"  align="absmiddle" /><?php echo $_SESSION ['usuario'];?> |
<a href="main.php?controller=usuario&action=cambiarPassword" title="Cambiar su contrase&ntilde;a" target="main" id=""><img src="views/images/keys.gif"  align="absmiddle" /> Cambiar Contrase&ntilde;a</a> | 
<a href="index.php?a=9" target="main" title="Ayuda" ><img src="views/images/help.gif"  align="absmiddle" /> Ayuda </a> | 
<a href="logout.php" title="Cerrar Sesi&oacute;n" target="_top"><img src="views/images/Shutdown.gif"  align="absmiddle" /></img> Cerrar Sesi&oacute;n</a> | <span title="by Ivan Marcelo Ch. - ivanmarceloch_hp49@hotmail.com">1.0</span>
<!-- close #supplementalNav --></div>
</div>
</div>

<form name="menuForm" action="l4mnu.php" class="clear">
<div id="Navcontainer">
<div id="divNav">
<ul id="nav">
	<li id="limenu3" class="active"><a href="#menu3"
		onclick="new NavToggle(this); return false;">Inicio</a>
	<ul class="subnav" id="menu3">
		<li><a onclick="this.blur();" href="main.php?controller=usuario&action=bienvenida" title="Inicio"	target="main"><img src="views/images/gohome.png" width="24" height="24"	align="middle"></img> <br />
 Pag. Principal</a></li>		
	</ul>
	</li>
	<li id="limenu5"><a href="#menu5" onclick="new NavToggle(this); return false;">Partes de Sanci&oacute;n</a>
        <ul class="subnav" id="menu5">        
        <li><a onclick="this.blur();" href="main.php?controller=cadete&action=index" title="Listar Cadetes en cumplimiento regular de sus obligaciones" target="main"><img src="views/images/kexi.png "  align="absmiddle" /></img><br />Cadetes Regulares </a></li>
        <li><a onclick="this.blur();" href="main.php?controller=cadete&action=listar_gridCD" title="Lista todos los Caballeros Cadetes que estan en Consejo Disciplinario" target="main"><img src="views/images/consejo.png " align="absmiddle" /></img><br />Consejo Disciplinario</a></li>
		<li><a onclick="this.blur();" href="main.php?controller=cadete&action=bajasDisciplinarias" title="Cadetes que fueron dados de baja disciplinaria." target="main"><img src="views/images/baja.png" align="absmiddle" /><br />Bajas Disciplinarias</a></li>        

	</ul>
	</li>
<!-- 	<li id="limenu9"><a href="#menu9"
		onclick="new NavToggle(this); return false;">Metas</a>
        <ul class="subnav" id="menu9">
		<li><a onclick="this.blur();" href="main.php?controller=cadete&action=importar" target="main">Meta Gestion</a></li>
		<li><a onclick="this.blur();" href="index.php?a=112&amp;id=1" target="main">Meta Mensual</a></li>
	</ul>
	</li>
	 -->
	<li id="limenu2"><a href="#menu2" onclick="new NavToggle(this); return false;">Administraci&oacute;n</a>
	<ul class="subnav" id="menu2">
    <li><a onclick="this.blur();" href="main.php?controller=cadete&action=listar" target="main"><img src="views/images/cadete.png" align="absmiddle" /></img><br />Cadetes</a></li>
    <li><a onclick="this.blur();" href="main.php?controller=faltas&action=listar" title="Lista todas las Faltas" target="main"><img src="views/images/faltas.png" align="absmiddle" /></img><br />Faltas</a></li>        		
<?php 
if($_SESSION['prioridad']==3){
?>	<li><a onclick="this.blur();" href="main.php?controller=usuario&action=listarUsuarios" target="main"><img src="views/images/user.png" align="absmiddle" /></img><br />Usuarios</a></li>
	<li><a onclick="this.blur();" href="main.php?controller=gestion&action=index" target="main"><img src="views/images/user.png" align="absmiddle" /></img><br />Gestiones</a></li>
	<li><a onclick="this.blur();" href="views/mysqlbackup/" target="main"><img src="views/images/backup.png" align="absmiddle"></img><br />Backups</a></li>
<?php }?>
		
	</ul>
	</li>
	<li id="limenu1-1"><a href="#menu1-1"
		onclick="new NavToggle(this); return false;">Configuraci&oacute;n</a>
	<ul class="subnav" id="menu1-1">				
		<li><a onclick="this.blur();" href="main.php?controller=usuario&action=editarConfig" target="main"><img src="views/images/conf.png" align="middle"></img><br />Conf. Usuario</a></li>		
		<li><a onclick="this.blur();" href="main.php?controller=usuario&action=editarConfigGestion" target="main"><img src="views/images/conf.png" align="middle"></img><br />Conf. Gesti&oacute;n</a></li>
	</ul>
	</li>
	<li id="limenu1-2"><a href="#menu1-2"
		onclick="new NavToggle(this); return false;">Reportes</a>
	<ul class="subnav" id="menu1-2">
		<li><a onclick="this.blur();" href="main.php?controller=reportes&action=tss" target="main"><img src="views/images/TSS.png" align="middle"></img><br />NOMINA TSS</a></li>
		<li><a onclick="this.blur();" href="main.php?controller=reportes&action=tte" target="main"><img src="views/images/TTE.png" align="middle"></img><br />NOMINA TTE</a></li>
		<li><a onclick="this.blur();" href="index.php?a=13" target="main"><img src="views/images/ARESTOS.png" align="middle"></img><br />LISTA DE ARRESTOS</a></li>
		<li><a onclick="this.blur();" href="index.php?a=53" target="main"><img src="views/images/FRANCO.png" align="middle"></img><br />Lista de Francos</a></li>
        <li><a onclick="this.blur();" href="index.php?a=53" target="main">Calif. Mensual</a></li>
        <li><a onclick="this.blur();" href="index.php?a=53" target="main">Calif. Semestral</a></li>
        <li><a onclick="this.blur();" href="index.php?a=53" target="main">Calif. Anual</a></li>
	</ul>
	</li>
</ul>
</div>
</div>
</form>
<!-- can't find a better name :) should always be fixed -->
<div id="menuSplitter"></div>
</body>
</html>
