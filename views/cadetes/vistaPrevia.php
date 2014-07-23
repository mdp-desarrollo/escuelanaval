<?php
session_start ();
?>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8" />
<title><?php echo $nombre;?></title>
<link type="text/css" href="views/css/table.css" rel="stylesheet" />
<script type="text/javascript" src="views/js/jquery-1.4.2.js"></script>
<script type="text/javascript" src="views/js/jPrint.js"></script>
<script type="text/javascript">
	$(function() {
		//Aplicar tabs		
window.print() ;
$("#printe").click(function(){
print(".folder");
});
	  
});
	</script>
<style type="text/css" media="all">
body,pre{
	font-family:Arial, Helvetica, sans-serif;
	font-size:11px;
}
/*Tablas*/
table.folder{ width:100%;		border-collapse: collapse; margin:0 0 .4em; }
table.folder th { padding: .7em .3em; text-align: center; font-weight: bold; border: 1px solid #333;  }
table.folder td { border: 1px solid  #333; padding: 5px; }
	</style>
</head>
<body>
<div id="container">
<pre>
Escuela Naval Militar
 Jefatura de Cuerpo
         Bolivia</pre>
<table class="folder">
<tr>
<td colspan="4"><b>Año Academico: </b><?php echo $_SESSION['gestion']?></td><td colspan="3" ><b>Semestre : </b><?php echo $_SESSION['semestre']?></td><th colspan="3">Puntos Semestre</th><td><?php echo $puntosSemestre;?></td>
</tr>
<tr>
<td colspan="4"><b>Apellidos y Nombres: </b><?php echo $nombre;?></td><td colspan="3" ><b>Curso: </b><?php echo $curso;?></td><th colspan="3">PDAS EST. OBS:</th><td></td>
</tr>
<tr>
<th colspan="3" style="text-align:center;">CODIGO DISCIPLINA</th><th colspan="3"></th><th colspan="3">CALIFICACION</th><th colspan="2">CUMPLIDOS</th>
</tr>
<tr >
<th>FECHA</th><th>FALTA COMETIDA</th><th>SANCIONANTE</th><th>Nº Parte</th><th>Clase</th><th>Reinc.</th><th>PDD</th><th>TSS</th><th>TTE</th><th>TTEC</th><th>TSSC</th>
</tr>


<?php
$pd=0;
$tss=0;
$tte=0;
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
</tr>
<?php	
$pd+=$f->partesDemerito;
$tss+=$f->tss;
$tee+=$f->tte;
}
?>

<tr >
<td height="25"colspan="6"></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr style="font-weight:bold;">
<td colspan="6" style="text-align:right; font-weight:bold;">Totales Acumulados</td>
<td><?php echo $pd; ?></td>
<td><?php echo $tss; ?></td>
<td><?php echo $tte; ?></td>
<td><?php echo $tte; ?></td>
<td><?php echo $tte; ?></td>
</tr>
<tr>
<td colspan="5">Observaciones:</td>
<td colspan="2">PDAS</td>
<td colspan="2">FACTOR</td>
<td colspan="2">NOTA SEMESTRAL</td>
</tr>
<tr>
<td colspan="5"></td>
<td colspan="2" rowspan="2"><?php echo $pd; ?></td>
<td colspan="2" rowspan="2"><?php echo $coeficiente;?></td>
<td colspan="2" rowspan="2"><?php echo 100-(($pd*$coeficiente)/5);?></td>
</tr>
<tr>
<td colspan="3"></td>
<td></td
><td></td>
</tr>

</table>
<br>
<br>
<br>
<table width="100%" style=" text-align:center;">
<tr><td><?php echo $_SESSION['jefeDivision']?></td><td><?php echo $_SESSION['jefeCuerpo'];?></td></tr>
<tr><td><b>JEFE DE LA DIVISIÓN DISCIPLINA DE LA ESCUELA NAVAL MILITAR</b></td><td><b>JEFE DEL CUERPO DE CC.CC. DE LA ESCUELA NAVAL MILITAR</b></td></tr>
</table>
</div>
<!--
<a title="Imprimir" onclick="$.jPrintArea('#container');"><img src="views/images/printer.gif" width="16" height="16" alt="imprimir" /></a>
-->
</body>
</html>