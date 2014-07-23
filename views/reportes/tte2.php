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

<link type="text/css" href="views/css/ui.jqgrid.css" rel="stylesheet" />
<script type="text/javascript" src="views/js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="views/js/jquery-ui-1.8.1.custom.min.js"></script>
<script type="text/javascript" src="views/js/i18n/grid.locale-sp.js"></script>
<script type="text/javascript" src="views/js/jquery.jqGrid.min.js"></script>
<script type="text/javascript">
var mydata = [];
	$(function() {
		//aplicar clase button
		$(".boton").button();
		//formulario modal para meta gestion		
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
	location.href="main.php?controller=reportes&action=tte_Excel";	  
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
//Extraemos los datos via  json

$.getJSON("main.php?controller=reportes&action=listjson_tte", function(dat){									
	$.each(dat, function(i,item){
	    var d = (mydata[i] = {});	
	    d['i'] = (item.i+1);				
		//d['id'] = item.id;        
		d['name'] = item.nombre;		
		d['tte'] = item.tte;
		d['curso'] = item.curso;
	  });
//CArgamos al jqgrid
	jQuery("#lista").jqGrid({ 
		data: mydata, 
		datatype: "local", 
		height: 400, 
		rowNum: 50,
		autowidth:true,
		rownumbers: true,  
		rowList: [10,20,30,50], 
		colNames:['id','Nombre Completo', 'Turnos sin Salida','curso'], 
		colModel:[ 
			{name:'i',index:'i', width:30}, 
			//{name:'id',index:'id', width:30, sorttype:"int"}, 			 
			{name:'name',index:'name', width:200, editable:true}, 
			{name:'tte',index:'tte', width:80, align:"right",sorttype:"int", editable:true},
			{name:'curso',index:'curso', width:80, align:"right", editable:true}  
			], 
		pager: "#pager", 
		viewrecords: true, 
		sortname: 'curso',
		selected: false, 
		grouping:true, 
		groupingView : { 
			groupField : ['curso'], 
			groupColumnShow : [false], 
			groupText : ['<b>{0}</b> - {1} Cadetes'] }, caption: "Lista de Cadetes con Turnos sin Salida" 
		}); 
	
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
 <strong>RELACION NOMINAL DE TURNOS TE TRABAJO EXTRA : <?php echo date("d/m/Y"); ?></strong> </p>
 </div>
</div>  
<div id="selec" align="right">
<button id="print" title="Imprimir Reporte">Imprimir</button>
<button id="vista" title="Ver vista antes de imprimir">Vista Previa</button>
<button id="pdf" title="Exportar reporte a formato pdf">Exportar a PDF</button>
<button id="excel" title="Exportar reporte a formato excel">Exportar a EXCEL</button>
</div>    
<!-- jqgrid -->
<table id="lista"></table> 
<div id="pager"></div> 

</body>
</html>
