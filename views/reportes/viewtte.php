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
<table class="folder"><thead><tr><th>RELACION NOMINAL DE TURNOS TRABAJO EXTRA HASTA EL <?php echo date("d/m/Y");?></th></tr></thead></table>

<table class="folder">
<thead><tr><th colspan="9"><b>5to A&ntilde;o</b></th></tr>
<tr><th style="width:5%;" rowspan="2">Nro</th><th style="width:40%;" rowspan="2">NOMBRE</th><th style="width:5%;" rowspan="2">TTE</th><th style="width:20%;" colspan="3">SABADO</th><th style="width:20%;" colspan="3">DOMINDO</th></tr>
<tr><th>CUMPLIO</th><th>QUEDAN</th><th>OBS</th><th>CUMPLIO</th><th>QUEDAN</th><th>OBS</th></tr>
</thead>
<tbody>
<?php 
$n=1;
while($q =$quinto->fetch(PDO::FETCH_OBJ)){ ?>
<tr><td><?php echo $n; ?></td><td><?php echo $q->nombre; ?></td><td><?php echo $q->tte; ?></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>

<?php	
$n++;
} ?>
</tbody>
</table>
<table class="folder">
<thead><tr><th colspan="9"><b>4to A&ntilde;o</b></th></tr>
<tr><th style="width:5%;" rowspan="2">Nro</th><th style="width:40%;" rowspan="2">NOMBRE</th><th style="width:5%;" rowspan="2">TTE</th><th style="width:20%;" colspan="3">SABADO</th><th style="width:20%;" colspan="3">DOMINDO</th></tr>
<tr><th>CUMPLIO</th><th>QUEDAN</th><th>OBS</th><th>CUMPLIO</th><th>QUEDAN</th><th>OBS</th></tr>
</thead>
<tbody>
<?php 
$n=1;
while($q =$cuarto->fetch(PDO::FETCH_OBJ)){ ?>
<tr><td><?php echo $n; ?></td><td><?php echo $q->nombre; ?></td><td><?php echo $q->tte; ?></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>

<?php	
$n++;
} ?>
</tbody>
</table>
<table class="folder">
<thead><tr><th colspan="9"><b>3er A&ntilde;o</b></th></tr>
<tr><th style="width:5%;" rowspan="2">Nro</th><th style="width:40%;" rowspan="2">NOMBRE</th><th style="width:5%;" rowspan="2">TTE</th><th style="width:20%;" colspan="3">SABADO</th><th style="width:20%;" colspan="3">DOMINDO</th></tr>
<tr><th>CUMPLIO</th><th>QUEDAN</th><th>OBS</th><th>CUMPLIO</th><th>QUEDAN</th><th>OBS</th></tr>
</thead>
<tbody>
<?php 
$n=1;
while($q =$tercero->fetch(PDO::FETCH_OBJ)){ ?>
<tr><td><?php echo $n; ?></td><td><?php echo $q->nombre; ?></td><td><?php echo $q->tte; ?></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>

<?php	
$n++;
} ?>
</tbody>
</table>
<table class="folder">
<thead><tr><th colspan="9"><b>2do A&ntilde;o</b></th></tr>
<tr><th style="width:5%;" rowspan="2">Nro</th><th style="width:40%;" rowspan="2">NOMBRE</th><th style="width:5%;" rowspan="2">TTE</th><th style="width:20%;" colspan="3">SABADO</th><th style="width:20%;" colspan="3">DOMINDO</th></tr>
<tr><th>CUMPLIO</th><th>QUEDAN</th><th>OBS</th><th>CUMPLIO</th><th>QUEDAN</th><th>OBS</th></tr>
</thead>
<tbody>
<?php 
$n=1;
while($q =$segundo->fetch(PDO::FETCH_OBJ)){ ?>
<tr><td><?php echo $n; ?></td><td><?php echo $q->nombre; ?></td><td><?php echo $q->tte; ?></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>

<?php	
$n++;
} ?>
</tbody>
</table>
<table class="folder">
<thead><tr><th colspan="9"><b>1er A&ntilde;o</b></th></tr>
<tr><th style="width:5%;" rowspan="2">Nro</th><th style="width:40%;" rowspan="2">NOMBRE</th><th style="width:5%;" rowspan="2">TTE</th><th style="width:20%;" colspan="3">SABADO</th><th style="width:20%;" colspan="3">DOMINDO</th></tr>
<tr><th>CUMPLIO</th><th>QUEDAN</th><th>OBS</th><th>CUMPLIO</th><th>QUEDAN</th><th>OBS</th></tr>
</thead>
<tbody>
<?php 
$n=1;
while($q =$primero->fetch(PDO::FETCH_OBJ)){ ?>
<tr><td><?php echo $n; ?></td><td><?php echo $q->nombre; ?></td><td><?php echo $q->tte; ?></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>

<?php	
$n++;
} ?>
</tbody>
</table>
<p>Segun el Art. 12-183. Para los fines de cumplimiento de turnos de trabajo extra se cumplir&aacute; un turno de trabajo por:</p>

<ul style="list-style:lower-latin;">
<li>20 minutos de trabajo sin armas.</li>
<li>15 minutos de trabajo con armas (un fusil).</li>
<li>10 minutos de trote sin armas.</li>
<li> 5 minutos de trote con armas (un fusil).</li>
<li>15 minutos de gimnasia sin armas.</li>
<li>10 minutos de gimnasia con armas (un fusil).</li>
<li>10 minutos de manejo de fusil.</li>
<li>30 minutos caminata o boga.</li>
<li>20 minutos plant&oacute;n sin armas.</li>
<li>10 minutos plant&oacute;n con armas </li>
<li>30 minutos aseo locales de Cadetes.</li>
<li>30 minutos de trabajos territoriales</li>
<li>30 minutos baldeo a bordo.</li>
<li>15 minutos de limpieza de caones o trofeos, y aquellos de ndole similar tanto en ejecucin como en duracin.</li>
</ul>
<br>
<br>
<br>
<br>
<div align="center"><?php echo $_SESSION['jefeCuerpo'];?><br><b>JEFE DE DIVISION DISCIPLINA</b></br></div>


</body>
</html>