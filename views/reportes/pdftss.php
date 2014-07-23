<?php

include("MPDF/mpdf.php");
$html="
<html>
<head>
<style>
body {font-family: sans-serif;
font-size: 10px;
}
table
{ width:100%;		border-collapse: collapse; margin:0 0 .4em; font-size:10px; }
table thead th 
{ padding: .1em; text-align: center; font-weight: bold; border: 1px solid #000;  }
table tbody td 
{ border: 1px solid #000; padding: .1em; }
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
<div class=\"header\" >
<pre> JEFATURA DE CUERPO
DIVISION DISCIPLINA
      BOLIVIA</pre></div>
<table border=\"1\" class=\"title\"><tr><td  align=\"center\">RELACION NOMINAL DE TURNOS SIN SALIDA HASTA EL ".date("d/m/Y")."</td></tr></table>
<table  style=\"overflow: auto\">
<thead>
<tr><th colspan=\"9\">5to A&ntilde;o</th></tr>
<tr ><th style=\"width:5%;\" rowspan=\"2\">Nro</th><th style=\"width:40%;\" rowspan=\"2\">NOMBRE</th><th style=\"width:5%;\" rowspan=\"2\">TSS</th><th style=\"width:20%;\" colspan=\"3\">SABADO</th><th style=\"width:20%;\" colspan=\"3\">DOMINGO</th></tr>
<tr><th>CUMPLIO</th><th>QUEDAN</th><th>OBS</th><th>CUMPLIO</th><th>QUEDAN</th><th>OBS</th></tr>
</thead>
<tbody>";
$n=1;
while ( $s = $quinto->fetch ( PDO::FETCH_OBJ ) ) {
	
	$html.= "<tr><td align=\"center\">$n</td><td>".$s->nombre."</td><td align=\"center\">".$s->tss."</td><td></td><td></td><td></td><td></td><td></td><td></td></tr>";
	$n ++;
}
$html.="</tbody></table>
<table  style=\"overflow: auto\">
<thead>
<tr><th colspan=\"9\">4to A&ntilde;o</th></tr>
<tr ><th style=\"width:5%;\" rowspan=\"2\">Nro</th><th style=\"width:40%;\" rowspan=\"2\">NOMBRE</th><th style=\"width:5%;\" rowspan=\"2\">TSS</th><th style=\"width:20%;\" colspan=\"3\">SABADO</th><th style=\"width:20%;\" colspan=\"3\">DOMINGO</th></tr>
<tr><th>CUMPLIO</th><th>QUEDAN</th><th>OBS</th><th>CUMPLIO</th><th>QUEDAN</th><th>OBS</th></tr>
</thead>
<tbody>";
$n=1;
while ( $s = $cuarto->fetch ( PDO::FETCH_OBJ ) ) {
	
	$html.= "<tr><td align=\"center\">$n</td><td>".$s->nombre."</td><td align=\"center\">".$s->tss."</td><td></td><td></td><td></td><td></td><td></td><td></td></tr>";
	$n ++;
}
$html.="</tbody></table>
<table  style=\"overflow: auto\">
<thead>
<tr><th colspan=\"9\">3ro A&ntilde;o</th></tr>
<tr ><th style=\"width:5%;\" rowspan=\"2\">Nro</th><th style=\"width:40%;\" rowspan=\"2\">NOMBRE</th><th style=\"width:5%;\" rowspan=\"2\">TSS</th><th style=\"width:20%;\" colspan=\"3\">SABADO</th><th style=\"width:20%;\" colspan=\"3\">DOMINGO</th></tr>
<tr><th>CUMPLIO</th><th>QUEDAN</th><th>OBS</th><th>CUMPLIO</th><th>QUEDAN</th><th>OBS</th></tr>
</thead>
<tbody>";
$n=1;
while ( $s = $tercero->fetch ( PDO::FETCH_OBJ ) ) {
	
	$html.= "<tr><td align=\"center\">$n</td><td>".$s->nombre."</td><td align=\"center\">".$s->tss."</td><td></td><td></td><td></td><td></td><td></td><td></td></tr>";
	$n ++;
}
$html.="</tbody></table>
<table  style=\"overflow: auto\">
<thead>
<tr><th colspan=\"9\">2do A&ntilde;o</th></tr>
<tr ><th style=\"width:5%;\" rowspan=\"2\">Nro</th><th style=\"width:40%;\" rowspan=\"2\">NOMBRE</th><th style=\"width:5%;\" rowspan=\"2\">TSS</th><th style=\"width:20%;\" colspan=\"3\">SABADO</th><th style=\"width:20%;\" colspan=\"3\">DOMINGO</th></tr>
<tr><th>CUMPLIO</th><th>QUEDAN</th><th>OBS</th><th>CUMPLIO</th><th>QUEDAN</th><th>OBS</th></tr>
</thead>
<tbody>";
$n=1;
while ( $s = $segundo->fetch ( PDO::FETCH_OBJ ) ) {
	
	$html.= "<tr><td align=\"center\">$n</td><td>".$s->nombre."</td><td align=\"center\">".$s->tss."</td><td></td><td></td><td></td><td></td><td></td><td></td></tr>";
	$n ++;
}
$html.="</tbody></table>
<table  style=\"overflow: auto\">
<thead>
<tr><th colspan=\"9\">1ro A&ntilde;o</th></tr>
<tr ><th style=\"width:5%;\" rowspan=\"2\">Nro</th><th style=\"width:40%;\" rowspan=\"2\">NOMBRE</th><th style=\"width:5%;\" rowspan=\"2\">TSS</th><th style=\"width:20%;\" colspan=\"3\">SABADO</th><th style=\"width:20%;\" colspan=\"3\">DOMINGO</th></tr>
<tr><th>CUMPLIO</th><th>QUEDAN</th><th>OBS</th><th>CUMPLIO</th><th>QUEDAN</th><th>OBS</th></tr>
</thead>
<tbody>";
$n=1;
while ( $s = $primero->fetch ( PDO::FETCH_OBJ ) ) {
	
	$html.= "<tr><td align=\"center\">$n</td><td>".$s->nombre."</td><td align=\"center\">".$s->tss."</td><td></td><td></td><td></td><td></td><td></td><td></td></tr>";
	$n ++;
}
$html.="</tbody></table>
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
<div align=\"center\">".$_SESSION['jefeCuerpo']."<br><b>JEFE DE DIVISION DISCIPLINA</b></br></div>
</body>
</html>";
//cabeceras
$hhtml = '
<htmlpagefooter name="myHTMLFooterOdd" style="display:none">
<div align="right"><hr>{PAGENO}</div>
</htmlpagefooter>
<sethtmlpageheader name="myHTMLHeaderOdd" page="O" value="on" show-this-page="1" />
<sethtmlpagefooter name="myHTMLFooterOdd" page="O" value="on" show-this-page="1" />
';
$mpdf = new mPDF ( 'en-GB', 'LETTER', '', '', 20, 20, 20, 20, 16, 13 );
$mpdf->useOnlyCoreFonts = true;
$mpdf->SetProtection(array('print'));
$mpdf->SetTitle("RELACION NOMINAL DE TURNOS SIN SALIDA");
$mpdf->SetAuthor("Ivan Marcelo Chacolla Morochi");
$mpdf->SetSubject("Sistema Disciplinario = Escuela Naval Militar");
//$mpdf->SetWatermarkText("Sistema Disciplinario");
//$mpdf->showWatermarkText = true;
//$mpdf->watermark_font = 'DejaVuSansCondensed';
//$mpdf->watermarkTextAlpha = 0.1;
$mpdf->SetDisplayMode('fullpage');
$mpdf->list_indent_first_level = 0; // 1 or 0 - whether to indent the first level of a list
$mpdf->WriteHTML ( $hhtml);
$mpdf->WriteHTML ( $html);
$name=date("dmYHis").".pdf";
$mpdf->Output ( $name, 'I' );
exit ();

?>