<?php
class loginController extends ControllerBase {
	private $usuario;
	
	public function __construct() {
		require 'models/loginModel.php';
		$this->usuario = new loginModel ();
	}
	
	public function index() {
		$listaCadetes = $this->cadete->listar ();
		if ($path = $this->existeFichero ( "cadete.php" )) {
			include ($path);
		}
	}
	public function listar() {
		
		if ($path = $this->existeFichero ( "slickgrid/example5.php" )) {
			include ($path);
		}
	}
	public function identificarse() {
		$logeado = $this->usuario->logearse ( $_POST ['usuario'], $_POST ['password'] );
		if (sizeof ( $c = $logeado->fetchAll)  > 0) {			
			//Iniciamos Variables de Session
			session_start ();
			$_SESSION ['usuario'] = $c [0] ['usuario'];
			$_SESSION ['idUsuario'] = $c [0] ['idUsuario'];
			$_SESSION ['nombre'] = ucwords ( $c [0] ['nombres'] . " " . $c [0] ['paterno'] . " " . $c [0] ['materno'] );
			$_SESSION ['prioridad'] = $c [0] ['prioridad'];
			$_SESSION ['theme'] = $c [0] ['theme'];
			$gestion = $this->usuario->gestionActual ()->fetchAll(PDO::FETCH_OBJ);
			foreach($gestion as $g){
			$_SESSION['idgestion']=$g->idGestion;	
			$_SESSION['gestion']=$g->gestion;
			$_SESSION['semestre']=$g->semestre;
			$_SESSION['jefeDivision']=$g->jefeDivision;
			$_SESSION['jefeCuerpo']=$g->jefeCuerpo;
			}
		echo 1;
		}
else{		echo 0;}
	}
	
	public function actualizarItem() {
		$id_ga = $_POST ['fid_ga'];
		$descripcion = $_POST ['fdescripcion'];
		$indicadores = $_POST ['findicadores'];
		$resultados = $_POST ['fresultados'];
		$id_er = $_POST ['fid_er'];
		$gestion = $_POST ['fgestion'];
		
		$listado = $this->ga_model->updateItem ( $id_ga, $descripcion, $indicadores, $resultados, $id_er, $gestion );
		
		$this->listarTodo ();
	
	}
	
	public function ingresarItem() {
		$vproyCodigo = $_POST ['txtproyCodigo'];
		$vproyNombre = $_POST ['txtproyNombre'];
		$vproyFinanciamiento = $_POST ['txtproyFinanciamiento'];
		$vproyTipoCambio = $_POST ['txtproyTipoCambio'];
		$vproyMeta = $_POST ['txtproyMeta'];
		
		$listado = $this->rProyecto_Model->insertItem ( $vproyCodigo, $vproyNombre, $vproyFinanciamiento, $vproyTipoCambio, $vproyMeta );
		
		$this->listarTodo ();
	
	}
}
?>
