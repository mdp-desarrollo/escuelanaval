<?php
session_start ();
?>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8" />
<title></title>
<link type="text/css" href="views/css/themes/<?php echo $_SESSION['theme'];?>/jquery-ui-1.8.1.custom.css"
	rel="stylesheet" />
<link type="text/css" href="views/css/themes/demos.css" rel="stylesheet" />
<link rel="stylesheet" href="views/css/themes/blue/style.css" type="text/css" media="screen" />

<link type="text/css" href="views/css/table.css" rel="stylesheet" />
<script type="text/javascript" src="views/js/jquery-1.4.2.js"></script>
<script type="text/javascript" src="views/js/jquery-ui-1.8.1.custom.min.js"></script>
<script type="text/javascript" src="views/ui/i18n/jquery.ui.datepicker-es.js"></script>
<script type="text/javascript" src="views/js/jquery.tablesorter.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#tabs").tabs();
		//aplicar clase button
		$(".boton").button();
		//formulario modal para meta gestion		
//datepicker
var pickerOpts = {
  		changeMonth: true,
		changeYear: true,
		yearRange: "-3:+30",
		dateFormat:"yy-mm-dd",
		showAnim: "slide"
		};
$("#fecha").datepicker(pickerOpts,$.datepicker.regional['es']);
//ordenar tabla
$(".folder").tablesorter(); 
//abrir listado de faltas en una ventana modal
$('#dialog_link').click(function(){
	var left=screen.availWidth;
	var top=screen.availHeight;
	left=(left-600)/2;
	top=(top-500)/2;
	var idc=$("#idc").val();
	var r=window.showModalDialog("main.php?controller=faltas&action=listar_grid&idc="+idc,"","center:0;dialogWidth:600px;dialogHeight:500px;scroll=yes;resizable=yes;status=yes;"+"dialogLeft:"+left+"px;dialogTop:"+top+"px");
if(r[0]!=null){
$("#falta").val(r[0]);
$("#clase").val(r[3]);
$("#idf").val(r[1]);
//verificamos si en cadete es reincidente a esta falta y recogemos los datos via json
var rei=[];
var idf=r[1];
var pd=r[2];
var idc=$("#idc").val();
var idg=$("#idg").val();
$.getJSON("main.php?controller=cadete&action=reincidencia&falta="+idf+"&idc="+idc+"&gestion="+idg, function(rein){									
	$.each(rein, function(i,item){	
		if(item.rmax!=""){
				$("#puntosD").val(item.puntosDemerito);
				$("#reincidencias").val(item.reinc);
				$("#tte").val(item.tte); 
				$("#tss").val(item.tss); 
				$("#asli").val(item.aSimpleLI); 
				$("#ased").val(item.aSimpleED); 
				$("#ascs").val(item.aSeveroCS);
				$("#assd").val(item.aSeveroSD);
				$("#pvac").val(item.perdidaVacacion);
		}
		else
			alert(""+item.obs); 				
			});
	 });
}
 });	
$("#selec button:first").button({
    icons: {
        primary: 'ui-icon-print'
    }
}).next().button({
    icons: {
    primary: 'ui-icon-search'
}
}).next().button({
    icons: {
        primary: 'ui-icon-document'
    }
}).next().button({
    icons: {
        primary: 'ui-icon-calculator'
    }
});
$('#print').click(function(){
	left=1;
	top=1;
	var s=window.showModalDialog("main.php?controller=reportes&action=imprimirTSS","","center:0;dialogWidth:10px;dialogHeight:10px;scroll=no;resizable=no;status=no;"+"dialogLeft:0px;dialogTop:0px");	  
});
$('#excel').click(function(){
	location.href="main.php?controller=reportes&action=exportExcel_TSS";	  
});
$('#pdf').click(function(){
	var left=screen.availWidth;
	var top=screen.availHeight;

	var idc=$("#idc").val();
	var s=window.open("main.php?controller=reportes&action=pdfTSS","","center:0;dialogWidth:"+left+"px;dialogHeight:"+top+"px;scroll=yes;resizable=yes;status=yes;");
});
$('#vista').click(function(){
	var left=screen.availWidth;
	var top=screen.availHeight;
	left=(left-1000)/2;
	top=(top-700)/2;
	var idc=$("#idc").val();
	var s=window.showModalDialog("main.php?controller=reportes&action=viewTSS","","center:0;dialogWidth:1000px;dialogHeight:700px;scroll=yes;resizable=yes;status=yes;"+"dialogLeft:"+left+"px;dialogTop:"+top+"px");	  
});
	});
	</script>
