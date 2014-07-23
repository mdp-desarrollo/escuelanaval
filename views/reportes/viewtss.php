<?php
session_start ();
$title="Ventas".date('d-m-Y:H:i:sA')."";
header("Expires: 0");
header("Last-Modified: " . gmdate("D, d M Y H:i:s") . " GMT");
header("Cache-Control: no-store, no-cache, must-revalidate");
header("Cache-Control: post-check=0, pre-check=0", false);
header("Pragma: no-cache");
header("Content-type: application/vnd.ms-excel;charset:UTF-8");
header("Content-Disposition: attachment; filename=fggg.xls");
?>
<html>
<head>
<style>
body {font-family: sans-serif;
font-size: 10px;
}
table
{ width:1000px;		border-collapse: collapse; margin:0 0 .4em; font-size:10px; }
table thead th 
{ text-align: center; font-weight: bold; border: 1px solid #000;  }
table tbody td 
{ border: 1px solid #000; }
.header{
font-size:9px;
left:0px;
}
.title{
font-size:12px;
}
</style>
</head>
<body>
<div class="header" >
<pre> JEFATURA DE CUERPO
DIVISION DISCIPLINA
      BOLIVIA</pre></div>
<table border="1" class="title"><tr><td colspan="9"  align="center">RELACION NOMINAL DE TURNOS SIN SALIDA HASTA EL <?php echo date("d/m/Y");?></td></tr></table>
<table  style="overflow: auto">
<thead>
<tr><th colspan="9">5to A&ntilde;o</th></tr>
<tr ><th style="width:5%;" rowspan="2">Nro</th><th style="width:40%;" rowspan="2">NOMBRE</th><th style="width:5%;" rowspan="2">TSS</th><th style="width:20%;" colspan="3">SABADO</th><th style="width:20%;" colspan="3">DOMINGO</th></tr>
<tr><th>CUMPLIO</th><th>QUEDAN</th><th>OBS</th><th>CUMPLIO</th><th>QUEDAN</th><th>OBS</th></tr>
</thead>
<tbody>
<?php 
$n=1;
while ( $s = $quinto->fetch ( PDO::FETCH_OBJ ) ) {
?>	
<tr><td align="center"><?php echo $n;?></td><td><?php echo $s->nombre;?></td><td align="center"><?php echo $s->tss;?></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
<?php 
$n ++;
}
?>
</tbody></table>
<table  style="overflow: auto">
<thead>
<tr><th colspan="9">4to A&ntilde;o</th></tr>
<tr ><th style="width:5%;" rowspan="2">Nro</th><th style="width:40%;" rowspan="2">NOMBRE</th><th style="width:5%;" rowspan="2">TSS</th><th style="width:20%;" colspan="3">SABADO</th><th style="width:20%;" colspan="3">DOMINGO</th></tr>
<tr><th>CUMPLIO</th><th>QUEDAN</th><th>OBS</th><th>CUMPLIO</th><th>QUEDAN</th><th>OBS</th></tr>
</thead>
<tbody>
<?php 
$n=1;
while ( $s = $cuarto->fetch ( PDO::FETCH_OBJ ) ) {
?>	
<tr><td align="center"><?php echo $n;?></td><td><?php echo $s->nombre;?></td><td align="center"><?php echo $s->tss;?></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
<?php 
$n ++;
}
?>
</tbody></table>
<table  style="overflow: auto">
<thead>
<tr><th colspan="9">3ro A&ntilde;o</th></tr>
<tr ><th style="width:5%;" rowspan="2">Nro</th><th style="width:40%;" rowspan="2">NOMBRE</th><th style="width:5%;" rowspan="2">TSS</th><th style="width:20%;" colspan="3">SABADO</th><th style="width:20%;" colspan="3">DOMINGO</th></tr>
<tr><th>CUMPLIO</th><th>QUEDAN</th><th>OBS</th><th>CUMPLIO</th><th>QUEDAN</th><th>OBS</th></tr>
</thead>
<tbody>
<?php 
$n=1;
while ( $s = $tercero->fetch ( PDO::FETCH_OBJ ) ) {
?>	
<tr><td align="center"><?php echo $n;?></td><td><?php echo $s->nombre;?></td><td align="center"><?php echo $s->tss;?></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
<?php 
$n ++;
}
?></tbody></table>
<table  style="overflow: auto">
<thead>
<tr><th colspan="9">2do A&ntilde;o</th></tr>
<tr ><th style="width:5%;" rowspan="2">Nro</th><th style="width:40%;" rowspan="2">NOMBRE</th><th style="width:5%;" rowspan="2">TSS</th><th style="width:20%;" colspan="3">SABADO</th><th style="width:20%;" colspan="3">DOMINGO</th></tr>
<tr><th>CUMPLIO</th><th>QUEDAN</th><th>OBS</th><th>CUMPLIO</th><th>QUEDAN</th><th>OBS</th></tr>
</thead>
<tbody><?php 
$n=1;
while ( $s = $segundo->fetch ( PDO::FETCH_OBJ ) ) {
?>	
<tr><td align="center"><?php echo $n;?></td><td><?php echo $s->nombre;?></td><td align="center"><?php echo $s->tss;?></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
<?php 
$n ++;
}
?></tbody></table>
<table  style="overflow: auto">
<thead>
<tr><th colspan="9">1ro A&ntilde;o</th></tr>
<tr ><th style="width:5%;" rowspan="2">Nro</th><th style="width:40%;" rowspan="2">NOMBRE</th><th style="width:5%;" rowspan="2">TSS</th><th style="width:20%;" colspan="3">SABADO</th><th style="width:20%;" colspan="3">DOMINGO</th></tr>
<tr><th>CUMPLIO</th><th>QUEDAN</th><th>OBS</th><th>CUMPLIO</th><th>QUEDAN</th><th>OBS</th></tr>
</thead>
<tbody><?php 
$n=1;
while ( $s = $primero->fetch ( PDO::FETCH_OBJ ) ) {
?>	
<tr><td align="center"><?php echo $n;?></td><td><?php echo $s->nombre;?></td><td align="center"><?php echo $s->tss;?></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
<?php 
$n ++;
}
?>
<tr><td align="center">=SUM(A4:A6)</td><td></td><td align="center"></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>

</tbody></table>
<p>Segun el Art. 12-166 del Reglamento de Faltas Disciplinarias. Un turno de salida para los fines de este reglamento es el tiempo comprendido dentro de los limites que se especifican a continuaci&oacute;n:</p>

<p><b>a. S&aacute;bados:</b><br>
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
<div align="center"><?php echo $_SESSION['jefeCuerpo']?><br><b>JEFE DE DIVISION DISCIPLINA</b></br></div>
</body>
</html>