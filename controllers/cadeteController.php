<?php
class cadeteController extends ControllerBase {
	private $cadete;
	
	public function __construct() {
		require 'models/cadeteModel.php';
		$this->cadete = new cadeteModel ();
	}
	
	public function index() {
		$lista = $this->cadete->listar ();
		if ($path = $this->existeFichero ( "slickgrid/cadetes.php" ))
			include ($path);
	}
	//nuevo cadete
	public function newCadete(){
		
		echo "Ro, ".$_POST['paterno'].$_POST['nombres']."  ".$_POST['materno']."  ".$_POST['codigo'];
	}
	//actualizar datos del cadete
	public function updateCadete() {
		//echo "Rosalinda Te AMo, ".$_POST['paterno'].$_POST['nombres']."  ".$_POST['materno']."  ".$_POST['codigo']." ".$_POST['idc'];
                $this->cadete->update($_POST['idc'], $_POST['codigo'], $_POST['paterno'], $_POST['materno'], $_POST['nombres']);
                echo "se realizo correctamente los cambios";
	}
	public function lista_json() {
		$idGestion=$_SESSION['idgestion'];
		$lista = $this->cadete->listar_json ($idGestion);		
		$i = 0;
		$cadetes = array ();
		while ( $c = $lista->fetch ( PDO::FETCH_OBJ ) ) {
			$cadetes [$i] ["id"] = $c->idCadete;
			$cadetes [$i] ["nombre"] = $this->limpiarCadena($c->paterno . " " . $c->materno . " " . $c->nombres );
			$cadetes [$i] ["codigo"] = $c->codigo;
			$cadetes [$i] ["curso"] = $c->curso;
			$i ++;
		}
		echo json_encode ( $cadetes );
	}
	//Lsiata de cadetes que estana en consejo disciplinario
	public function listaConsejo_json() {
		$lista = $this->cadete->lista_consejoDisciplinario();
		$i = 0;
		$cadetes = array ();
		while ( $c = $lista->fetch ( PDO::FETCH_OBJ ) ) {
			$cadetes [$i] ["idConsejo"] = $c->idConsejo;
			$cadetes [$i] ["nombre"] = $this->limpiarCadena ( $c->paterno . " " . $c->materno . " " . $c->nombres );
			$cadetes [$i] ["codigo"] = $c->codigo;
			$cadetes [$i] ["curso"] = $c->curso;
			$cadetes [$i] ["falta"] = $c->falta;
			$cadetes [$i] ["clase"] = $c->clase;
			$cadetes [$i] ["idRegistro"] = $c->idRegistro;
			$cadetes [$i] ["idCadete"] = $c->idCadete;
			$cadetes [$i] ["fechaIngreso"] = $c->fechaIngreso;
			$cadetes [$i] ["numero"] = $c->numero;
			$cadetes [$i] ["gestion"] = $c->gestion;
			$i ++;
		}
		echo json_encode ( $cadetes );
	}
	public function lista_json2() {
		$idGestion=$_SESSION['idgestion'];
		$lista = $this->cadete->listar_json ($idGestion);
		$i = 0;
		$cadetes = array ();
		while ( $c = $lista->fetch ( PDO::FETCH_OBJ ) ) {
			$cadetes [$i] ["id"] = $c->idCadete;
			$cadetes [$i] ["paterno"] = $this->limpiarCadena ( $c->paterno );
			$cadetes [$i] ["materno"] = $this->limpiarCadena ($c->materno );
			$cadetes [$i] ["nombres"] = $this->limpiarCadena ($c->nombres );

			$cadetes [$i] ["codigo"] = $c->codigo;
			$cadetes [$i] ["curso"] = $c->curso2;
			$cadetes [$i]["foto"]=$c->fotografia;
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
	//CAdetes que estasn en consejo disciplinario
	public function listar_gridCD() {		
		if ($path = $this->existeFichero ( "slickgrid/cadetesCD.php" )) {
			include ($path);
		}
	}
	//Administracion de cadetes
	public function listar() {
		$lista = $this->cadete->listar ();
		if ($path = $this->existeFichero ( "slickgrid/adminCadetes2.php" )) {
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
			$fotografia=$c->fotografia;
		}
		//faltas cometidas por el cadete
		$faltas = $this->cadete->faltasActuales ( $idc, $gestion );
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
			$datos [$i] ["obs"] = "srvicios ";
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
		//puntos de merito + reincidencias
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
	
	public function registrarFalta() {
	
	}
	
	//Funcion para cambiar el formato de tildes y acentos
	function limpiarCadena($s) {
	$s = str_replace ( "�", "&Aacute;", $s );
		$s = str_replace ( "�", "&aacute;", $s );
		$s = str_replace ( "�", "&Eacute;", $s );
		$s = str_replace ( "�", "&eacute;", $s );
		$s = str_replace ( "�", "&Iacute;", $s );
		$s = str_replace ( "�", "&iacute;", $s );
		$s = str_replace ( "�", "&Oacute;", $s );
		$s = str_replace ( "�", "&oacute;", $s );
		$s = str_replace ( "�", "&Uacute;", $s );
		$s = str_replace ( "�", "&uacute;", $s );
		$s = str_replace ( "�", "&Ntilde;", $s );
		$s = str_replace ( "�", "&ntilde;", $s );
		$s = str_replace ( "�", "&Uuml;", $s );
		$s = str_replace ( "�", "&uuml;", $s );
		$s = str_replace ( "�", "&Uuml;", $s );
	
		return $s;
	}
	public function importarCadetes(){
		
	if ($path = $this->existeFichero ( "cadetes/importarCadetes.php" )) {
			//		if ($path = $this->existeFichero ( "slickgrid/descripcion.php" )) {
			include ($path);
		}
		
	}
	//registro de cadetes por gestion
	public function cadetesGestion(){
		$idg=$_GET['gestion'];
		$c=$_GET['curso'];		
		$lista=$this->cadete->cadetesGestion($idg,$c);
		$i = 0;
		$cadetes = array ();
		while ( $c = $lista->fetch ( PDO::FETCH_OBJ ) ) {
			$cadetes [$i] ["id"] = $c->idCadete;
			$cadetes [$i] ["nombre"] = $this->limpiarCadena ($c->nombre );
			$cadetes [$i] ["codigo"] = $c->codigo;
			$cadetes [$i] ["curso"] = $c->curso2;
			$i ++;
		}
		echo json_encode($cadetes);
	}
public function listar_fotos (){
	$carpeta=$config->get('dirBackup');
    //Comprobamos que la carpeta existe
    if (is_dir ($carpeta)){
        //Escaneamos la carpeta usando scandir
        $scanarray = scandir ($carpeta);
	echo "<table>
			<tr>
			<td><strong>Nombre</strong></td>
			<td><strong>Ext</strong></td>
			<td><strong>Tama&ntilde;o</strong></td>
			</tr>";			
        for ($i = 0; $i < count ($scanarray); $i++){
            //Eliminamos  "." and ".." del listado de ficheros
            if ($scanarray[$i] != "." && $scanarray[$i] != ".."){
		//No mostramos los subdirectorios
		if (is_file ($carpeta . "/" . $scanarray[$i])){
               //Verificamos que la extension se encuentre en $tipos
				$thepath = pathinfo ($carpeta . "/" . $scanarray[$i]);
				if($thepath['extension']=='jpg'||$thepath['extension']=='png'){
				echo "<tr>";				
				echo "<td><input type=\"checkbox\"".$scanarray[$i]."/></td>";
				echo "<td>".$scanarray[$i]."</td>";				
				echo "<td><img src=\"".$carpeta . "/" .$scanarray[$i]."\" width=\"150\"  heigth=\"200\" /></td>";					
				echo "<td>".$this->formato_tam(filesize($carpeta . "/" . $scanarray[$i]));
				echo "</tr>";
				}
				
                }
            }
        }
	echo "</table>";
    } else {
        echo "La carpeta no existe";
    }
}
public function listar_backups ($carpeta="views/pw99_pmsmart"){
    //Comprobamos que la carpeta existe
    if (is_dir ($carpeta)){
        //Escaneamos la carpeta usando scandir
        $scanarray = scandir ($carpeta);	
        for ($i = 0; $i < count ($scanarray); $i++){
            //Eliminamos  "." and ".." del listado de ficheros
            if ($scanarray[$i] != "." && $scanarray[$i] != ".."){
		//No mostramos los subdirectorios
		if (is_file ($carpeta . "/" . $scanarray[$i])){
				$backups=array();
				$j=1;
               //Verificamos que la extension se encuentre en $tipos
				$thepath = pathinfo ($carpeta . "/" . $scanarray[$i]);
				if($thepath['extension']=='sql'||$thepath['extension']=='gzip'){
				$backups[$j]['nombre']=$scanarray[$i];
				$backups[$j]['extension']=$thepath['extension'];
				$backups[$j]['size']=$this->formato_tam(filesize($carpeta . "/" . $scanarray[$i]));
				echo json_encode($backups);
				}
				
                }
            }
        }
    } else {
        echo "La carpeta no existe";
    }
}
function formato_tam($size, $precision = 0) {
    $sizes = array('Tb', 'Gb', 'Mb', 'Kb', 'bytes');
    $total = count($sizes);
    while($total-- && $size > 1024) $size /= 1024;
    return round($size, $precision)." ".$sizes[$total];
}
//Fotografias
function subirFoto(){
	if ($path = $this->existeFichero ( "subirFoto.php" )) {
			//		if ($path = $this->existeFichero ( "slickgrid/descripcion.php" )) {
			include ($path);
		}
}	
public function enviarConsejo(){
	$idRegistro=$_POST['idRegistro'];
	$idFalta=$_POST['idFaltaCometida'];
	$numero=$_POST['numero'];
	$gestion=$_POST['gestion'];
	$data=array(
	'idRegistro'=>$idRegistro,
	'idFalta'=>$idFalta,
	'numero'=>$numero,
	'gestion'=>$gestion,
	'fechaIngreso'=>date('Y-m-d')
	);
	if($this->cadete->aConsejoDisciplinario($data,$idRegistro)){
	if ($path = $this->existeFichero ( "slickgrid/cadetesCD.php" )) {
			include ($path);
		}
	}
	else{
		echo "Ocurrio un erro al realizar la accion";
	}
	
}
//exportar a excel registro disciplina individual
public function partesSancion_excel() {
		$idc = $_GET ['idc'];
		$gest = $_SESSION ['gestion'];
		$gestion = $_SESSION ['idgestion'];
		$semestre = $_SESSION ['semestre'];
		
		$cadete = $this->cadete->informacion ( $idc, $gestion )->fetchAll ( PDO::FETCH_OBJ );
		foreach ( $cadete as $c ) {
			$nombre = $c->paterno . " " . $c->materno . " " . $c->nombres;
			$curso = $c->curso2;
			$codigo = $c->codigo;
			$coeficiente = $c->coeficiente;
			$puntosSemestre = $c->puntosSemestre;
		}
		//faltas cometidas por el cadete
		$faltas = $this->cadete->faltasActuales ( $idc, $gestion );
		//		$faltasGenerales=$this->cadete->faltasActuales();
		if ($path = $this->existeFichero ( "reportes/folder_excel.php" )) {
			//		if ($path = $this->existeFichero ( "slickgrid/descripcion.php" )) {
			include ($path);
		}
	}
//Exportar registro disciplina a pdf
public function partesSancion_pdf() {
		$idc = $_GET ['idc'];
		$gest = $_SESSION ['gestion'];
		$gestion = $_SESSION ['idgestion'];
		$semestre = $_SESSION ['semestre'];
		
		$cadete = $this->cadete->informacion ( $idc, $gestion )->fetchAll ( PDO::FETCH_OBJ );
		foreach ( $cadete as $c ) {
			$nombre = $c->paterno . " " . $c->materno . " " . $c->nombres;
			$curso = $c->curso2;
			$codigo = $c->codigo;
			$coeficiente = $c->coeficiente;
			$puntosSemestre = $c->puntosSemestre;
		}
		//faltas cometidas por el cadete
		$faltas = $this->cadete->faltasActuales ( $idc, $gestion );
		//		$faltasGenerales=$this->cadete->faltasActuales();
		if ($path = $this->existeFichero ( "reportes/folder_pdf.php" )) {
			//		if ($path = $this->existeFichero ( "slickgrid/descripcion.php" )) {
			include ($path);
		}
	}
//ANULAR FLATA COMETIDA POR EL CADETE
	public function anularFalta(){
		$idR=$_POST['idRegistro'];
		$idC=$_POST['idConsejo'];
		$flag=false;
		$flag=$this->cadete->quitarConsejo($idC);
		$flag=$this->cadete->darAlta($idR);
		if($flag){
		if ($path = $this->existeFichero ( "slickgrid/cadetesCD.php" )) {
			include ($path);
		}
		}
		else{
			echo "Ocurrio un error al realizar la accion requerida";
		}		
	}		 
	//dar de baja
	public function darBaja(){
		$idc=$_POST['idconsejo'];
		$idr=$_POST['idregistro'];
		$obs=$_POST['obs'];
		$gestion=$_SESSION['idgestion'];
		$flag=false;
		$flag=$this->cadete->darBaja($idc,$idr,$obs,$gestion);
		$flag=$this->cadete->retirarConsejo($idc);
		if($flag){
		if ($path = $this->existeFichero ( "slickgrid/cadetesCD.php" )) {
			include ($path);
		}
		}
		else{
			echo "Ocurrio un error al realizar la accion requerida";
		}
	}	
	public function bajasDisciplinarias(){
	if ($path = $this->existeFichero ( "slickgrid/cadetesBD.php" )) {
			include ($path);
		}
	}
	public function listaBajas_json() {
		$lista = $this->cadete->bajasDisciplinarias();
		$i = 0;
		$cadetes = array ();
		while ( $c = $lista->fetch ( PDO::FETCH_OBJ ) ) {
			$cadetes [$i] ["idBaja"] = $c->idBaja;
			$cadetes [$i] ["nombre"] = $this->limpiarCadena ( $c->nombre );
			$cadetes [$i] ["codigo"] = $c->codigo;
			$cadetes [$i] ["curso"] = $c->curso2;
			$cadetes [$i] ["falta"] = $c->falta;
			$cadetes [$i] ["clase"] = $c->clase;
			$cadetes [$i] ["idRegistro"] = $c->idRegistro;
			$cadetes [$i] ["idCadete"] = $c->idCadete;
			$cadetes [$i] ["fechaIngreso"] = $c->fechaIngreso;
			$cadetes [$i] ["numero"] = $c->numero;
			$cadetes [$i] ["gestion"] = $c->gestion;
			$i ++;
		}
		echo json_encode ( $cadetes );
	}
}
?>