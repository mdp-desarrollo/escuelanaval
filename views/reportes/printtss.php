<?php
session_start ();
?>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8" />
<title></title>
<link type="text/css" href="views/css/themes/black-tie/jquery-ui-1.8.1.custom.css"
	rel="stylesheet" />
<link type="text/css" href="views/css/table.css" rel="stylesheet" />
<script type="text/javascript" src="views/js/jquery-1.4.2.js"></script>
<script type="text/javascript">
	$(function() {
		window.print() ;
		window.close();
	});
	</script>
<style type="text/css" media="all"  >
body{
font-family: Arial, Helvetica, sans-serif;
font-size:10px;				
}
table.folder thead {
	font-weight:bold;
	font-size:11px;	
}
table.folder thead tr th{
	height:8px;	
}
</style>
</head>
<body>
<PRE>
  JEFATURA DE CUERPO
DIVISION DISCIPLINARIA
        BOLIVA</PRE>
<table class="folder"><thead><tr><th>RELACION NOMINAL DE TURNOS SIN SALIDA HASTA EL <?php echo date("d/m/Y");?></th></tr></thead></table>

<table class="folder">
<thead><tr><th colspan="9"><b>5to A&ntilde;o</b></th></tr>
<tr><th style="width:5%;" rowspan="2">Nro</th><th style="width:40%;" rowspan="2">NOMBRE</th><th style="width:5%;" rowspan="2">TSS</th><th style="width:20%;" colspan="3">SABADO</th><th style="width:20%;" colspan="3">DOMINDO</th></tr>
<tr><th>CUMPLIO</th><th>QUEDAN</th><th>OBS</th><th>CUMPLIO</th><th>QUEDAN</th><th>OBS</th></tr>
</thead>
<tbody>
<?php 
$n=1;
while($q =$quinto->fetch(PDO::FETCH_OBJ)){ ?>
<tr><td><?php echo $n; ?></td><td><?php echo $q->nombre; ?></td><td><?php echo $q->tss; ?></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>

<?php	
$n++;
} ?>
</tbody>
</table>
<table class="folder">
<thead><tr><th colspan="9"><b>4to A&ntilde;o</b></th></tr>
<tr><th style="width:5%;" rowspan="2">Nro</th><th style="width:40%;" rowspan="2">NOMBRE</th><th style="width:5%;" rowspan="2">TSS</th><th style="width:20%;" colspan="3">SABADO</th><th style="width:20%;" colspan="3">DOMINDO</th></tr>
<tr><th>CUMPLIO</th><th>QUEDAN</th><th>OBS</th><th>CUMPLIO</th><th>QUEDAN</th><th>OBS</th></tr>
</thead>
<tbody>
<?php 
$n=1;
while($q =$cuarto->fetch(PDO::FETCH_OBJ)){ ?>
<tr><td><?php echo $n; ?></td><td><?php echo $q->nombre; ?></td><td><?php echo $q->tss; ?></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>

<?php	
$n++;
} ?>
</tbody>
</table>
<table class="folder">
<thead><tr><th colspan="9"><b>3er A&ntilde;o</b></th></tr>
<tr><th style="width:5%;" rowspan="2">Nro</th><th style="width:40%;" rowspan="2">NOMBRE</th><th style="width:5%;" rowspan="2">TSS</th><th style="width:20%;" colspan="3">SABADO</th><th style="width:20%;" colspan="3">DOMINDO</th></tr>
<tr><th>CUMPLIO</th><th>QUEDAN</th><th>OBS</th><th>CUMPLIO</th><th>QUEDAN</th><th>OBS</th></tr>
</thead>
<tbody>
<?php 
$n=1;
while($q =$tercero->fetch(PDO::FETCH_OBJ)){ ?>
<tr><td><?php echo $n; ?></td><td><?php echo $q->nombre; ?></td><td><?php echo $q->tss; ?></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>

<?php	
$n++;
} ?>
</tbody>
</table>
<table class="folder">
<thead><tr><th colspan="9"><b>2do A&ntilde;o</b></th></tr>
<tr><th style="width:5%;" rowspan="2">Nro</th><th style="width:40%;" rowspan="2">NOMBRE</th><th style="width:5%;" rowspan="2">TSS</th><th style="width:20%;" colspan="3">SABADO</th><th style="width:20%;" colspan="3">DOMINDO</th></tr>
<tr><th>CUMPLIO</th><th>QUEDAN</th><th>OBS</th><th>CUMPLIO</th><th>QUEDAN</th><th>OBS</th></tr>
</thead>
<tbody>
<?php 
$n=1;
while($q =$segundo->fetch(PDO::FETCH_OBJ)){ ?>
<tr><td><?php echo $n; ?></td><td><?php echo $q->nombre; ?></td><td><?php echo $q->tss; ?></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>

<?php	
$n++;
} ?>
</tbody>
</table>
<table class="folder">
<thead><tr><th colspan="9"><b>1er A&ntilde;o</b></th></tr>
<tr><th style="width:5%;" rowspan="2">Nro</th><th style="width:40%;" rowspan="2">NOMBRE</th><th style="width:5%;" rowspan="2">TSS</th><th style="width:20%;" colspan="3">SABADO</th><th style="width:20%;" colspan="3">DOMINDO</th></tr>
<tr><th>CUMPLIO</th><th>QUEDAN</th><th>OBS</th><th>CUMPLIO</th><th>QUEDAN</th><th>OBS</th></tr>
</thead>
<tbody>
<?php 
$n=1;
while($q =$primero->fetch(PDO::FETCH_OBJ)){ ?>
<tr><td><?php echo $n; ?></td><td><?php echo $q->nombre; ?></td><td><?php echo $q->tss; ?></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>

<?php	
$n++;
} ?>
</tbody>
</table>
<p>Segun el Art. 12-166 del Reglamento de Faltas Disciplinarias. Un turno de salida para los fines de este reglamento es el tiempo comprendido dentro de los limites que se especifican a continuaci&oacute;n:</p>

<p><b>a. Sabados:</b><br>
- Desde las 1330 horas hasta las 1900 horas.<br>
- Desde las 1900 horas hasta las 2400 horas.<br>
 (salen al da siguiente hrs. 08:30)
</p>
<p><b>b. Domingos y das feriados completos:</b><br>
- Desde las 0830 horas hasta las 1430 horas.<br>
- Desde las 1430 horas hasta las  2100 horas.<br>
</p>
<p><b>c.	Medios das feriados:</b><br>
- Desde las 1330 horas hasta las .2100 horas.
</p>
<br>
<br>
<br>
<br>
<div align="center"><?php echo $_SESSION['jefeCuerpo'];?><br><b>JEFE DE DIVISION DISCIPLINA</b></br></div>

</body>
</html>