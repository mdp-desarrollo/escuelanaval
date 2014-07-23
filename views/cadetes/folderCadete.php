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
		//Aplicar tabs
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
// $(".folder tbody tr:odd").addClass("odd");
//abrir listado de faltas en una ventana modal
$('#dialog_link').click(function(){
	var left=screen.availWidth;
	var top=screen.availHeight;
	left=(left-600)/2;
	top=(top-500)/2;
	var idc=$("#idc").val();
	var r=window.showModalDialog("main.php?controller=faltas&action=listar_grid&idc="+idc,"","center:0;dialogWidth:600px;dialogHeight:500px;scroll=yes;resizable=yes;status=yes;"+"dialogLeft:"+left+"px;dialogTop:"+top+"px");
$("#falta").val(r[0]);
$("#clase").val(r[3]);
$("#idf").val(r[1]);
//verificamos si en cadete es reincidente a esta falta y recogemos los datos via json
var rei=[];
var idf=r[1];
var pd=r[2];
var idc=$("#idc").val();
var idg=$("#idg").val();
$.getJSON("main.php?controller=cadete&action=reincidencia&falta="+idf+"&pd="+pd+"&idc="+idc+"&gestion="+idg, function(rein){									
	$.each(rein, function(i,item){	
				$("#puntosD").val(item.puntosDemerito);
				$("#reincidencias").val(item.reinc);
				$("#tte").val(item.tte); 
				$("#tss").val(item.tss); 
				$("#asli").val(item.aSimpleLI); 
				$("#ased").val(item.aSimpleED); 
				$("#ascs").val(item.aSeveroCS);
				$("#assd").val(item.aSeveroSD);
				$("#pvac").val(item.perdidaVacacion); 				
				});
	 });

var peticion = $.ajax({
	url:'main.php?controller=cadete&action=reincidencia',
	type:'POST',
	data: { idc : idc, gestion : idg, falta : idf },
	success: function(ress) { //$("#reincidencias").val(ress);
	//ahora vamos a ver lo de puntosDemerito y esas cosas
alert(""+puntosArrestos[ress+x].puntos);	
	
	}, //mostramos el error
	error: function() { alert('Se ha producido un error Inesperado'); $(this).dialog('close'); }
	});	
//$(this).prev().val(r[0]);
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


$('#vista').click(function(){
	var left=screen.availWidth;
	var top=screen.availHeight;
	left=(left-1000)/2;
	top=(top-700)/2;
	var idc=$("#idc").val();
	var s=window.showModalDialog("main.php?controller=cadete&action=vistaPrevia&idc="+idc,"","center:0;dialogWidth:1000px;dialogHeight:700px;scroll=yes;resizable=yes;status=yes;"+"dialogLeft:"+left+"px;dialogTop:"+top+"px");	  
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
			margin:20px 0 20px 0;
			padding:20px 0 20px 0;
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
 <strong><?php echo $nombre ." / COD: ".$codigo ." / Curso: ".$curso." año / Puntos Semestre: ". $puntosSemestre; ?></strong> </p>
 </div>
</div>        
<div id="tabs">
<ul>
	<li><a href="#tabs-1">Partes de Sancion(<?php echo $_SESSION['gestion']?>)</a></li>
	<li><a href="#tabs-2">Registrar PS</a></li>
   
   	<li><a href="#tabs-4">Problemas</a></li>
</ul>
<div id="tabs-1">
<p><a title="Imprimir Registro" class="link" id="vista">Vista Previa/Imprimir <img src="views/images/printer.gif" width="16" height="16" alt="imprimir" /></a></p>

<div id="container">
<table class="folder">
<thead>
<tr class="ui-widget-content ui-corner-all">
<th>FECHA</th><th>FALTA COMETIDA</th><th>SANCIONANTE</th><th>Nº Parte</th><th>Clase</th><th>Reinc.</th><th>PDD</th><th>TSS</th><th>TTE</th><th>TTEC</th><th>TSSC</th><th>Ops</th>
</tr>
</thead>
<tbody>
<?php
$pd=0;
$tss=0;
$tte=0;
$ttec=0;
$tssc=0;
foreach($faltas as $f){
?>
<tr>
<td><?php echo $f->fechaFalta; ?></td>
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
<td><a href="#" style="border:none;" class="edit" rel="<?php echo $f->idFaltaCometida; ?>" ><img style="border:none;" src="views/images/edit.gif" title="Editar Falta"></a><img style="border:none; cursor:pointer;" src="views/images/recycle.png" title="Eliminar Falta"></td>
</tr>
<?php	
$pd+=$f->partesDemerito;
$tss+=$f->tss;
$tee+=$f->tte;
$tssc+=$f->tssc;
$ttec+=$f->ttec;
}
?>
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
<!--parte de Sanci�n-->
<div id="tabs-2" >
<div class="toggler">
	<div class="ui-widget-content ui-corner-all">
		<h3 class="ui-widget-header ui-corner-all" align="center">Formulario de Registro</h3>
		                
	<form action="main.php?controller=faltas&action=registrarFalta" method="post">
	    <input type="hidden" value="<?php echo $idc;?>" id="idc" name="idc">
		<input type="hidden" value="<?php echo $_SESSION['idgestion']; ?>" id="idg" name="gestion">
        <input type="hidden" value="" id="idf" name="idf">
		<p>
        <label for="fecha">Fecha:</label><input type="text" name="fecha" id="fecha" class="text ui-widget-content ui-corner-all">
        </p>
        <p>
        <label for="parte">Numero de parte:</label>
		<input type="text" name="parte" id="parte" value="" class="text ui-widget-content ui-corner-all" />
        </p>
        <div class="ui-widget">
		<label for="tags">Sancionado por: </label>
		<input id="tags" name="tags" class="text ui-widget-content ui-corner-all" size="60"  />
		</div>
        <p>
        <label for="falta"><a href="#" id="dialog_link" title="Escojer Falta" ><span class="ui-icon ui-icon-newwin"></span>Falta</a>: </label>
		<input type="text" name="falta" id="falta" style="width:500px;" class="text ui-widget-content ui-corner-all" disabled="disabled" />
        </p>
         <p>
        <label for="reincidencias">Reincidencia(R):</label>
		<input type="text" name="reincidencias" id="reincidencias" size="6" class="text ui-widget-content ui-corner-all"  /> Clase:<input type="text" name="clase" id="clase" size="6" class="text ui-widget-content ui-corner-all"  />
        </p>
        <p>
        		
        </p>
        <table>
        <tr>
        <td>
        <p>
        <label for="puntosD">Puntos Demerito:</label>
        <input type="text" name="puntosD" id="puntosD" size="6" class="text ui-widget-content ui-corner-all"  />
        </p>
        </td><td>
        <p>
        <label for="puntosD">Arresto Simple (LI):</label>
        <input type="text" name="asli" id="asli" size="6" class="text ui-widget-content ui-corner-all"  />
        </p>
        </td></tr>
        <tr><td>
  <p>
        <label for="puntosD">Trabajos Tiempo Extra:</label>
        <input type="text" name="tte" id="tte" size="6" class="text ui-widget-content ui-corner-all"  />
        </p>
        </td><td>
        <p>
        <label for="puntosD">Arresto Simple (ED):</label>
        <input type="text" name="ased" id="ased" size="6" class="text ui-widget-content ui-corner-all"  />
        </p>
        </td></tr>
        <tr><td>
  <p>
        <label for="puntosD">Turnos sin Salida:</label>
        <input type="text" name="tss" id="tss" size="6" class="text ui-widget-content ui-corner-all"  />
        </p>
        </td><td>
        <p>
        <label for="puntosD">Arresto Severo (CS):</label>
        <input type="text" name="ascs" id="ascs" size="6" class="text ui-widget-content ui-corner-all"  />
        </p>
        </td></tr>
        <tr><td>
  <p>
        <label for="puntosD">Perdida de Vacación:</label>
        <input type="text" name="pvac" id="pvac" size="6" class="text ui-widget-content ui-corner-all"  />
        </p>
        </td><td>
        <p>
        <label for="puntosD">Arresto Severo (SD):</label>
        <input type="text" name="assd" id="assd" size="6" class="text ui-widget-content ui-corner-all"  />
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

</div>

</body>
</html>