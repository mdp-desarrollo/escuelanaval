<?php
class reportesController extends ControllerBase {
	private $reporte;
	
	public function __construct() {
		require 'models/reportesModel.php';
		$this->reporte = new reportesModel ();
	}
	//turnos sin salida
	public function tss() {
		$quinto = $this->reporte->tss ( 5 );
		$cuarto = $this->reporte->tss ( 4 );
		$tercero = $this->reporte->tss ( 3 );
		$segundo = $this->reporte->tss ( 2 );
		$primero = $this->reporte->tss ( 1 );
		if ($path = $this->existeFichero ( "reportes/tss2.php" ))
			include ($path);
	}	
	public function listjson_tss(){
		$turnos=array();
		$i=0;
		$j=1;
		//Quinto
		$quint = $this->reporte->tss ( 5 )->fetchAll(PDO::FETCH_OBJ);			 
		foreach($quint as $q){
			if($q->tss>0){
			$turnos[$i]["i"]=$i;
			$turnos[$i]["id"]=$j;
			$turnos[$i]["nombre"]=$this->limpiarCadena($q->nombre);
			$turnos[$i]["tss"]=$q->tss;
			$turnos[$i]["curso"]="5to;";
			$i++;
			$j++;
			}
		}
		$j=1;
		$quint = $this->reporte->tss ( 4 )->fetchAll(PDO::FETCH_OBJ);			 
		foreach($quint as $q){
			if($q->tss>0){
			$turnos[$i]["i"]=$i;
			$turnos[$i]["id"]=$j;
			$turnos[$i]["nombre"]=$this->limpiarCadena($q->nombre);
			$turnos[$i]["tss"]=$q->tss;
			$turnos[$i]["curso"]="4to";
			$i++;
			$j++;
			}
		} 
		$j=1;
		$quint = $this->reporte->tss ( 3 )->fetchAll(PDO::FETCH_OBJ);			 
		foreach($quint as $q){
			if($q->tss>0){
			$turnos[$i]["i"]=$i;
			$turnos[$i]["id"]=$j;
			$turnos[$i]["nombre"]=$this->limpiarCadena($q->nombre);
			$turnos[$i]["tss"]=$q->tss;
			$turnos[$i]["curso"]="3ro";
			$i++;
			$j++;
			}
		}
		$j=1;
		$quint = $this->reporte->tss ( 2 )->fetchAll(PDO::FETCH_OBJ);			 
		foreach($quint as $q){
			if($q->tss>0){
			$turnos[$i]["i"]=$i;
			$turnos[$i]["id"]=$j;
			$turnos[$i]["nombre"]=$this->limpiarCadena($q->nombre);
			$turnos[$i]["tss"]=$q->tss;
			$turnos[$i]["curso"]="2do";
			$i++;
				$j++;
			}
		}
		$j=1;
		$quint = $this->reporte->tss (1 )->fetchAll(PDO::FETCH_OBJ);			 
		foreach($quint as $q){
			if($q->tss>0){
			$turnos[$i]["i"]=$i;
			$turnos[$i]["id"]=$j;
			$turnos[$i]["nombre"]=$this->limpiarCadena($q->nombre);
			$turnos[$i]["tss"]=$q->tss;
			$turnos[$i]["curso"]="1ro";
			$i++;
			$j++;
			}
		}
		echo json_encode($turnos);
	}
	//turnos tiempo extra
public function listjson_tte(){
		$tiempo=array();
		$i=0;
		$j=1;
		//Quinto
		$quint = $this->reporte->tte ( 5 )->fetchAll(PDO::FETCH_OBJ);			 
		foreach($quint as $q){
			if($q->tte>0){
			$turnos[$i]["i"]=$i;
			$turnos[$i]["id"]=$j;
			$turnos[$i]["nombre"]=$this->limpiarCadena($q->nombre);
			$turnos[$i]["tte"]=$q->tte;
			$turnos[$i]["curso"]="5to;";
			$i++;
			$j++;
			}
		}
		$j=1;
		$quint = $this->reporte->tte( 4 )->fetchAll(PDO::FETCH_OBJ);			 
		foreach($quint as $q){
			if($q->tte>0){
			$turnos[$i]["i"]=$i;
			$turnos[$i]["id"]=$j;
			$turnos[$i]["nombre"]=$this->limpiarCadena($q->nombre);
			$turnos[$i]["tte"]=$q->tte;
			$turnos[$i]["curso"]="4to";
			$i++;
			$j++;
			}
		} 
		$j=1;
		$quint = $this->reporte->tte ( 3 )->fetchAll(PDO::FETCH_OBJ);			 
		foreach($quint as $q){
			if($q->tte>0){
			$turnos[$i]["i"]=$i;
			$turnos[$i]["id"]=$j;
			$turnos[$i]["nombre"]=$this->limpiarCadena($q->nombre);
			$turnos[$i]["tte"]=$q->tte;
			$turnos[$i]["curso"]="3ro";
			$i++;
			$j++;
			}
		}
		$j=1;
		$quint = $this->reporte->tte ( 2 )->fetchAll(PDO::FETCH_OBJ);			 
		foreach($quint as $q){
			if($q->tte>0){
			$turnos[$i]["i"]=$i;
			$turnos[$i]["id"]=$j;
			$turnos[$i]["nombre"]=$this->limpiarCadena($q->nombre);
			$turnos[$i]["tte"]=$q->tte;
			$turnos[$i]["curso"]="2do";
			$i++;
				$j++;
			}
		}
		$j=1;
		$quint = $this->reporte->tte(1 )->fetchAll(PDO::FETCH_OBJ);			 
		foreach($quint as $q){
			if($q->tte>0){
			$turnos[$i]["i"]=$i;
			$turnos[$i]["id"]=$j;
			$turnos[$i]["nombre"]=$this->limpiarCadena($q->nombre);
			$turnos[$i]["tte"]=$q->tte;
			$turnos[$i]["curso"]="1ro";
			$i++;
			$j++;
			}
		}
		echo json_encode($turnos);
	}
	public function imprimirTSS(){
		$quinto = $this->reporte->tss ( 5 );
		$cuarto = $this->reporte->tss ( 4 );
		$tercero = $this->reporte->tss ( 3 );
		$segundo = $this->reporte->tss ( 2 );
		$primero = $this->reporte->tss ( 1 );
		if ($path = $this->existeFichero ( "reportes/printtss.php" ))
			include ($path);
	}
//Eportar a Excel 2007
public function exportExcel_TSS(){
		$quinto = $this->reporte->tss ( 5 );
		$cuarto = $this->reporte->tss ( 4 );
		$tercero = $this->reporte->tss ( 3 );
		$segundo = $this->reporte->tss ( 2 );
		$primero = $this->reporte->tss ( 1 );
	if ($path = $this->existeFichero ( "reportes/tss_excel.php" ))
			include ($path);
}
public function viewTSS(){
		$quinto = $this->reporte->tss ( 5 );
		$cuarto = $this->reporte->tss ( 4 );
		$tercero = $this->reporte->tss ( 3 );
		$segundo = $this->reporte->tss ( 2 );
		$primero = $this->reporte->tss ( 1 );
		if ($path = $this->existeFichero ( "reportes/viewtss.php" ))
			include ($path);
	}
//exportar a pdf
	public function pdfTSS(){			
		$quinto = $this->reporte->tss ( 5 );
		$cuarto = $this->reporte->tss ( 4 );
		$tercero = $this->reporte->tss ( 3 );
		$segundo = $this->reporte->tss ( 2 );
		$primero = $this->reporte->tss ( 1 );
		if ($path = $this->existeFichero ( "reportes/pdftss.php" ))
			include ($path);
	}
// turnos trabajo extra
	public function tte() {
		if ($path = $this->existeFichero ( "reportes/tte2.php" ))
			include ($path);
	}
public function imprimirTTE(){
		$quinto = $this->reporte->tte ( 5 );
		$cuarto = $this->reporte->tte ( 4 );
		$tercero = $this->reporte->tte ( 3 );
		$segundo = $this->reporte->tte ( 2 );
		$primero = $this->reporte->tte ( 1 );
		if ($path = $this->existeFichero ( "reportes/printtte.php" ))
			include ($path);
	}
	public function viewTTE(){
		$quinto = $this->reporte->tte ( 5 );
		$cuarto = $this->reporte->tte ( 4 );
		$tercero = $this->reporte->tte ( 3 );
		$segundo = $this->reporte->tte ( 2 );
		$primero = $this->reporte->tte ( 1 );
		if ($path = $this->existeFichero ( "reportes/viewtte.php" ))
			include ($path);
	}
//esportar a excel 2007
public function tte_excel(){
		$quinto = $this->reporte->tte ( 5 );
		$cuarto = $this->reporte->tte ( 4 );
		$tercero = $this->reporte->tte ( 3 );
		$segundo = $this->reporte->tte ( 2 );
		$primero = $this->reporte->tte ( 1 );
		if ($path = $this->existeFichero ( "reportes/tte_excel.php" ))
			include ($path);
	}	
	public function index() {
		$lista = $this->cadete->listar ();
		if ($path = $this->existeFichero ( "slickgrid/cadetes.php" ))
			include ($path);
	}
	public function lista_json() {
		$lista = $this->cadete->listar_json ();
		$i = 0;
		$cadetes = array ();
		while ( $c = $lista->fetch ( PDO::FETCH_OBJ ) ) {
			$cadetes [$i] ["id"] = $c->idCadete;
			$cadetes [$i] ["nombre"] = $this->limpiarCadena ( $c->paterno . " " . $c->materno . " " . $c->nombres );
			$cadetes [$i] ["codigo"] = $c->codigo;
			$cadetes [$i] ["curso"] = $c->curso;
			$i ++;
		}
		echo json_encode ( $cadetes );
	}
	public function listar_grid() {
		$lista = $this->cadete->listar ();
		if ($path = $this->existeFichero ( "slickgrid/cadetes.php" )) {
			include ($path);
		}
	}
	public function listar() {
		$lista = $this->cadete->listar ();
		if ($path = $this->existeFichero ( "slickgrid/adminCadetes.php" )) {
			include ($path);
		}
	}
	//DEscripcion del cadete dado el item
	public function descripcion() {
		$idc = $_GET ['idc'];
		$gestion = $_SESSION ['idgestion'];
		$cadete = $this->cadete->informacion ( $idc, $gestion )->fetchAll ( PDO::FETCH_OBJ );
		foreach ( $cadete as $c ) {
			$nombre = $c->paterno . " " . $c->materno . " " . $c->nombres;
			$curso = $c->curso2;
			$codigo = $c->codigo;
			$coeficiente = $c->coeficiente;
			$puntosSemestre = $c->puntosSemestre;
		}
		//faltas cometidas por el cadete
		$faltas = $this->cadete->faltasActuales ( $idc, $gestion )->fetchAll ( PDO::FETCH_OBJ );
		//		$faltasGenerales=$this->cadete->faltasActuales();
		if ($path = $this->existeFichero ( "cadetes/folder.php" )) {
			//		if ($path = $this->existeFichero ( "slickgrid/descripcion.php" )) {
			include ($path);
		}
	}
	function vistaPrevia() {
		$idc = $_GET ['idc'];
		$gestion = $_SESSION ['idgestion'];
		$cadete = $this->cadete->informacion ( $idc, $gestion )->fetchAll ( PDO::FETCH_OBJ );
		foreach ( $cadete as $c ) {
			$nombre = $c->paterno . " " . $c->materno . " " . $c->nombres;
			$curso = $c->curso2;
			$codigo = $c->codigo;
			$coeficiente = $c->coeficiente;
			$puntosSemestre = $c->puntosSemestre;
		}
		//faltas cometidas por el cadete
		$faltas = $this->cadete->faltasActuales ( $idc, $gestion )->fetchAll ( PDO::FETCH_OBJ );
		//		$faltasGenerales=$this->cadete->faltasActuales();
		if ($path = $this->existeFichero ( "cadetes/vistaPrevia.php" )) {
			//		if ($path = $this->existeFichero ( "slickgrid/descripcion.php" )) {
			include ($path);
		}
	}
	//Ver reincidencia del cadete ante una falta y devolver los punto de demerito
	function reincidencia() {
		$idc = $_GET ['idc'];
		$gestion = $_GET ['gestion'];
		$falta = $_GET ['falta'];
		//Reincidencias
		$res = $this->cadete->verReincidencia ( $idc, $gestion, $falta );
		$r = 0;
		$rmax = 1;
		$datos = array ();
		$i = 0;
		while ( $c = $res->fetch () ) {
			$r = $c ['res']; //numero de reincidencias
			$rmax = $c ['rMaxima'];
			$obs = $c ['observaciones'];
		}
		if ($r <= $rmax) {
			//puntos Demerito
			$sanciones = $this->cadete->Puntos ( $falta, $r );
			while ( $c = $sanciones->fetch ( PDO::FETCH_OBJ ) ) {
				$datos [$i] ["puntosDemerito"] = $c->puntosDemerito;
				$datos [$i] ["tte"] = $c->tte;
				$datos [$i] ["reincidencia"] = $r;
				$datos [$i] ["tss"] = $c->tss;
				$datos [$i] ["reinc"] = $r;
				$datos [$i] ["rmax"] = $obs;
				$i ++;
			}
		} else {
			$datos [$i] ["rmax"] = "";
			$datos [$i] ["obs"] = "servicios ";
		}
		echo json_encode ( $datos );
	}
	function reincidencia2() {
		$idc = $_GET ['idc'];
		$gestion = $_GET ['gestion'];
		$falta = $_GET ['falta'];
		$puntos = $_GET ['pd'];
		//Reincidencias
		$res = $this->cadete->verReincidencia ( $idc, $gestion, $falta );
		$r = 0;
		while ( $c = $res->fetch ( PDO::FETCH_COLUMN ) ) {
			$r = $c ['res']; //numero de reincidencias
		}
		//puntos Demerito
		$puntosDemerito = $this->cadete->verPuntos ( $puntos );
		while ( $c = $puntosDemerito->fetch ( PDO::FETCH_OBJ ) ) {
			$num = $c->num;
		}
		//puntos de demerito + reincidencias
		$rc = $r + $num;
		$puntosDemerito = $this->cadete->verPuntosR ( $rc );
		$datos = array ();
		$i = 0;
		while ( $c = $puntosDemerito->fetch ( PDO::FETCH_OBJ ) ) {
			$datos [$i] ["puntosDemerito"] = $c->puntosDemerito;
			$datos [$i] ["tte"] = $c->tte;
			$datos [$i] ["reincidencia"] = $r;
			$datos [$i] ["tss"] = $c->tss;
			$datos [$i] ["aSimpleLI"] = $c->aSimpleLI;
			$datos [$i] ["aSimpleED"] = $c->aSimpleED;
			$datos [$i] ["aSeveroCS"] = $c->aSeveroCS;
			$datos [$i] ["aSeveroSD"] = $c->aSeveroSD;
			$datos [$i] ["perdidaVacacion"] = $c->perdidaVacacion;
			$datos [$i] ["reinc"] = $r;
			$i ++;
		}
		echo json_encode ( $datos );
	}
//Funcion para cambiar el formato de tildes y acentos
	function limpiarCadena($s) {
		$s = str_replace ( "Á", "&Aacute;", $s );
		$s = str_replace ( "á", "&aacute;", $s );
		$s = str_replace ( "É", "&Eacute;", $s );
		$s = str_replace ( "é", "&eacute;", $s );
		$s = str_replace ( "Í", "&Iacute;", $s );
		$s = str_replace ( "í", "&iacute;", $s );
		$s = str_replace ( "Ó", "&Oacute;", $s );
		$s = str_replace ( "ó", "&oacute;", $s );
		$s = str_replace ( "Ú", "&Uacute;", $s );
		$s = str_replace ( "ú", "&uacute;", $s );
		$s = str_replace ( "Ñ", "&Ntilde;", $s );
		$s = str_replace ( "ñ", "&ntilde;", $s );
		$s = str_replace ( "Ü", "&Uuml;", $s );
		$s = str_replace ( "ü", "&uuml;", $s );
		
		$s = str_replace ( "Ü", "&Uuml;", $s );
		return $s;
	}
	public function registrarFalta() {	
	}
	
}
?>