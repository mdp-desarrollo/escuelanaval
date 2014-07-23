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


if (!file_exists("views/cadetes/tss.xlsx")) {
	exit("Ocurrio un error favor consultar con el administrador del sistema.\n");
}
$objPHPExcel = PHPExcel_IOFactory::load("views/cadetes/tss.xlsx");
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
$objPHPExcel->getActiveSheet()->getColumnDimension('A')->setWidth(4);
$objPHPExcel->getActiveSheet()->getColumnDimension('B')->setAutoSize(true);
$objPHPExcel->getActiveSheet()->getColumnDimension('C')->setWidth(4);
$objPHPExcel->getActiveSheet()->getColumnDimension('D')->setWidth(8);
$objPHPExcel->getActiveSheet()->getColumnDimension('E')->setWidth(8);
$objPHPExcel->getActiveSheet()->getColumnDimension('F')->setWidth(8);
$objPHPExcel->getActiveSheet()->getColumnDimension('G')->setWidth(8);
$objPHPExcel->getActiveSheet()->getColumnDimension('H')->setWidth(8);
$objPHPExcel->getActiveSheet()->getColumnDimension('I')->setWidth(8);

$objPHPExcel->getActiveSheet()->getStyle('B1')->getFont()->setBold(true);
$objPHPExcel->getActiveSheet()->getStyle('B1')->getFont()->setUnderline(PHPExcel_Style_Font::UNDERLINE_SINGLE);
$objPHPExcel->getActiveSheet()->getStyle('B1')->getFont()->getColor()->setARGB(PHPExcel_Style_Color::COLOR_WHITE);
							  
$F=3;						  
//titulos 5to A�o
$I=$F;
$objPHPExcel->setActiveSheetIndex(0)
            ->setCellValue('A'.$F, '5to AÑO')
            ->setCellValue('A'.($F+1), 'N')
            ->setCellValue('B'.($F+1), 'NOMBRE COMPLETO')
            ->setCellValue('C'.($F+1), 'TSS')
            ->setCellValue('D'.($F+1), 'SABADO')
            ->setCellValue('G'.($F+1), 'DOMINGO')
			->setCellValue('D'.($F+2), 'CUMPLIO')
			->setCellValue('E'.($F+2), 'QUEDAN')
			->setCellValue('F'.($F+2), 'OBS')
			->setCellValue('G'.($F+2), 'CUMPLIO')
			->setCellValue('H'.($F+2), 'QUEDAN')
			->setCellValue('I'.($F+2), 'OBS');
// Combinar celdas
$objPHPExcel->getActiveSheet()->mergeCells('A'.$F.':I'.$F)
							  ->mergeCells('A'.($F+1).':A'.($F+2))
							  ->mergeCells('B'.($F+1).':B'.($F+2))
							  ->mergeCells('C'.($F+1).':C'.($F+2))
							  ->mergeCells('D'.($F+1).':F'.($F+1))
							  ->mergeCells('G'.($F+1).':I'.($F+1));
