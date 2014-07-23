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


if (!file_exists("views/cadetes/TEMPLATE.xlsx")) {
	exit("Ocurrio un error favor consultar don administrador del sistema.\n");
}
$objPHPExcel = PHPExcel_IOFactory::load("views/cadetes/TEMPLATE.xlsx");
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
//nombre del cadete
$objPHPExcel->setActiveSheetIndex(0)->setCellValue('C2', $gest);
$objPHPExcel->setActiveSheetIndex(0)->setCellValue('C3', $nombre);
$objPHPExcel->setActiveSheetIndex(0)->setCellValue('J2', $semestre);
$objPHPExcel->setActiveSheetIndex(0)->setCellValue('J3', $curso);
$objPHPExcel->setActiveSheetIndex(0)->setCellValue('N2', $puntosSemestre);
$objPHPExcel->setActiveSheetIndex(0)->setCellValue('K26', $coeficiente);

//filas
$F=6;
$pd=0;
$tss=0;
$tte=0;
$ttec=0;
$tssc=0;
//Vaciamos datos
while ( $f = $faltas->fetch ( PDO::FETCH_OBJ ) ) {	
	$objPHPExcel->setActiveSheetIndex(0)
	->setCellValue('A'.$F, $f->fechaFalta)
	->setCellValue('B'.$F,$f->falta)
	->setCellValue('C'.$F,$f->sancionante)
	->setCellValue('D'.$F,$f->numeroParte)
	->setCellValue('E'.$F,$f->clase)
	->setCellValue('F'.$F,$f->reincidencia)
	->setCellValue('G'.$F,$f->partesDemerito)
	->setCellValue('H'.$F,$f->tss)
	->setCellValue('I'.$F,$f->tte)
	->setCellValue('J'.$F,$f->tssc)
	->setCellValue('L'.$F,$f->ttec);
	
	//FONT
	$objPHPExcel->getActiveSheet()->getStyle('B'.$F)->getFont()->setSize(7);
	//$objPHPExcel->getActiveSheet()->getStyle('B'.$F)->getFont()->setSize(9);
	//$objPHPExcel->getActiveSheet()->getStyle('C'.$F)->getFont()->setSize(9);
$pd+=$f->partesDemerito;
$tss+=$f->tss;
$tte+=$f->tte;
$tssc+=intval($f->tssc);
$ttec+=intval($f->ttec);	
	$F++;
	
}

$objPHPExcel->getActiveSheet()->setTitle('Lista TSS');

// Set active sheet index to the first sheet, so Excel opens this as the first sheet
$objPHPExcel->setActiveSheetIndex(0);

// Redirect output to a client’s web browser (Excel2007)

header('Content-Type: application/pdf');
header('Content-Disposition: attachment;filename="01simple.pdf"');
header('Cache-Control: max-age=0');

$objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'PDF');
$objWriter->save('php://output');

exit;
