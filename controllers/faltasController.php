<?php
class faltasController extends ControllerBase {
	private $falta;

	public function __construct() {
		require 'models/faltasModel.php';
		$this->falta = new faltasModel();
	}
	
	public function index() {		
		$falta = $this->fltas->listar();
		if ($path = $this->existeFichero ( "faltas.php" )) {
			include ($path);
		}
	}
	public function lista_json() {		
		$lista=$this->falta->listar_json();
		$i=0;
		$faltas=array();
		while ( $f = $lista->fetch ( PDO::FETCH_OBJ ) ) {
	    $faltas[$i]["id"]=$f->idFalta;
	    $faltas[$i]["falta"]=$this->limpiarCadena(strtoupper($f->falta));
	    $faltas[$i]["clase"]=$f->clase;
		$faltas[$i]["pd"]=$f->puntosDemerito;
		$faltas[$i]["tss"]=$f->tss;
		$faltas[$i]["tte"]=$f->tte;
		$i++;
		}
		echo json_encode($faltas);				
	}
	public function listar_grid() {		
		//$lista=$this->falta->listar();
		if ($path = $this->existeFichero ( "slickgrid/faltas.php" )) {
			include ($path);
		}
	}
	public function listar() {		
		//$lista=$this->falta->listar();
		if ($path = $this->existeFichero ( "slickgrid/faltas2.php" )) {
			include ($path);
		}
	}
	//DEscripcion del cadete dado el item
	public function descripcion(){
		$idc=$_GET['idc'];
		$gestion=$_SESSION['idgestion'];
		$cadete=$this->cadete->informacion($idc,$gestion)->fetchAll ( PDO::FETCH_OBJ );
		foreach($cadete as $c){
		$nombre=$c->paterno." ".$c->materno." ".$c->nombres;
		$curso=$c->curso2;
		$codigo=$c->codigo;			
		}
		//faltas cometidas por el cadete
		$faltas=$this->cadete->faltasActuales($idc,$gestion)->fetchAll ( PDO::FETCH_OBJ );
//		$faltasGenerales=$this->cadete->faltasActuales();
if ($path = $this->existeFichero ( "faltas/folder.php" )) {
//		if ($path = $this->existeFichero ( "slickgrid/descripcion.php" )) {
			include ($path);
		   }				
		}
	//Sancinantes
	function sancionantes_json(){		
		$lista=$this->falta->listar_sancionantes_json();
		$i=0;
		$sancionantes=array();
		while ( $f = $lista->fetch ( PDO::FETCH_OBJ ) ) {
		$sancionantes[$i]["sancionante"]=$f->sancionante;
		$i++;
		}
		echo json_encode($sancionantes);				
	}	
//REgustrar falta del caballero cadete
	public function registrarFalta(){
		$idc=$_POST['idc'];
	if($this->falta->registrarFalta($_POST['idc'],$_POST['gestion'],$this->formatFecha($_POST['fecha']),$_POST['parte'],$_POST['idf'],$_POST['reincidencias'],$_POST['clase'],$_POST['tags'],$_POST['puntosD'],$_POST['tte'],$_POST['tss'],$_POST['asli'],$_POST['ased'],$_POST['ascs'],$_POST['assd'],$_POST['pvac'])>0){
		header("Location: main.php?controller=cadete&action=descripcion&idc=$idc");
		
		}		
	}
//editar una falta del Caballero Cadete
	public function editarFalta(){
		$idc=$_POST['idc'];
		if($this->falta->editarFalta($_POST['idfc'],$_POST['idc'],$_POST['gestion'],$this->formatFecha($_POST['fecha']),$_POST['parte'],$_POST['idf'],$_POST['reincidencias'],$_POST['clase'],$_POST['tags'],$_POST['puntosD'],$_POST['tte'],$_POST['tss'],$_POST['asli'],$_POST['ased'],$_POST['ascs'],$_POST['assd'],$_POST['pvac'])>0){
		header("Location: main.php?controller=cadete&action=descripcion&idc=$idc");		
		}		
	}
		public	function formatFecha($f){
		$fecha=explode("/",$f);
		return $fecha[2]."-".$fecha[1]."-".$fecha[0];		
	}
	function formatFecha2($f){
		$fecha=explode("/",$f);
		return $fecha[2]."-".$fecha[1]."-".$fecha[0];
	}
//Elimiar una falta cometida por una caballero cadete 	
public function eliminarFaltaCometida(){
	$idc=$_GET['idc'];
	$idfc=$_GET['idfc'];
	$this->falta->eliminarFaltaCometida($idfc);	
	header("Location: main.php?controller=cadete&action=descripcion&idc=$idc");
}
//registrar turnos sin salida
public function registrarTSS(){
	$idc=$_GET['idc'];
	$idfc=$_GET['idfc'];
	$tssC=$_GET['tssC'];
	$ok=$this->falta->registrarTSS($tssC,$idfc);
	if($ok)
	header("Location: main.php?controller=cadete&action=descripcion&idc=$idc");
	
}
//registrar turnos de trabajo eztra
public function registrarTTE(){
	$idc=$_GET['idc'];
	$idfc=$_GET['idfc'];
	$tteC=$_GET['tteC'];
	$ok=$this->falta->registrarTTE($tteC,$idfc);
	if($ok)
	header("Location: main.php?controller=cadete&action=descripcion&idc=$idc");
	
}
//Funcion para cambiar el formato de tildes y acentos
	function limpiarCadena($s){
	$s=str_replace("Á","&Aacute;",$s);
	$s=str_replace("á","&aacute;",$s);
	$s=str_replace("É","&Eacute;",$s);
	$s=str_replace("é","&eacute;",$s);
	$s=str_replace("Í","&Iacute;",$s);
	$s=str_replace("í","&iacute;",$s);
	$s=str_replace("Ó","&Oacute;",$s);
	$s=str_replace("ó","&oacute;",$s);
	$s=str_replace("Ú","&Uacute;",$s);
	$s=str_replace("ú","&uacute;",$s);
	$s=str_replace("Ñ","&Ntilde;",$s);
	$s=str_replace("ñ","&ntilde;",$s);
	$s=str_replace("Ü","&Uuml;",$s);
	$s=str_replace("ü","&uuml;",$s);
	

	$s=str_replace("Ü","&Uuml;",$s);	
    return $s;
}
function cambiar(){
	$this->falta->cambiar();
	
	}
 
}
?>