//Centrar texto
$objPHPExcel->getActiveSheet()->getStyle('A'.$F.':I'.($F+2))->getAlignment()->applyFromArray(
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
	if($s->tss>0){
	$objPHPExcel->setActiveSheetIndex(0)
	->setCellValue('A'.$F, $n)
	->setCellValue('B'.$F,$s->nombre)
	->setCellValue('C'.$F,$s->tss);	
	//FONT
	$objPHPExcel->getActiveSheet()->getStyle('A'.$F)->getFont()->setSize(9);
	$objPHPExcel->getActiveSheet()->getStyle('B'.$F)->getFont()->setSize(9);
	$objPHPExcel->getActiveSheet()->getStyle('C'.$F)->getFont()->setSize(9);
	$n ++;
	$F++;
	}
}
//Bordes
$objPHPExcel->getActiveSheet()->getStyle('A'.$I.':I'.($F-1))->getBorders()->applyFromArray(
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
$objPHPExcel->getActiveSheet()->getStyle('A'.$I.':I'.($I+2))->getFont()->setSize(10);


//titulos 4to A�o
$F++;
$I=$F;
$objPHPExcel->setActiveSheetIndex(0)
            ->setCellValue('A'.$F, '4to AÑO')
            ->setCellValue('A'.($F+1), 'N')
            ->setCellValue('B'.($F+1), 'NOMBRE COMPLETO')
            ->setCellValue('C'.($F+1), 'TSS')
            ->setCellValue('D'.($F+1), 'SABADO')
            ->setCellValue('G'.($F+1), 'DOMINGO')
			->setCellValue('D'.($F+2), 'CUMPLIO')
			->setCellValue('E'.($F+2), 'QUEDAN')
			->setCellValue('F'.($F+2), 'OBS')
			->setCellValue('G'.($F+2), 'CUMPLIO')
			->setCellValue('H'.($F+2), 'QUEDAN')
			->setCellValue('I'.($F+2), 'OBS');
// Combinar celdas
$objPHPExcel->getActiveSheet()->mergeCells('A'.$F.':I'.$F)
							  ->mergeCells('A'.($F+1).':A'.($F+2))
							  ->mergeCells('B'.($F+1).':B'.($F+2))
							  ->mergeCells('C'.($F+1).':C'.($F+2))
							  ->mergeCells('D'.($F+1).':F'.($F+1))
							  ->mergeCells('G'.($F+1).':I'.($F+1));
//Centrar texto
$objPHPExcel->getActiveSheet()->getStyle('A'.$I.':I'.($F+2))->getAlignment()->applyFromArray(
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
while ( $s = $cuarto->fetch ( PDO::FETCH_OBJ ) ) {
	if($s->tss>0){
	$objPHPExcel->setActiveSheetIndex(0)
	->setCellValue('A'.$F, $n)
	->setCellValue('B'.$F,$s->nombre)
	->setCellValue('C'.$F,$s->tss);	
	//FONT
	$objPHPExcel->getActiveSheet()->getStyle('A'.$F)->getFont()->setSize(9);
	$objPHPExcel->getActiveSheet()->getStyle('B'.$F)->getFont()->setSize(9);
	$objPHPExcel->getActiveSheet()->getStyle('C'.$F)->getFont()->setSize(9);
	$n ++;
	$F++;
	}
}
//Bordes
$objPHPExcel->getActiveSheet()->getStyle('A'.$I.':I'.($F-1))->getBorders()->applyFromArray(
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
$objPHPExcel->getActiveSheet()->getStyle('A'.$I.':I'.($I+2))->getFont()->setSize(10);

//titulos 3to A�o
$F++;
$I=$F;
$objPHPExcel->setActiveSheetIndex(0)
            ->setCellValue('A'.$F, '3er AÑO')
            ->setCellValue('A'.($F+1), 'N')
            ->setCellValue('B'.($F+1), 'NOMBRE COMPLETO')
            ->setCellValue('C'.($F+1), 'TSS')
            ->setCellValue('D'.($F+1), 'SABADO')
            ->setCellValue('G'.($F+1), 'DOMINGO')
			->setCellValue('D'.($F+2), 'CUMPLIO')
			->setCellValue('E'.($F+2), 'QUEDAN')
			->setCellValue('F'.($F+2), 'OBS')
			->setCellValue('G'.($F+2), 'CUMPLIO')
			->setCellValue('H'.($F+2), 'QUEDAN')
			->setCellValue('I'.($F+2), 'OBS');
// Combinar celdas
$objPHPExcel->getActiveSheet()->mergeCells('A'.$F.':I'.$F)
							  ->mergeCells('A'.($F+1).':A'.($F+2))
							  ->mergeCells('B'.($F+1).':B'.($F+2))
							  ->mergeCells('C'.($F+1).':C'.($F+2))
							  ->mergeCells('D'.($F+1).':F'.($F+1))
							  ->mergeCells('G'.($F+1).':I'.($F+1));
//Centrar texto
$objPHPExcel->getActiveSheet()->getStyle('A'.$I.':I'.($F+2))->getAlignment()->applyFromArray(
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
while ( $s = $tercero->fetch ( PDO::FETCH_OBJ ) ) {
	if($s->tss>0){
	$objPHPExcel->setActiveSheetIndex(0)
	->setCellValue('A'.$F, $n)
	->setCellValue('B'.$F,$s->nombre)
	->setCellValue('C'.$F,$s->tss);	
	//FONT
	$objPHPExcel->getActiveSheet()->getStyle('A'.$F)->getFont()->setSize(9);
	$objPHPExcel->getActiveSheet()->getStyle('B'.$F)->getFont()->setSize(9);
	$objPHPExcel->getActiveSheet()->getStyle('C'.$F)->getFont()->setSize(9);
	$n ++;
	$F++;
	}
}
//Bordes
$objPHPExcel->getActiveSheet()->getStyle('A'.$I.':I'.($F-1))->getBorders()->applyFromArray(
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
$objPHPExcel->getActiveSheet()->getStyle('A'.$I.':I'.($I+2))->getFont()->setSize(10);

//titulos 2do A�o
$F++;
$I=$F;
$objPHPExcel->setActiveSheetIndex(0)
            ->setCellValue('A'.$F, '2do AÑO')
            ->setCellValue('A'.($F+1), 'N')
            ->setCellValue('B'.($F+1), 'NOMBRE COMPLETO')
            ->setCellValue('C'.($F+1), 'TSS')
            ->setCellValue('D'.($F+1), 'SABADO')
            ->setCellValue('G'.($F+1), 'DOMINGO')
			->setCellValue('D'.($F+2), 'CUMPLIO')
			->setCellValue('E'.($F+2), 'QUEDAN')
			->setCellValue('F'.($F+2), 'OBS')
			->setCellValue('G'.($F+2), 'CUMPLIO')
			->setCellValue('H'.($F+2), 'QUEDAN')
			->setCellValue('I'.($F+2), 'OBS');
// Combinar celdas
$objPHPExcel->getActiveSheet()->mergeCells('A'.$F.':I'.$F)
							  ->mergeCells('A'.($F+1).':A'.($F+2))
							  ->mergeCells('B'.($F+1).':B'.($F+2))
							  ->mergeCells('C'.($F+1).':C'.($F+2))
							  ->mergeCells('D'.($F+1).':F'.($F+1))
							  ->mergeCells('G'.($F+1).':I'.($F+1));
//Centrar texto
$objPHPExcel->getActiveSheet()->getStyle('A'.$I.':I'.($F+2))->getAlignment()->applyFromArray(
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
while ( $s = $segundo->fetch ( PDO::FETCH_OBJ ) ) {
	if($s->tss>0){
	$objPHPExcel->setActiveSheetIndex(0)
	->setCellValue('A'.$F, $n)
	->setCellValue('B'.$F,$s->nombre)
	->setCellValue('C'.$F,$s->tss);	
	//FONT
	$objPHPExcel->getActiveSheet()->getStyle('A'.$F)->getFont()->setSize(9);
	$objPHPExcel->getActiveSheet()->getStyle('B'.$F)->getFont()->setSize(9);
	$objPHPExcel->getActiveSheet()->getStyle('C'.$F)->getFont()->setSize(9);
	$n ++;
	$F++;
	}
}
//Bordes
$objPHPExcel->getActiveSheet()->getStyle('A'.$I.':I'.($F-1))->getBorders()->applyFromArray(
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
$objPHPExcel->getActiveSheet()->getStyle('A'.$I.':I'.($I+2))->getFont()->setSize(10);

//titulos 1ro A�o
$F++;
$I=$F;
$objPHPExcel->setActiveSheetIndex(0)
            ->setCellValue('A'.$F, '1er AÑO')
            ->setCellValue('A'.($F+1), 'N')
            ->setCellValue('B'.($F+1), 'NOMBRE COMPLETO')
            ->setCellValue('C'.($F+1), 'TSS')
            ->setCellValue('D'.($F+1), 'SABADO')
            ->setCellValue('G'.($F+1), 'DOMINGO')
			->setCellValue('D'.($F+2), 'CUMPLIO')
			->setCellValue('E'.($F+2), 'QUEDAN')
			->setCellValue('F'.($F+2), 'OBS')
			->setCellValue('G'.($F+2), 'CUMPLIO')
			->setCellValue('H'.($F+2), 'QUEDAN')
			->setCellValue('I'.($F+2), 'OBS');
// Combinar celdas
$objPHPExcel->getActiveSheet()->mergeCells('A'.$F.':I'.$F)
							  ->mergeCells('A'.($F+1).':A'.($F+2))
							  ->mergeCells('B'.($F+1).':B'.($F+2))
							  ->mergeCells('C'.($F+1).':C'.($F+2))
							  ->mergeCells('D'.($F+1).':F'.($F+1))
							  ->mergeCells('G'.($F+1).':I'.($F+1));
//Centrar texto
$objPHPExcel->getActiveSheet()->getStyle('A'.$I.':I'.($F+2))->getAlignment()->applyFromArray(
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
while ( $s = $primero->fetch ( PDO::FETCH_OBJ ) ) {
	if($s->tss>0){
	$objPHPExcel->setActiveSheetIndex(0)
	->setCellValue('A'.$F, $n)
	->setCellValue('B'.$F,$s->nombre)
	->setCellValue('C'.$F,$s->tss);	
	//FONT
	$objPHPExcel->getActiveSheet()->getStyle('A'.$F)->getFont()->setSize(9);
	$objPHPExcel->getActiveSheet()->getStyle('B'.$F)->getFont()->setSize(9);
	$objPHPExcel->getActiveSheet()->getStyle('C'.$F)->getFont()->setSize(9);
	$n ++;
	$F++;
	}
}
//Bordes
$objPHPExcel->getActiveSheet()->getStyle('A'.$I.':I'.($F-1))->getBorders()->applyFromArray(
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
$objPHPExcel->getActiveSheet()->getStyle('A'.$I.':I'.($I+2))->getFont()->setSize(10);

//	incluyendo	texto
$objPHPExcel->setActiveSheetIndex(0)->setCellValue('A'.$F, 'Según el Art. 12-166 del Reglamento de Faltas Disciplinarias. Un turno de salida para los fines de este reglamento')
									->setCellValue('A'.($F+1), 'es el tiempo comprendido dentro de los limites que se especifican a continuación:')
									->setCellValue('A'.($F+2), 'SABADOS')
									->setCellValue('A'.($F+3), '- Desde las 1330 horas hasta las 1900 horas.')
									->setCellValue('A'.($F+4), '- Desde las 1900 horas hasta las 2400 horas.')
									->setCellValue('A'.($F+5), '(salen al da siguiente hrs. 08:30)')
									->setCellValue('A'.($F+6), '')
									->setCellValue('A'.($F+7), 'DOMINGOS Y DIAS FERIADOS COMPLETOS:')
									->setCellValue('A'.($F+8), '- Desde las 0830 horas hasta las 1430 horas')
									->setCellValue('A'.($F+9), '- Desde las 1430 horas hasta las  2100 horas')
									->setCellValue('A'.($F+10), '')
									->setCellValue('A'.($F+11), 'MEDIOS DIAS FERIADOS:')
									->setCellValue('A'.($F+12), '- Desde las 1330 horas hasta las 2100 horas.')
									->setCellValue('A'.($F+15), ''.$_SESSION['jefeCuerpo'])
									->setCellValue('A'.($F+16), 'JEFE DE DIVISION DISCIPLINA');
									
// Combinar celdas
$objPHPExcel->getActiveSheet()->mergeCells('A'.($F+15).':I'.($F+15))
							  ->mergeCells('A'.($F+16).':I'.($F+16));									
									//Centrar texto
$objPHPExcel->getActiveSheet()->getStyle('A'.($F+15).':I'.($F+16))->getAlignment()->applyFromArray(
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

$objPHPExcel->getActiveSheet()->getStyle('A'.$F.':A'.($F+8))->getFont()->setSize(10);
// Rename sheet
$objPHPExcel->getActiveSheet()->setTitle('Lista TSS');

// Set active sheet index to the first sheet, so Excel opens this as the first sheet
$objPHPExcel->getActiveSheet();

// Redirect output to a client’s web browser (Excel2007)
header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
header('Content-Disposition: attachment;filename="TurnosSinSalida.xlsx"');
header('Cache-Control: max-age=0');

$objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel2007');
$objWriter->save('php://output');
exit;
