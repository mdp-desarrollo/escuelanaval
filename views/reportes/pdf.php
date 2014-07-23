<?php
require_once "../ez_sql.php";
require_once "../class.ezpdf.php";
$pdf =& new Cezpdf('LETTER');
$pdf->selectFont('../fonts/Helvetica.afm');
$datacreator = array (
					'Title'=>'Olimpiadas Estudiantiles',
					'Author'=>'Ivan Marcelo Chacolla',
					'Subject'=>'UNIFRANZ - EL ALTO',
					'Creator'=>'ivanmarceloch_hp49@hotmail.com',
					'Producer'=>'http://jeisoft.net'
					);
$pdf->addInfo($datacreator);
$pdf->ezImage("../images/logo_unifranz1.jpg",0,80,50,'left');
//datos
$area=$_POST['areas'];
$aa=$db->get_row("SELECT area,eliminado FROM tbl_area WHERE id_area='$area'");
$aaa=$aa->area;
$competencia=$_POST['comp'];
$activo=$_POST['activo'];
$ide=$_POST['ide'];
arsort($ide); //Ordenamos descendentemente
$datos=array();
$id=1;
foreach($ide as $i =>$v){
$estu=$db->get_row("SELECT nombres,paterno,materno,ci,colegio,sexo FROM tbl_estudiantes WHERE id_estudiante='$i'");
$nombre=$estu->nombres." ".$estu->paterno." ".$estu->materno;
$datos[]=array('id'=>$id, 'ci'=>$estu->ci, 'nombre'=> $nombre,'nota'=>$v);
$id++;
}
$titles = array('id'=>'<b>Puesto</b>','ci'=>'<b>Cedula de Identidad</b>', 'nombre'=>'<b>Estudiante</b>',  'nota'=>'<b>Nota</b>');

$pdf->ezText("<b>Olimpiada:</b> $competencia\n",16);
$pdf->ezText("<b>Area:</b> $aaa\n",12);
$pdf->ezTable($datos,$titles,'',$options );
$pdf->ezText("\n\n\n",10);
$pdf->ezText("<b>Fecha:</b> ".date("d/m/Y"),10);
$pdf->ezText("<b>Hora:</b> ".date("H:i:s")."\n\n",10);
$pdf->ezStream();
?>