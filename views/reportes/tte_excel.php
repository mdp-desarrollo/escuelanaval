<?php
/**
 * PHPExcel
 *
 * Copyright (C) 2006 - 2010 PHPExcel
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
 *
 * @category   PHPExcel
 * @package    PHPExcel
 * @copyright  Copyright (c) 2006 - 2010 PHPExcel (http://www.codeplex.com/PHPExcel)
 * @license    http://www.gnu.org/licenses/old-licenses/lgpl-2.1.txt	LGPL
 * @version    1.7.3c, 2010-06-01
 */

/** Error reporting */
error_reporting(E_ALL);
/** PHPExcel_IOFactory */

require_once 'views/Classes/PHPExcel/IOFactory.php';


if (!file_exists("views/cadetes/tte.xlsx")) {
	exit("Ocurrio un error favor consultar con el administrador del sistema.\n");
}
$objPHPExcel = PHPExcel_IOFactory::load("views/cadetes/tte.xlsx");
//creamos una instancia a la clase

/** PHPExcel */
require_once 'views/Classes/PHPExcel.php';


// Create new PHPExcel object


// Set properties
$objPHPExcel->getProperties()->setCreator("Ivan Marcelo Chacolla")
							 ->setLastModifiedBy("Ivan Marcelo Chacolla")
							 ->setTitle("Office 2007 XLSX TSS")
							 ->setSubject("Office 2007 XLSX Test Document")
							 ->setDescription("Test document for Office 2007 XLSX, generated using PHP classes.")
							 ->setKeywords("office 2007 openxml php")
							 ->setCategory("Test result file");
// Set column widths
/*$objPHPExcel->getActiveSheet()->getColumnDimension('A')->setWidth(4);
$objPHPExcel->getActiveSheet()->getColumnDimension('B')->setAutoSize(true);
$objPHPExcel->getActiveSheet()->getColumnDimension('C')->setWidth(4);
$objPHPExcel->getActiveSheet()->getColumnDimension('D')->setWidth(8);
$objPHPExcel->getActiveSheet()->getColumnDimension('E')->setWidth(8);
$objPHPExcel->getActiveSheet()->getColumnDimension('F')->setWidth(8);
$objPHPExcel->getActiveSheet()->getColumnDimension('G')->setWidth(8);
$objPHPExcel->getActiveSheet()->getColumnDimension('H')->setWidth(8);
$objPHPExcel->getActiveSheet()->getColumnDimension('I')->setWidth(8);
*/
$objPHPExcel->getActiveSheet()->getStyle('B1')->getFont()->setBold(true);
$objPHPExcel->getActiveSheet()->getStyle('B1')->getFont()->setUnderline(PHPExcel_Style_Font::UNDERLINE_SINGLE);
$objPHPExcel->getActiveSheet()->getStyle('B1')->getFont()->getColor()->setARGB(PHPExcel_Style_Color::COLOR_WHITE);
							  
$F=3;						  
//titulos 5to Año
$I=$F;
$objPHPExcel->setActiveSheetIndex(0)
            ->setCellValue('A'.$F, '5to AÑO')
            ->setCellValue('A'.($F+1), 'N')
            ->setCellValue('B'.($F+1), 'NOMBRE COMPLETO')
            ->setCellValue('C'.($F+1), 'TTE')
            ->setCellValue('D'.($F+1), 'CUMPLIO')
            ->setCellValue('E'.($F+1), 'QUEDAN')
			->setCellValue('F'.($F+1), 'OBS.');
// Combinar celdas
$objPHPExcel->getActiveSheet()->mergeCells('A'.$F.':F'.$F);
//Centrar texto
$objPHPExcel->getActiveSheet()->getStyle('A'.$F.':F'.($F+1))->getAlignment()->applyFromArray(
      		array(
      			'horizontal' => PHPExcel_Style_Alignment::HORIZONTAL_CENTER,
      			'vertical'   => PHPExcel_Style_Alignment::VERTICAL_CENTER,
      			'rotation'   => 0,
      			'wrap'       => true
      			)
			);							  
