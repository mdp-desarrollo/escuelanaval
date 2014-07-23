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

//Extraemos los datos via  json
function cadetes(curso){
	mydata = [];
	var n=1;
	var i=0;
$.getJSON("main.php?controller=cadete&action=cadetesGestion&curso="+curso+"&gestion="+1, function(dat){	
	var n=dat.length;
	$.each(dat, function(i,item){
	    var d = (mydata[i] = {});	
	    d['id'] = item.id;				     
		d['nombre'] = item.nombre;		
		d['tss'] = item.nombre;
		d['curso'] = item.id;
		
	  });
	jQuery("#lista").jqGrid('setGridParam',{data: dat,rows:[], rowNum: n, page:1,records: 45,total:1,pager: "#pager" }).trigger("reloadGrid");	 
});
 
}
//CArgamos al jqgrid
	jQuery("#lista").jqGrid({ 
		data: mydata, 
		datatype: "local", 
		height: 400, 
		rowNum: 200,
		autowidth:true,
		rownumbers: true,  
		rowList: [10,20,30,200], 
		colNames:['id','Nombre Completo', 'Turnos sin Salida','curso'], 
		colModel:[ 
			{name:'id',index:'id', width:30, sorttype:"int"}, 
			//{name:'id',index:'id', width:30, sorttype:"int"}, 			 
			{name:'nombre',index:'nombre', width:200, editable:true}, 
			{name:'tss',index:'tss', width:80, align:"right",sorttype:"int", editable:true},
			{name:'curso',index:'curso', width:80, align:"right", editable:true}  
			], 
		 
		multiselect: true, 
		viewrecords: true, 
		sortname: 'id',
		caption: "Lista de Cadetes con Turnos sin Salida" 
		});
//
$('#dCurso').change(function(){
	var c=$(this).val();
	mydata = [];
	cadetes(c);
 
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
<div id="cadetes">
<form >
<p>
<label>Del Curso:</label><select name="dCurso" id="dCurso">
<option value="0">Seleccione</option>
<option value="1">Primero</option>
<option value="2">Segundo</option>
<option value="3">Tercero</option>
<option value="4">Cuarto</option>
<option value="5">Quinto</option>
</select> [Gestion Anterior]<?php echo ($_SESSION['gestion']-1)?>
</p>
<p>
<label>Al Curso:</label><select name="aCurso" id="aCurso">
<option value="1">Primero</option>
<option value="2">Segundo</option>
<option value="3">Tercero</option>
<option value="4">Cuarto</option>
<option value="5">Quinto</option>
</select> [Gestion Actual]<?php echo $_SESSION['gestion'];?>
</p>
</form>
<hr/>
</div>
<!-- jqgrid -->
<table id="lista"></table> 
<div id="pager"></div> 

</body>
</html>