<style type="text/css">

		label { width: 150px; float: left; font-family:Arial, Helvetica, sans-serif;
			font-size:11px;
			text-align:right; 
		}
		label.error { float: none; color: red; padding-left: .5em; vertical-align: top; }
		p  { clear: both; height:12px; }
		table tr {height:0px;}
		input.text { margin-bottom:10px;  padding: .2em; }
		select.text { margin-bottom:9px;  padding: .1em;   }
		fieldset { padding:0; border:0; margin-top:25px; }
		h1 { font-size: 1.2em; margin: .6em 0;  }
		#users-contain,#metas { width: 100%; margin: 10px 0; }
		#users-contain,#metas table { margin: 1em 0; border-collapse: collapse; width: 100%; }
		#users-contain,#metas table td, #users-contain,#metas table th { border: 1px solid #eee; padding: .6em 10px; text-align: left; }
		.ui-dialog .ui-state-error { padding: .3em; }
		.validateTips { border: 1px solid transparent; padding: 0.3em; }
		#dialog_link {padding: .4em 1em .4em 20px;text-decoration: none;position: relative;}
		#dialog_link span.ui-icon {margin: 0 5px 0 0;position: absolute;left: .2em;top: 50%;margin-top: -8px;}
		table.folder tr{
			margin:18px 0 18px 0;
			padding:18px 0 18px 0;
		}
		#f{
	left:310px;
	position: relative;
		}
		#i{
	width:300px;
	position: absolute;
		}
		.toggler { width: 100%; }
		.link{
			text-decoration:none;}
		.link:hover{
		cursor:pointer;
		}

	</style>
</head>
<body>
<div class="ui-widget">
 <div class="ui-state-highlight ui-corner-all" style="margin:5px; padding: 0 .2em;"> 
 <p><span class="ui-icon ui-icon-folder-open" style="float: left;"></span>
 <strong>RELACION NOMINAL DE TURNOS SIN SALIDA HASTA <?php echo date("d/m/Y"); ?></strong> </p>
 </div>
</div>  
<div id="selec" align="right">
<button id="print" title="Imprimir Reporte">Imprimir</button>
<button id="vista" title="Ver vista antes de imprimir">Vista Previa</button>
<button id="pdf" title="Exportar reporte a formato pdf">Exportar a PDF</button>
<button id="excel" title="Exportar reporte a formato excel">Exportar a EXCEL</button>
</div>      
<div id="tabs">
<ul>
	<li><a href="#tabs-1">5to A&ntilde;o</a></li>
	<li><a href="#tabs-2">4to A&ntilde;o</a></li>
	<li><a href="#tabs-3">3er A&ntilde;o</a></li>
   	<li><a href="#tabs-4">2do A&ntilde;o</a></li>
   	<li><a href="#tabs-5">1er A&ntilde;o</a></li>
</ul>
<div id="tabs-1">

<table class="folder">
<thead><tr><th colspan="3"><b>5to A&ntilde;o</b></th></tr><tr><th style="width:10%;">Nro</th><th style="width:70%;">Nombre</th><th style="width:10%;">Turnos sin Salida (TSS)</th></tr></thead>
<tbody>
<?php 
$n=1;
while($q =$quinto->fetch(PDO::FETCH_OBJ)){ ?>
<tr><td><?php echo $n; ?></td><td><?php echo $q->nombre; ?></td><td><?php echo $q->tss; ?></td></tr>
<?php	
$n++;
} ?>
</tbody>
</table>
</div>
<div id="tabs-2">
<table class="folder">
<thead><tr><th colspan="3"><b>4to A&ntilde;o</b></th></tr><tr><th style="width:10%;">Nro</th><th style="width:70%;">Nombre</th><th style="width:10%;">Turnos sin Salida (TSS)</th></tr></thead>
<tbody>
<?php 
$n=1;
while($q =$cuarto->fetch(PDO::FETCH_OBJ)){ ?>
<tr><td><?php echo $n; ?></td><td><?php echo $q->nombre; ?></td><td><?php echo $q->tss; ?></td></tr>
<?php	
$n++;
} ?>
</tbody>
</table>
</div>
<div id="tabs-3">
<table class="folder">
<thead><tr><th colspan="3"><b>3er A&ntilde;o</b></th></tr><tr><th style="width:10%;">Nro</th><th style="width:70%;">Nombre</th><th style="width:10%;">Turnos sin Salida (TSS)</th></tr></thead>
<tbody>
<?php 
$n=1;
while($q =$tercero->fetch(PDO::FETCH_OBJ)){ ?>
<tr><td><?php echo $n; ?></td><td><?php echo $q->nombre; ?></td><td><?php echo $q->tss; ?></td></tr>
<?php	
$n++;
} ?>
</tbody>
</table>
</div>
<div id="tabs-4">
<table class="folder">
<thead><tr><th colspan="3"><b>2do A&ntilde;o</b></th></tr><tr><th style="width:10%;">Nro</th><th style="width:70%;">Nombre</th><th style="width:10%;">Turnos sin Salida (TSS)</th></tr></thead>
<tbody>
<?php 
$n=1;
while($q =$segundo->fetch(PDO::FETCH_OBJ)){ ?>
<tr><td><?php echo $n; ?></td><td><?php echo $q->nombre; ?></td><td><?php echo $q->tss; ?></td></tr>
<?php	
$n++;
} ?>
</tbody>
</table>
</div>
<div id="tabs-5">
<table class="folder">
<thead><tr><th colspan="3"><b>1er A&ntilde;o</b></th></tr><tr><th style="width:10%;">Nro</th><th style="width:70%;">Nombre</th><th style="width:10%;">Turnos sin Salida (TSS)</th></tr></thead>
<tbody>
<?php 
$n=1;
while($q =$primero->fetch(PDO::FETCH_OBJ)){ ?>
<tr><td><?php echo $n; ?></td><td><?php echo $q->nombre; ?></td><td><?php echo $q->tss; ?></td></tr>
<?php	
$n++;
} ?>
</tbody>
</table>
</div>
</div>
</body>
</html>