$F=$F+3;
$n=1;
//Vaciamos datos
while ( $s = $quinto->fetch ( PDO::FETCH_OBJ ) ) {
	if($s->tte>0){
	$objPHPExcel->setActiveSheetIndex(0)
	->setCellValue('A'.$F, $n)
	->setCellValue('B'.$F,$s->nombre)
	->setCellValue('C'.$F,$s->tte);	
	//FONT
	$objPHPExcel->getActiveSheet()->getStyle('A'.$F)->getFont()->setSize(9);
	$objPHPExcel->getActiveSheet()->getStyle('B'.$F)->getFont()->setSize(9);
	$objPHPExcel->getActiveSheet()->getStyle('C'.$F)->getFont()->setSize(9);
	$n ++;
	$F++;
	}
}
//Bordes
$objPHPExcel->getActiveSheet()->getStyle('A'.$I.':F'.($F-1))->getBorders()->applyFromArray(
      		array(
      			'allborders' => array(
      				'style' => PHPExcel_Style_Border::BORDER_THIN,
      				'color' => array(
      					'rgb' => '808080'
      				)
      			)
      		)
      );
//fuentes
$objPHPExcel->getActiveSheet()->getStyle('A'.$I.':F'.($I+2))->getFont()->setSize(10);


//titulos 4to Año
$F++;
$I=$F;
$objPHPExcel->setActiveSheetIndex(0)
            ->setCellValue('A'.$F, '4to AÑO')
            ->setCellValue('A'.($F+1), 'N')
            ->setCellValue('B'.($F+1), 'NOMBRE COMPLETO')
            ->setCellValue('C'.($F+1), 'TTE')
            ->setCellValue('D'.($F+1), 'CUMPLIO')
            ->setCellValue('E'.($F+1), 'QUEDAN')
			->setCellValue('F'.($F+1), 'OBS.');
// Combinar celdas
$objPHPExcel->getActiveSheet()->mergeCells('A'.$F.':F'.$F);
//Centrar texto
$objPHPExcel->getActiveSheet()->getStyle('A'.$I.':F'.($F+1))->getAlignment()->applyFromArray(
      		array(
      			'horizontal' => PHPExcel_Style_Alignment::HORIZONTAL_CENTER,
      			'vertical'   => PHPExcel_Style_Alignment::VERTICAL_CENTER,
      			'rotation'   => 0,
      			'wrap'       => true
      			)
			);							  
$F=$F+2;
$n=1;
//Vaciamos datos
while ( $s = $cuarto->fetch ( PDO::FETCH_OBJ ) ) {
	if($s->tte>0){
	$objPHPExcel->setActiveSheetIndex(0)
	->setCellValue('A'.$F, $n)
	->setCellValue('B'.$F,$s->nombre)
	->setCellValue('C'.$F,$s->tte);	
	//FONT
	$objPHPExcel->getActiveSheet()->getStyle('A'.$F)->getFont()->setSize(9);
	$objPHPExcel->getActiveSheet()->getStyle('B'.$F)->getFont()->setSize(9);
	$objPHPExcel->getActiveSheet()->getStyle('C'.$F)->getFont()->setSize(9);
	$n ++;
	$F++;
	}
}
//Bordes
$objPHPExcel->getActiveSheet()->getStyle('A'.$I.':F'.($F-1))->getBorders()->applyFromArray(
      		array(
      			'allborders' => array(
      				'style' => PHPExcel_Style_Border::BORDER_THIN,
      				'color' => array(
      					'rgb' => '808080'
      				)
      			)
      		)
      );      
//fuentes
$objPHPExcel->getActiveSheet()->getStyle('A'.$I.':F'.($I+2))->getFont()->setSize(10);

//titulos 3to Año
$F++;
$I=$F;
$objPHPExcel->setActiveSheetIndex(0)
            ->setCellValue('A'.$F, '3er AÑO')
            ->setCellValue('A'.($F+1), 'N')
            ->setCellValue('B'.($F+1), 'NOMBRE COMPLETO')
            ->setCellValue('C'.($F+1), 'TTE')
            ->setCellValue('D'.($F+1), 'CUMPLIO')
            ->setCellValue('E'.($F+1), 'QUEDAN')
			->setCellValue('F'.($F+1), 'OBS.');
// Combinar celdas
$objPHPExcel->getActiveSheet()->mergeCells('A'.$F.':F'.$F);
//Centrar texto
$objPHPExcel->getActiveSheet()->getStyle('A'.$I.':F'.($F+1))->getAlignment()->applyFromArray(
      		array(
      			'horizontal' => PHPExcel_Style_Alignment::HORIZONTAL_CENTER,
      			'vertical'   => PHPExcel_Style_Alignment::VERTICAL_CENTER,
      			'rotation'   => 0,
      			'wrap'       => true
      			)
			);							  
