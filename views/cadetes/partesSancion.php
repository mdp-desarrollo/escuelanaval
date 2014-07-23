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
<script type="text/javascript" src="views/js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="views/js/jquery-ui-1.8.1.custom.min.js"></script>
<script type="text/javascript" src="views/ui/i18n/jquery.ui.datepicker-es.js"></script>
<script type="text/javascript" src="views/js/i18n/grid.locale-sp.js"></script>
<script type="text/javascript" src="views/js/jquery.jqGrid.min.js"></script>
<script type="text/javascript">
var idFaltaCometida=0;  //falta cometida por un caballero cadete
var mydata=[];
	$(function() {
		
		//Aplicar tabs
		var tabOpts = {
				  disabled: [3]
							//  ,   select:handleSelect
							 // ,collapsible: true
							  //,fx: [{ opacity: "toggle", duration: "fast" },   null] 
		};
		$("#tabs").tabs(tabOpts);
		

		//aplicar clase button
		$(".boton").button();
		//formulario modal para meta gestion		
//datepicker
var pickerOpts = {
  		changeMonth: true,
		changeYear: true,
		yearRange: "-3:+10",
		dateFormat:"dd/mm/yy",
		showAnim: "slide"
		};
$("#fecha,#fecha2").datepicker(pickerOpts,$.datepicker.regional['es']);
//ordenar tabla
 
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
 //Autocomplete
var datos=[];
$.getJSON("main.php?controller=faltas&action=sancionantes_json", function(dat){									
	$.each(dat, function(i,item){	datos[i] = item.sancionante; });
				 $("#tags").autocomplete({
							source: datos,
							minLength: 2
							});
		
	 });
//Editar parte de sancion
$('.edit').click(function(){
	$('#idfc').val($(this).attr('id'));
	$('#idf2').val($(this).attr('rel'));
	var td=$(this).parent('td').parent('tr').find('td:first');	
	$('#fecha2').val(td.text()); //fecha
	$('#parte2').val(td.next().next().next().text());
	$('#tags2').val(td.next().next().text()); //Sancionante
	$('#falta2').val(td.next().text());
	$('#clase2').val(td.next().next().next().next().text());
	$('#reincidencias2').val(td.next().next().next().next().next().text());
	$('#puntosD2').val(td.next().next().next().next().next().next().text());
	$('#tss2').val(td.next().next().next().next().next().next().next().text());
	$('#tte2').val(td.next().next().next().next().next().next().next().next().text());
	var tabOpts = {	disabled:[0,1,2], selected:3 };
	$("#tabs").tabs(tabOpts);
	var tabOpts = { disabled:[0,1,2] };
	$("#tabs").tabs(tabOpts);	
});
//Cancelar modificacion
$('#cancelar').click(function(){
	var tabOpts = {	disabled: [3], selected:0};
	$("#tabs").tabs(tabOpts);	
	var tabOpts = {	disabled: [3]};
	$("#tabs").tabs(tabOpts);
});
//Dialog-link2
$('#dialog_link2').click(function(){
	var left=screen.availWidth;
	var top=screen.availHeight;
	left=(left-600)/2;
	top=(top-500)/2;
	var idc=$("#idc").val();
	var r=window.showModalDialog("main.php?controller=faltas&action=listar_grid&idc="+idc,"","center:0;dialogWidth:600px;dialogHeight:500px;scroll=yes;resizable=yes;status=yes;"+"dialogLeft:"+left+"px;dialogTop:"+top+"px");
if(r[0]!=null){
$("#falta2").val(r[0]);
$("#clase2").val(r[3]);
$("#idf2").val(r[1]);
//verificamos si en cadete es reincidente a esta falta y recogemos los datos via json
var rei=[];
var idf=r[1];
var pd=r[2];
var idc=$("#idc").val();
var idg=$("#idg").val();
$.getJSON("main.php?controller=cadete&action=reincidencia&falta="+idf+"&idc="+idc+"&gestion="+idg, function(rein){									
	$.each(rein, function(i,item){	
		if(item.rmax!=""){
				$("#puntosD2").val(item.puntosDemerito);
				$("#reincidencias2").val(item.reinc);
				$("#tte2").val(item.tte); 
				$("#tss2").val(item.tss); 
				$("#asli2").val(item.aSimpleLI); 
				$("#ased2").val(item.aSimpleED); 
				$("#ascs2").val(item.aSeveroCS);
				$("#assd2").val(item.aSeveroSD);
				$("#pvac2").val(item.perdidaVacacion);
		}
		else
			alert(""+item.obs); 				
			});
	 });
}
 });	
$('#vista').click(function(){
	var left=screen.availWidth;
	var top=screen.availHeight;
	left=(left-1000)/2;
	top=(top-700)/2;
	var idc=$("#idc").val();
	var s=window.showModalDialog("main.php?controller=cadete&action=vistaPrevia&idc="+idc,"","center:0;dialogWidth:1000px;dialogHeight:700px;scroll=yes;resizable=yes;status=yes;"+"dialogLeft:"+left+"px;dialogTop:"+top+"px");	  
});
//Eliminar una falta
$('.eliminar').click(function(){
	idFaltaCometida=$(this).attr('id');
	var faltaCometida=$(this).parent('td').parent('tr').find('td:first').next().text();
	var numeroParte=$(this).parent('td').parent('tr').find('td:first').next().next().next().text();
	$('#dialog-confirm p').html("<b>ESTA USTED SEGURO DE ELIMINAR LA FALTA COMETIDA:<BR/></b>"+faltaCometida+"<br/><b># DE PARTE: </b>"+numeroParte);
	$('#dialog-confirm').dialog('open');
	
});



//confirmacion para elimianr
$("#dialog-confirm").dialog({
			autoOpen: false,
			resizable: true,
			height:160,
			width:500,
			hide: 'clip',			
			modal: true,
			buttons: {
				'Eliminar Falta Cometida': function() {
					//$(this).dialog('close');
					var idc=$('#idc').val();
					location.href="main.php?controller=faltas&action=eliminarFaltaCometida&idfc="+idFaltaCometida+"&idc="+idc;
				},
				'Cancelar': function() {
					$(this).dialog('close');
				}
			}
});
//REGISTRAR CUMPLIMIENTO DE TSS
$("#dialog-registrarTSS").dialog({
			autoOpen: false,
			resizable: true,
			height:200,
			width:500,
			hide: 'fold',			
			modal: true,
			buttons: {
				'REGISTRAR TSS': function() {
					//$(this).dialog('close');	
					var idc=$('#idc').val();
					var tssC=$('#tssC').val();
					var tssCC=$('#tssCC').val();
					if(parseInt(tssC)>=parseInt(tssCC)){
						location.href="main.php?controller=faltas&action=registrarTSS&idfc="+idFaltaCometida+"&idc="+idc+"&tssC="+tssCC;
						}
					else{
					alert("Los TSS cumplidos deben de ser iguales o menores al que debe...");

					}
				},
				'Cancelar': function() {
					$(this).dialog('close');
				}
			}
});
$('.tss').click(function(){
		idFaltaCometida=$(this).attr('id');
		$('#idfc2').val($(this).attr('id'));
		var tssc=$(this).parent('td').parent('tr').find('td:eq(7)').text();
		$('#tssC').val(tssc);
		if(parseInt(tssc)>0){
		$('#tssCC').val($(this).parent('td').parent('tr').find('td:eq(9)').text());
		$('#faltaTSS').text($(this).parent('td').parent('tr').find('td:eq(1)').text());
		$('#dialog-registrarTSS').dialog('open');
		$('#tssCC').focus();
		}
		else{
		alert("Los TSS para esta falta es igual a 0!!!");
		}
	
});
//REGISTRAR CUMPLIMIENTO DE TTE
$("#dialog-registrarTTE").dialog({
			autoOpen: false,
			resizable: true,
			height:200,
			width:500,
			hide: 'fold',			
			modal: true,
			buttons: {
				'REGISTRAR TSS': function() {
					//$(this).dialog('close');
	var idc=$('#idc').val();
	var tteC=$('#tteC').val();
	var tteCC=$('#tteCC').val();
	if(parseInt(tteC)>=parseInt(tteCC)){
		location.href="main.php?controller=faltas&action=registrarTTE&idfc="+idFaltaCometida+"&idc="+idc+"&tteC="+tteCC;
		}
	else{
	alert("Los TTE cumplidos deben de ser iguales o menores al que debe...");

	}

				},
				'Cancelar': function() {
					$(this).dialog('close');
				}
			}
});
$('.tte').click(function(){
	idFaltaCometida=$(this).attr('id');
	$('#idfc3').val($(this).attr('id'));
	var tssc=$(this).parent('td').parent('tr').find('td:eq(8)').text();
	$('#tteC').val(tssc);
	if(parseInt(tssc)>0){
	$('#tteCC').val($(this).parent('td').parent('tr').find('td:eq(10)').text());
	$('#faltaTTE').text($(this).parent('td').parent('tr').find('td:eq(1)').text());
	$('#dialog-registrarTTE').dialog('open');
	$('#tteCC').focus();
	}
	else{
	alert("Los TTE para esta falta es igual a 0!!!");
	}

});
//Extraemos los datos via  json

$.getJSON("main.php?controller=reportes&action=listjson_tss", function(dat){									
	$.each(dat, function(i,item){
	    var d = (mydata[i] = {});	
	    d['i'] = (item.i+1);				
		//d['id'] = item.id;        
		d['name'] = item.nombre;		
		d['tss'] = item.tss;
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
			{name:'tss',index:'tss', width:80, align:"right",sorttype:"int", editable:true},
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
		select.text { margin-bottom:9px;  padding: .1em; }
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
	table.folder tr th{
		cursor:pointer;			
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
  <!-- jqgrid -->
<table id="lista"></table> 
<div id="pager"></div> 
<div class="ui-widget">
 <div class="ui-state-highlight ui-corner-all" style="margin:5px; padding: 0 .2em;"> 
 <p><span class="ui-icon ui-icon-person" style="float: left;"></span>
 <strong><?php echo $nombre ." / COD: ".$codigo ." / Curso: ".$curso." año / Puntos Semestre: ". $puntosSemestre; ?></strong> </p>
 </div>
</div> 
    

<div id="tabs">
<ul>
	<li><a href="#tabs-1">Partes de Sancion(<?php echo $_SESSION['gestion']?>)</a></li>
	<li><a href="#tabs-2">Registrar Parte Sancion</a></li>
   	<li><a href="#tabs-4">Registrar Observaciones</a></li>
   	<li><a href="#tabs-3">Editar Parte Sancion</a></li>
</ul>
<div id="tabs-1">
<p><a title="Imprimir Registro" class="link" id="vista">Vista Previa/Imprimir <img src="views/images/printer.gif" width="16" height="16" alt="imprimir" /></a></p>

<div id="container">
 




<table class="folder">
<thead>
<tr class="ui-widget-content ui-corner-all">
<th class="ui-widget-header">FECHA</th><th class="ui-widget-header">FALTA COMETIDA</th><th class="ui-widget-header">SANCIONANTE</th><th class="ui-widget-header">Nº Parte</th><th class="ui-widget-header">Clase</th><th class="ui-widget-header">Reinc.</th><th class="ui-widget-header ">PDD</th><th class="ui-widget-header">TSS</th><th class="ui-widget-header">TTE</th><th class="ui-widget-header">TSSC</th><th class="ui-widget-header">TTEC</th><th class="ui-widget-header">Ops</th>
</tr>
</thead>
<tbody>
<?php
$pd=0;
$tss=0;
$tte=0;
$ttec=0;
$tssc=0;
while($f=$faltas->fetch ( PDO::FETCH_OBJ )){
$pd+=$f->partesDemerito;
$tss+=$f->tss;
$tte+=$f->tte;
$tee+=intval($f->tte);
$tssc+=intval($f->tssc);
$ttec+=intval($f->ttec);
?>
<tr>
<td><?php $fecha=explode("-",$f->fechaFalta);	echo $fecha[2]."/".$fecha[1]."/".$fecha[0]; ?></td>
<td><?php echo $f->falta; ?></td>
<td><?php echo $f->sancionante; ?></td>
<td><?php echo $f->numeroParte; ?></td>
<td><?php echo $f->clase; ?></td>
<td><?php echo $f->reincidencia; ?></td>
<td><?php echo $f->partesDemerito; ?></td>
<td><?php echo $f->tss; ?></td>
<td><?php echo $f->tte; ?></td>
<td><?php echo $f->tssc; ?></td>
<td><?php echo $f->ttec; ?></td>
<td>
<a href="#" id="<?php echo $f->idFaltaCometida;?>" style="border:none;" class="tss" rel="<?php echo $f->idFalta; ?>" ><img style="border:none;" src="views/images/tss.gif" title="Registrar Cumplimiento de TSS"></a>
<a href="#" id="<?php echo $f->idFaltaCometida;?>" style="border:none;" class="tte" rel="<?php echo $f->idFalta; ?>" ><img style="border:none;" src="views/images/tte.gif" title="Registrar Cumplimiento de TTE"></a>
<a href="#" id="<?php echo $f->idFaltaCometida;?>" style="border:none;" class="edit" rel="<?php echo $f->idFalta; ?>" ><img style="border:none;" src="views/images/edit.gif" title="Editar Falta"></a><a href="#" id="<?php echo $f->idFaltaCometida;?>" style="border:none;" class="eliminar" rel="<?php echo $f->idFalta; ?>" ><img style="border:none; cursor:pointer;" src="views/images/recycle.png" title="Eliminar Falta"/></a></td>
</tr>
<?php	} ?>
</tbody>
<tfoot>
<tr style="font-weight:bold;">
<td colspan="6" style="text-align:right; font-weight:bold;">Totales Acumulados</td>
<td><?php echo $pd; ?></td>
<td><?php echo $tss; ?></td>
<td><?php echo $tte; ?></td>
<td><?php echo $tssc; ?></td>
<td><?php echo $ttec; ?></td>
</tr>
<tr>
<td colspan="5" rowspan="2">Observaciones:</td>
<td colspan="2" style="text-align:center" ><b>PDAS</b></td>
<td colspan="2" style="text-align:center"><b>FACTOR</b></td>
<td colspan="2" style="text-align:center"><b>NOTA SEM.</b></td>
</tr>
<tr>

<td colspan="2" style="font-size:14px; text-align:center"><b><?php echo $pd; ?></b></td>
<td colspan="2" style="font-size:13px; text-align:center" ><?php echo $coeficiente;?></td>
<td colspan="2" style="font-size:14px; text-align:center" ><b><?php echo 100-(($pd*$coeficiente)/5);?></b></td>
</tr>
</tfoot>
</table>

</div>
</div>
<!--parte de Sancin-->
<div id="tabs-2" >
<div class="toggler">
	<div class="ui-widget-content ui-corner-all">
		<h1 class="ui-widget-header ui-corner-all" align="center">Formulario de Registro</h1>		                
	<form action="main.php?controller=faltas&action=registrarFalta" method="post">
	    <input type="hidden" value="<?php echo $idc;?>" id="idc" name="idc">
		<input type="hidden" value="<?php echo $_SESSION['idgestion']; ?>" id="idg" name="gestion">
        <input type="hidden" value="" id="idf" name="idf">
		<p>
        <label for="fecha"><b>Fecha:</b></label><input type="text" name="fecha" id="fecha" class="text ui-widget-content ui-corner-all">
        </p>
        <p>
        <label for="parte"><b>Numero de parte:</b></label>
		<input type="text" name="parte" id="parte" value="" class="text ui-widget-content ui-corner-all" />
        </p>
        <div class="ui-widget">
		<label for="tags"><b>Sancionado por: </b></label>
		<input id="tags" name="tags" class="text ui-widget-content ui-corner-all" size="60"  />
		</div>
        <p>
        <label for="falta"><a href="#" id="dialog_link" title="Escojer Falta" ><span class="ui-icon ui-icon-newwin"></span>Falta</a>: </label>
		<input type="text" name="falta" id="falta" style="width:600px;" class="text ui-widget-content ui-corner-all" disabled="disabled" />
        </p>
        <table>
        <tr>
        <td>
        <p>
        <label for="clase"><b>Clase:</b></label>
        <input type="text" name="clase" id="clase" size="6" class="text ui-widget-content ui-corner-all" disabled />
        </p>
        </td><td>
        <p>
        <label for="puntosD">Arresto Simple (LI):</label>
        <input type="text" name="asli" id="asli" size="6" class="text ui-widget-content ui-corner-all"  />
        </p>
        </td></tr>
        <tr>
        <td>
        <p>
        <label for="reincidencias"><b>Reincidencia:</b></label>
		<input type="text" name="reincidencias" id="reincidencias" size="6" class="text ui-widget-content ui-corner-all"  /><b>R</b>
        </p>
        </td><td>
        <p>
        <label for="puntosD">Arresto Simple (ED):</label>
        <input type="text" name="ased" id="ased" size="6" class="text ui-widget-content ui-corner-all"  />
        </p>
        </td></tr>
        <tr>
        <td>
        <p>
        <label for="puntosD"><b>Puntos Demerito:</b></label>
        <input type="text" name="puntosD" id="puntosD" size="6" class="text ui-widget-content ui-corner-all"  />Pts.
        </p>
        </td><td>
        <p>
        <label for="puntosD">Arresto Severo (CS):</label>
        <input type="text" name="ascs" id="ascs" size="6" class="text ui-widget-content ui-corner-all"  />
        </p>
        </td></tr>
        <tr><td>
  		<p>
        <label for="puntosD"><b>Trabajos Tiempo Extra:</b></label>
        <input type="text" name="tte" id="tte" size="6" class="text ui-widget-content ui-corner-all"  />
        </p>
        </td><td>
        <p>
        <label for="puntosD">Arresto Severo (SD):</label>
        <input type="text" name="assd" id="assd" size="6" class="text ui-widget-content ui-corner-all"  />
        </p>
        </td></tr>
        <tr><td>
  		<p>
        <label for="puntosD"><b>Turnos sin Salida:</b></label>
        <input type="text" name="tss" id="tss" size="6" class="text ui-widget-content ui-corner-all"  />Turnos
        </p>
        </td><td>
        <p>
        <label for="puntosD">Perdida de Vacación:</label>
        <input type="text" name="pvac" id="pvac" size="6" class="text ui-widget-content ui-corner-all"  />d&iacute;as
        </p>
        </td></tr>        
        </table>
        <hr/>
        <label for="boton"></label><input type="submit" value="Registrar Parte de Sanción" class="boton"><input type="reset" value="Resetear campos" class="boton">
	</form>
	</div>
</div>
</div>
<div id="tabs-4">
<p>
</p>
</div>
<!-- Editar una parte de sancion -->
<div id="tabs-3" >
<div class="toggler">
	<div class="ui-widget-content ui-corner-all">
		<h1 class="ui-widget-header ui-corner-all" align="center">Formulario de Registro</h1>		                
	<form action="main.php?controller=faltas&action=editarFalta" method="post">
	    <input type="hidden" value="<?php echo $idc;?>" id="idc2" name="idc">
		<input type="hidden" value="<?php echo $_SESSION['idgestion']; ?>" id="idg2" name="gestion">
        <input type="hidden" value="" id="idf2" name="idf">
        <input type="hidden" value="" id="idfc" name="idfc">
		<p>
        <label for="fecha2"><b>Fecha:</b></label><input type="text" name="fecha" id="fecha2" class="text ui-widget-content ui-corner-all">
        </p>
        <p>
        <label for="parte2"><b>Numero de parte:</b></label>
		<input type="text" name="parte" id="parte2" value="" class="text ui-widget-content ui-corner-all" />
        </p>
        <div class="ui-widget">
		<label for="tags2"><b>Sancionado por: </b></label>
		<input id="tags2" name="tags" class="text ui-widget-content ui-corner-all" size="60"  />
		</div>
        <p>
        <label for="falta2"><a href="#" id="dialog_link2" title="Escojer Falta" ><span class="ui-icon ui-icon-newwin"></span>Falta</a>: </label>
		<input type="text" name="falta" id="falta2" style="width:600px;" class="text ui-widget-content ui-corner-all" disabled="disabled" />
        </p>
        <table>
        <tr>
        <td>
        <p>
        <label for="clase2"><b>Clase:</b></label>
        <input type="text" name="clase" id="clase2" size="6" class="text ui-widget-content ui-corner-all" disabled />
        </p>
        </td><td>
        <p>
        <label for="puntosD2">Arresto Simple (LI):</label>
        <input type="text" name="asli" id="asli2" size="6" class="text ui-widget-content ui-corner-all"  />
        </p>
        </td></tr>
        <tr>
        <td>
        <p>
        <label for="reincidencias2"><b>Reincidencia:</b></label>
		<input type="text" name="reincidencias" id="reincidencias2" size="6" class="text ui-widget-content ui-corner-all"  /><b>R</b>
        </p>
        </td><td>
        <p>
        <label for="ased2">Arresto Simple (ED):</label>
        <input type="text" name="ased" id="ased2" size="6" class="text ui-widget-content ui-corner-all"  />
        </p>
        </td></tr>
        <tr>
        <td>
        <p>
        <label for="puntosD"><b>Puntos Demerito:</b></label>
        <input type="text" name="puntosD" id="puntosD2" size="6" class="text ui-widget-content ui-corner-all"  />Pts.
        </p>
        </td><td>
        <p>
        <label for="puntosD">Arresto Severo (CS):</label>
        <input type="text" name="ascs" id="ascs2" size="6" class="text ui-widget-content ui-corner-all"  />
        </p>
        </td></tr>
        <tr><td>
  		<p>
        <label for="puntosD"><b>Trabajos Tiempo Extra:</b></label>
        <input type="text" name="tte" id="tte2" size="6" class="text ui-widget-content ui-corner-all"  />
        </p>
        </td><td>
        <p>
        <label for="puntosD">Arresto Severo (SD):</label>
        <input type="text" name="assd" id="assd2" size="6" class="text ui-widget-content ui-corner-all"  />
        </p>
        </td></tr>
        <tr><td>
  		<p>
        <label for="puntosD"><b>Turnos sin Salida:</b></label>
        <input type="text" name="tss" id="tss2" size="6" class="text ui-widget-content ui-corner-all"  />Turnos
        </p>
        </td><td>
        <p>
        <label for="puntosD">Perdida de Vacación:</label>
        <input type="text" name="pvac" id="pvac2" size="6" class="text ui-widget-content ui-corner-all"  />d&iacute;as
        </p>
        </td></tr>        
        </table>
        <hr/>
        <label for="boton"></label><input type="submit" value="Modificar" class="boton"><input id="cancelar" type="button" value="Cancelar" class="boton">
	</form>
	</div>
</div>
</div>
</div>
<!-- Elimiar una falta cometida -->
<div id="dialog-confirm" title="Eliminar/Borrar Falta Cometida">
	<p>></p>
</div>
<!-- Registrar cumplimiento de una falta cometida -->
<div id="dialog-registrarTSS" title="Registrar cumplimiento de sanci&oacute;n">
	<form >
	<input name="idfc" id="idfc2" type="hidden"/>
	<P id="faltaTSS"></P>
	<p>
	TSS:
	<input type="text" value="" id="tssC" class="text ui-widget-content ui-corner-all" disabled />
	</p>
	<p>
	Cumplio:<input type="text" name="tss" value="" id="tssCC" class="text ui-widget-content ui-corner-all" />(TSS)
	</p>
	</form>
	
</div>
<div id="dialog-registrarTTE" title="Registrar">
	<form action="main.php?controller=faltas&action=registrarTSS">
	<input name="idfc" id="idfc3" type="hidden"/>
	<P id="faltaTTE"></P>
	<p>
	TSS:
	<input type="text" value="" id="tteC" class="text ui-widget-content ui-corner-all" disabled />
	</p>
	<p>
	Cumplio:<input type="text" name="tte" value="" id="tteCC" class="text ui-widget-content ui-corner-all" />(TSS)
	</p>
	</form>
	
</div>
</body>
</html>