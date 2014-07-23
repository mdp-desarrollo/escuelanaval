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
<script type="text/javascript" src="views/js/jquery.validate.js"></script>
<script type="text/javascript">
var idFaltaCometida=0;  //falta cometida por un caballero cadete
	$(function() {
		
		//Aplicar tabs
		var tabOpts = {disabled: [2]};
		$("#tabs").tabs(tabOpts);
		//aplicar clase button
		$(".boton").button({
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
	//Verificamos si la falta cometida es grave
	if(r[3]=='A'||r[3]=='A*'){		
		$("#idRegistro").val($('#idc').val());
		$("#idFaltaCometida").val(r[1]);
		$('#dialog-confirmacion').dialog('open');
		$('#FaltaCometida').html(r[0]+'<br><p><b>Clase: </b>'+r[3]+'</p>');
	}
	else{
$("#falta").val(r[0]);
$("#faltica").val(r[0]);
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
	var td=$(this).parent('ul').parent('td').parent('tr').find('td:first');	
	$('#fecha2').val(td.text()); //fecha
	$('#parte2').val(td.next().next().next().text());
	$('#tags2').val(td.next().next().text()); //Sancionante
	$('#falta2').val(td.next().text());
	$('#clase2').val(td.next().next().next().next().text());
	$('#reincidencias2').val(td.next().next().next().next().next().text());
	$('#puntosD2').val(td.next().next().next().next().next().next().text());
	$('#tss2').val(td.next().next().next().next().next().next().next().text());
	$('#tte2').val(td.next().next().next().next().next().next().next().next().text());
	var tabOpts = {	disabled:[0,1], selected:2 };
	$("#tabs").tabs(tabOpts);
	var tabOpts = { disabled:[0,1] };
	$("#tabs").tabs(tabOpts);	
});
//Cancelar modificacion
$('#cancelar').click(function(){
	var tabOpts = {	disabled: [2], selected:0};
	$("#tabs").tabs(tabOpts);	
	var tabOpts = {	disabled: [2]};
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
$('#print').click(function(){
	var left=screen.availWidth;
	var top=screen.availHeight;
	left=(left-1000)/2;
	top=(top-700)/2;
	var idc=$("#idc").val();
	var s=window.showModalDialog("main.php?controller=cadete&action=vistaPrevia&idc="+idc,"","center:0;dialogWidth:1000px;dialogHeight:700px;scroll=yes;resizable=yes;status=yes;"+"dialogLeft:"+left+"px;dialogTop:"+top+"px");	  
});
//exportar a Excel
$('#excel').click(function(){
		var idc=$("#idc").val();
		var idg=$("#idg").val();
		location.href="main.php?controller=cadete&action=partesSancion_excel&idc="+idc+"&gestion="+idg;
	
});
$('#pdf').click(function(){
	var idc=$("#idc").val();
	var idg=$("#idg").val();
	location.href="main.php?controller=cadete&action=partesSancion_pdf&idc="+idc+"&gestion="+idg;

});
//Eliminar una falta
$('.eliminar').click(function(){
	idFaltaCometida=$(this).attr('id');
	var faltaCometida=$(this).parent('ul').parent('td').parent('tr').find('td:first').next().text();
	var numeroParte=$(this).parent('ul').parent('td').parent('tr').find('td:first').next().next().next().text();
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
$('#nuevaFalta td:odd').hide();
$('.folder tbody tr:odd').addClass('odd');
//Confirmacion a consejo disciplinario
$("#dialog-confirmacion").dialog({
	autoOpen: false,
	resizable: true,
	height:220,
	width:500,
	hide: 'fold',
	modal: true,
	buttons: {
		'OK': function() {
		$('#formEnviarConsejo').submit()
			//$(this).dialog('close');
		},
		Cancel: function() {
			$(this).dialog('close');
		}
	}
});
//Validacion Simple
$('#ingresarFalta').validate();
$('#formEditarFalta').validate();
$('#formEnviarConsejo').validate();

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
		#dialog_link,#dialog_link2 {padding: .4em 1em .4em 20px;text-decoration: none;position: relative; border:1px solid #39C;}
		#dialog_link span.ui-icon {margin: 0 5px 0 0;position: absolute;left: .2em;top: 50%;margin-top: -8px;}
		#dialog_link2 span.ui-icon {margin: 0 5px 0 0;position: absolute;left: .2em;top: 50%;margin-top: -8px;}
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
.ctss{
	background-color:#E4ECD5;
}
.cpd{
	background-color:#FEDFC2;
}
.ctte{
	background-color:#C4E3FD;
}
.ctssf{
	background-color:#BDD099;
}
.cpdf{
	background-color:#FDB777;
}
.cttef{
	background-color:#86C7FB;
}
.notaFinal{
	font-weight:bolder;
	font-size:36px;
}
ul#icons {margin: 0; padding: 0;}
ul#icons li {margin: 1px; position: relative; padding: 2px 0; cursor: pointer; float: left;  list-style: none;}
ul#icons span.ui-icon {float: left; margin: 0 2px;}

	</style>
</head>
<body>
<div class="ui-widget">
 <div class="ui-state-highlight ui-corner-all" style="margin:0px; padding: 0 0em;"> 
 <!-- Fotografia -->
 <div style="height:38px; width:55px;"><p style="height:38px; padding:0px 0px;">
 <?php 
$foto="sinFoto.jpg";
if(strlen($fotografia)>0){
$foto=$fotografia;
}
?>
<img style="position:absolute; left: 10px; top: 8px; border:1px solid #CCC;" width="50" height="55" alt="" src="views/fotografias/<?php echo $foto;?>"></p></div>
<div style="width:400px; left:72px; position:absolute; top: 11px;">

<strong style="color:#333;"><span style="font-size:16px; color: #1D76B8;"><?php echo $nombre ."</span> <br/>CODIGO: ".$codigo ." / CURSO: ".$curso."/ PUNTOS SEMESTRE: ". $puntosSemestre; ?></strong>
	</div>
 </div>
</div>
         
<div id="tabs">
<ul>
	<li><a href="#tabs-1">Partes de Sanci&oacute;n(<?php echo $_SESSION['gestion']?>)</a></li>
	<li><a href="#tabs-2">Registrar nuevo Parte de Sanci&oacute;n</a></li>
   	<!-- <li><a href="#tabs-4">Registrar Observaciones</a></li> -->
   	<li><a href="#tabs-3">Modificar Parte de Sanci&oacute;n</a></li>
</ul>
<div id="tabs-1">
<div id="selec" align="right">
<button id="print" title="Imprimir Reporte">Imprimir</button>
<button id="vista" title="Ver vista antes de imprimir">Vista Previa</button>
<button id="pdf" title="Exportar reporte a formato pdf">Exportar a PDF</button>
<button id="excel" title="Exportar reporte a formato excel">Exportar a EXCEL</button>
</div><hr/>



<table class="folder">
<thead>
<tr class="ui-widget-content ui-corner-all">
<th class="ui-widget-header">FECHA</th><th class="ui-widget-header">FALTA COMETIDA</th><th class="ui-widget-header">SANCIONANTE</th><th class="ui-widget-header">Nº Parte</th><th class="ui-widget-header">Clase</th><th class="ui-widget-header">Reinc.</th><th class="ui-widget-header ">PDD</th><th class="ui-widget-header">TSS</th><th class="ui-widget-header">TTE</th><th class="ui-widget-header">TSSC</th><th class="ui-widget-header">TTEC</th><th colspan="2" class="ui-widget-header">OPCIONES</th>
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
<td class="cpd"><?php echo $f->partesDemerito; ?></td>
<td class="ctss"><?php echo $f->tss; ?></td>
<td class="ctte"><?php echo $f->tte; ?></td>
<td class="ctss"><?php echo $f->tssc; ?></td>
<td class="ctte"> <?php echo $f->ttec; ?></td>
<td>
<a href="#" id="<?php echo $f->idFaltaCometida;?>" style="border:none;" class="tss ctss" rel="<?php echo $f->idFalta; ?>" ><img style="border:none;" src="views/images/tss.gif" title="Registrar Cumplimiento de TSS"></a>
<a href="#" id="<?php echo $f->idFaltaCometida;?>" style="border:none;" class="tte ctte" rel="<?php echo $f->idFalta; ?>" ><img style="border:none;" src="views/images/tte.gif" title="Registrar Cumplimiento de TTE"></a>
</td>
<td>
<ul id="icons" class="ui-widget ui-helper-clearfix">
<li class="edit ui-state-default ui-corner-all" rel="<?php echo $f->idFalta; ?>" id="<?php echo $f->idFaltaCometida;?>" title="Editar falta"><span class="ui-icon ui-icon-pencil"></span></li>
<li class="eliminar ui-state-default ui-corner-all" title="Eliminar Falta" rel="<?php echo $f->idFalta; ?>" id="<?php echo $f->idFaltaCometida;?>"><span  class="ui-icon ui-icon-trash"></span></li>
</ul>
</td>
</tr>
<?php	} ?>
</tbody>
<tfoot>
<tr style="font-weight:bold;">
<td colspan="6" style="text-align:right; font-weight:bold;">TOTALES ACUMULADOS</td>
<td class="cpdf"><?php echo $pd; ?></td>
<td class="ctssf" ><?php echo $tss; ?></td>
<td class="cttef"><?php echo $tte; ?></td>
<td class="ctssf"><?php echo $tssc; ?></td>
<td class="cttef"><?php echo $ttec; ?></td>
<td colspan="2"></td>
</tr>
<tr>
<td colspan="5" rowspan="2"></td>
<td colspan="2" style="text-align:center" ><b>PDAS</b></td>
<td colspan="2" style="text-align:center"><b>FACTOR</b></td>
<td colspan="2" style="text-align:center"><b>NOTA SEM.</b></td>
</tr>
<tr>
<td colspan="2" style="font-size:14px; text-align:center"><b><?php echo $pd; ?></b></td>
<td colspan="2" style="font-size:13px; text-align:center" ><?php echo $coeficiente;?></td>
<td class="notaFinal" colspan="2" style="font-size:22px; text-align:center" ><b><?php echo 100-(($pd*$coeficiente)/5);?></b></td>
</tr>
</tfoot>
</table>


</div>
<!--parte de Sancion-->
<div id="tabs-2" >
<div class="toggler">
	<div class="ui-widget-content ui-corner-all">
		<h1 class="ui-widget-header ui-corner-all" align="center">Formulario de Registro de Faltas</h1>		                
	<form action="main.php?controller=faltas&action=registrarFalta" method="post" id="ingresarFalta">
	    <input type="hidden" value="<?php echo $idc;?>" id="idc" name="idc">
		<input type="hidden" value="<?php echo $_SESSION['idgestion']; ?>" id="idg" name="gestion">
        <input type="hidden" value="" id="idf" name="idf">
		<p>
        <label for="fecha"><b>Fecha:</b></label><input type="text" name="fecha" id="fecha" title="Ingrese fecha de la falta cometida" class="required text ui-widget-content ui-corner-all">
        </p>
        <p>
        <label for="parte"><b>N&uacute;mero de parte:</b></label>
		<input type="text" name="parte" id="parte" title="Ingrese el numero de parte" class="required number text ui-widget-content ui-corner-all" />
        </p>
        <div class="ui-widget">
		<label for="tags"><b>Sancionado por: </b></label>
		<input id="tags" name="tags" title="Ingrese sancionante" class="required text ui-widget-content ui-corner-all" size="60"  />
		</div>
        <p>
        <label for="falta"><a href="#" id="dialog_link" title="Escojer Falta" ><span class="ui-icon ui-icon-newwin"></span>Falta</a>: </label>        
		<input type="text" name="falta" id="falta" title="Falta" style="width:600px;" class="required text ui-widget-content ui-corner-all" disabled/><input type="hidden" id="faltica" title="Falta" class="required"/>
        </p>        
        <p>
        <label for="clase"><b>Clase:</b></label>
        <input type="text" name="clase" id="clase" size="6" class="text ui-widget-content ui-corner-all"  />
        </p>
        <p>
        <label for="reincidencias"><b>Reincidencia:</b></label>
		<input type="text" name="reincidencias" id="reincidencias" size="6" class="text ui-widget-content ui-corner-all"  /><b>R</b>
        </p>
        <p>
        <label for="puntosD"><b>Puntos Demerito:</b></label>
        <input type="text" name="puntosD" id="puntosD" size="6" class="text ui-widget-content ui-corner-all" />Pts.
        </p>
  		<p>
        <label for="puntosD"><b>Trabajos Tiempo Extra:</b></label>
        <input type="text" name="tte" id="tte" size="6" class="text ui-widget-content ui-corner-all"  />
        </p>
  		<p>
        <label for="puntosD"><b>Turnos sin Salida:</b></label>
        <input type="text" name="tss" id="tss" size="6" class="text ui-widget-content ui-corner-all"  />Turnos
        </p>
        <p>
        <hr/>
        <label for="boton"></label><input type="submit" value="Registrar Parte de Sanción" class="boton"><input type="reset" value="Resetear campos" class="boton">
	</form>
	</div>
</div>
</div>
<!-- <div id="tabs-4"><p></p></div> -->
<!-- Editar una parte de sancion -->
<div id="tabs-3" >
<div class="toggler">
	<div class="ui-widget-content ui-corner-all">
		<h1 class="ui-widget-header ui-corner-all" align="center">Formulario de Registro</h1>		                
	<form action="main.php?controller=faltas&action=editarFalta" method="post" id="formEditarFalta">
	    <input type="hidden" value="<?php echo $idc;?>" id="idc2" name="idc">
		<input type="hidden" value="<?php echo $_SESSION['idgestion']; ?>" id="idg2" name="gestion">
        <input type="hidden" value="" id="idf2" name="idf">
        <input type="hidden" value="" id="idfc" name="idfc">
		<p>
        <label for="fecha2"><b>Fecha:</b></label><input type="text" name="fecha" id="fecha2" class="required text ui-widget-content ui-corner-all">
        </p>
        <p>
        <label for="parte2"><b>Numero de parte:</b></label>
		<input type="text" name="parte" id="parte2" value="" class=" required text ui-widget-content ui-corner-all" />
        </p>
        <div class="ui-widget">
		<label for="tags2"><b>Sancionado por: </b></label>
		<input id="tags2" name="tags" class="required text ui-widget-content ui-corner-all" size="60"  />
		</div>
        <p>
        <label for="falta2"><a href="#" id="dialog_link2" title="Escojer Falta" ><span class="ui-icon ui-icon-newwin"></span>Falta</a>: </label>
		<input type="text" name="falta" id="falta2" style="width:600px;" class="text ui-widget-content ui-corner-all" disabled="disabled" />
        </p>
        <p>
        <label for="clase2"><b>Clase:</b></label>
        <input type="text" name="clase" id="clase2" size="6" class="text ui-widget-content ui-corner-all" />
        </p>
        <p>
        <label for="reincidencias2"><b>Reincidencia:</b></label>
		<input type="text" name="reincidencias" id="reincidencias2" size="6" class="text ui-widget-content ui-corner-all"  /><b>R</b>
        </p>
        <p>
        <label for="puntosD"><b>Puntos Demerito:</b></label>
        <input type="text" name="puntosD" id="puntosD2" size="6" class="text ui-widget-content ui-corner-all"  />Pts.
        </p>
  		<p>
        <label for="puntosD"><b>Trabajos Tiempo Extra:</b></label>
        <input type="text" name="tte" id="tte2" size="6" class="text ui-widget-content ui-corner-all" />
        </p>
  		<p>
        <label for="puntosD"><b>Turnos sin Salida:</b></label>
        <input type="text" name="tss" id="tss2" size="6" class="text ui-widget-content ui-corner-all"  />Turnos
        </p>
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
<!-- Enviar a consejo disciplinario -->
<div id="dialog-confirmacion" title="ENVIAR AL CABALLERO CADETE A CONSEJO DISCIPLINARIO">
<form action="main.php?controller=cadete&action=enviarConsejo" method="POST" id="formEnviarConsejo">
	<input name="idRegistro" id="idRegistro" type="hidden"/>
	<input name="idFaltaCometida" id="idFaltaCometida" type="hidden"/>	
	<p><b>La Falta: </b> 
	<span id="FaltaCometida"></span> </p><p></p>
	<hr/>
	<p>
	N&uacute;mero:<input type="text" value="" name="numero" id="numero" class="required text ui-widget-content ui-corner-all"  />
	</p>
	<p>
	Gesti&oacute;n:<input type="text" name="gestion" value="<?php echo $_SESSION['gestion'];?>" id="gestion" class="required text ui-widget-content ui-corner-all" />
	</p>
	<!-- <span class="ui-icon ui-icon-alert" style="float:left; margin:0 7px 20px 0;"></span> -->
	</form>
	
</div>

</body>
</html>