$F=$F+2;
$n=1;
//Vaciamos datos
while ( $s = $tercero->fetch ( PDO::FETCH_OBJ ) ) {
	if($s->tte>0){
	$objPHPExcel->setActiveSheetIndex(0)
	->setCellValue('A'.$F, $n)
	->setCellValue('B'.$F,$s->nombre)
	->setCellValue('C'.$F,$s->tte);	
	//FONT
	$objPHPExcel->getActiveSheet()->getStyle('A'.$F)->getFont()->setSize(9);
	$objPHPExcel->getActiveSheet()->getStyle('B'.$F)->getFont()->setSize(9);
	$objPHPExcel->getActiveSheet()->getStyle('C'.$F)->getFont()->setSize(9);
	$n ++;
	$F++;
	}
}
//Bordes
$objPHPExcel->getActiveSheet()->getStyle('A'.$I.':F'.($F-1))->getBorders()->applyFromArray(
      		array(
      			'allborders' => array(
      				'style' => PHPExcel_Style_Border::BORDER_THIN,
      				'color' => array(
      					'rgb' => '808080'
      				)
      			)
      		)
      );      
//fuentes
$objPHPExcel->getActiveSheet()->getStyle('A'.$I.':F'.($I+1))->getFont()->setSize(10);

//titulos 2do Año
$F++;
$I=$F;
$objPHPExcel->setActiveSheetIndex(0)
            ->setCellValue('A'.$F, '2do AÑO')
            ->setCellValue('A'.($F+1), 'N')
            ->setCellValue('B'.($F+1), 'NOMBRE COMPLETO')
            ->setCellValue('C'.($F+1), 'TTE')
            ->setCellValue('D'.($F+1), 'CUMPLIO')
            ->setCellValue('E'.($F+1), 'QUEDAN')
			->setCellValue('F'.($F+1), 'OBS.');
// Combinar celdas
$objPHPExcel->getActiveSheet()->mergeCells('A'.$F.':F'.$F);
//Centrar texto
$objPHPExcel->getActiveSheet()->getStyle('A'.$I.':F'.($F+1))->getAlignment()->applyFromArray(
      		array(
      			'horizontal' => PHPExcel_Style_Alignment::HORIZONTAL_CENTER,
      			'vertical'   => PHPExcel_Style_Alignment::VERTICAL_CENTER,
      			'rotation'   => 0,
      			'wrap'       => true
      			)
			);							  
$F=$F+2;
$n=1;
//Vaciamos datos
while ( $s = $segundo->fetch ( PDO::FETCH_OBJ ) ) {
	if($s->tte>0){
	$objPHPExcel->setActiveSheetIndex(0)
	->setCellValue('A'.$F, $n)
	->setCellValue('B'.$F,$s->nombre)
	->setCellValue('C'.$F,$s->tte);	
	//FONT
	$objPHPExcel->getActiveSheet()->getStyle('A'.$F)->getFont()->setSize(9);
	$objPHPExcel->getActiveSheet()->getStyle('B'.$F)->getFont()->setSize(9);
	$objPHPExcel->getActiveSheet()->getStyle('C'.$F)->getFont()->setSize(9);
	$n ++;
	$F++;
	}
}
//Bordes
$objPHPExcel->getActiveSheet()->getStyle('A'.$I.':F'.($F-1))->getBorders()->applyFromArray(
      		array(
      			'allborders' => array(
      				'style' => PHPExcel_Style_Border::BORDER_THIN,
      				'color' => array(
      					'rgb' => '808080'
      				)
      			)
      		)
      );      
//fuentes
$objPHPExcel->getActiveSheet()->getStyle('A'.$I.':F'.($I+1))->getFont()->setSize(10);

//titulos 1ro Año
$F++;
$I=$F;
$objPHPExcel->setActiveSheetIndex(0)
            ->setCellValue('A'.$F, '1er AÑO')
            ->setCellValue('A'.($F+1), 'N')
            ->setCellValue('B'.($F+1), 'NOMBRE COMPLETO')
            ->setCellValue('C'.($F+1), 'TTE')
            ->setCellValue('D'.($F+1), 'CUMPLIO')
            ->setCellValue('E'.($F+1), 'QUEDAN')
			->setCellValue('F'.($F+1), 'OBS.');
// Combinar celdas
$objPHPExcel->getActiveSheet()->mergeCells('A'.$F.':F'.$F);
//Centrar texto
$objPHPExcel->getActiveSheet()->getStyle('A'.$I.':F'.($F+1))->getAlignment()->applyFromArray(
      		array(
      			'horizontal' => PHPExcel_Style_Alignment::HORIZONTAL_CENTER,
      			'vertical'   => PHPExcel_Style_Alignment::VERTICAL_CENTER,
      			'rotation'   => 0,
      			'wrap'       => true
      			)
			);							  
$F=$F+2;
$n=1;
//Vaciamos datos
while ( $s = $primero->fetch ( PDO::FETCH_OBJ ) ) {
	if($s->tte>0){
	$objPHPExcel->setActiveSheetIndex(0)
	->setCellValue('A'.$F, $n)
	->setCellValue('B'.$F,$s->nombre)
	->setCellValue('C'.$F,$s->tte);	
	//FONT
	$objPHPExcel->getActiveSheet()->getStyle('A'.$F)->getFont()->setSize(9);
	$objPHPExcel->getActiveSheet()->getStyle('B'.$F)->getFont()->setSize(9);
	$objPHPExcel->getActiveSheet()->getStyle('C'.$F)->getFont()->setSize(9);
	$n ++;
	$F++;
	}
}
//Bordes
$objPHPExcel->getActiveSheet()->getStyle('A'.$I.':F'.($F-1))->getBorders()->applyFromArray(
      		array(
      			'allborders' => array(
      				'style' => PHPExcel_Style_Border::BORDER_THIN,
      				'color' => array(
      					'rgb' => '808080'
      				)
      			)
      		)
      );      
//fuentes
$objPHPExcel->getActiveSheet()->getStyle('A'.$I.':F'.($I+1))->getFont()->setSize(10);

//	incluyendo	texto
$objPHPExcel->setActiveSheetIndex(0)->setCellValue('A'.$F, 'Según el Art.12-183. Para los fines de cumplimiento de turnos de trabajo extra se cumplirá un turno de trabajo por:')
									->setCellValue('A'.($F+1), 'a.-20 minutos de trabajo sin armas.')
									->setCellValue('A'.($F+2), 'b.-15 minutos de trabajo con armas (un fusil).')
									->setCellValue('A'.($F+3), 'c.-10 minutos de trote sin armas.')
									->setCellValue('A'.($F+4), 'd.-5 minutos de trote con armas (un fusil).')
									->setCellValue('A'.($F+5), 'e.-15 minutos de gimnasia sin armas.')
									->setCellValue('A'.($F+6), 'f.-10 minutos de gimnasia con armas (un fusil).')
									->setCellValue('A'.($F+7), 'g.-10 minutos de manejo de fusil.')
									->setCellValue('A'.($F+8), 'h.-30 minutos caminata o boga.')
									->setCellValue('A'.($F+9), 'i.-20 minutos plantón sin armas.')
									->setCellValue('A'.($F+10), 'j.-10 minutos plantón con armas ')
									->setCellValue('A'.($F+11), 'k.-30 minutos aseo locales de Cadetes.')
									->setCellValue('A'.($F+12), 'l.-30 minutos de trabajos territoriales.')
									->setCellValue('A'.($F+13), 'm.-30 minutos baldeo a bordo.')
									->setCellValue('A'.($F+14), 'l.-30 minutos de trabajos territoriales.')
									->setCellValue('A'.($F+15), 'n.-15 minutos de limpieza de cañones o trofeos, y aquellos de índole similar tanto en ejecución como en duración.')
									
									->setCellValue('A'.($F+18), ''.$_SESSION['jefeCuerpo'])
									->setCellValue('A'.($F+19), 'JEFE DE DIVISION DISCIPLINA');
// Combinar celdas
$objPHPExcel->getActiveSheet()->mergeCells('A'.($F+19).':F'.($F+19))
							  ->mergeCells('A'.($F+18).':F'.($F+18));									
									//Centrar texto
$objPHPExcel->getActiveSheet()->getStyle('A'.($F+18).':F'.($F+19))->getAlignment()->applyFromArray(
      		array(
      			'horizontal' => PHPExcel_Style_Alignment::HORIZONTAL_CENTER,
      			'vertical'   => PHPExcel_Style_Alignment::VERTICAL_CENTER,
      			'rotation'   => 0,
      			'wrap'       => true
      			)
			);										
									
									
									/*

<div align=\"center\">".$_SESSION['jefeCuerpo']."<br><b>JEFE DE DIVISION DISCIPLINA</b></br></div>

*/

$objPHPExcel->getActiveSheet()->getStyle('A'.$F.':A'.($F+20))->getFont()->setSize(8);
// Rename sheet
$objPHPExcel->getActiveSheet()->setTitle('Lista TTE');

// Set active sheet index to the first sheet, so Excel opens this as the first sheet
$objPHPExcel->getActiveSheet();

// Redirect output to a clientâs web browser (Excel2007)
header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
header('Content-Disposition: attachment;filename="TurnosSinSalida.xlsx"');
header('Cache-Control: max-age=0');

$objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel2007');
$objWriter->save('php://output');
exit;
