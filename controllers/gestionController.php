<?php
class gestionController extends ControllerBase {
	private $gestion;
	private $usuario;
	//contructor de la clase
	public function __construct() {
		require 'models/gestionModel.php';
		$this->gestion = new gestionModel ();
		require 'models/usuarioModel.php';
		$this->usuario = new usuarioModel ();
	}
	
	public function index() {		
		if ($path = $this->existeFichero ( "slickgrid/gestiones.php" )) {
			include ($path);
		}
	}
	function listarGestiones(){
		$lista = $this->gestion->listar ();
		$lista = $lista->fetchAll ();
		echo json_encode ( $lista );
	}
	//listar las gestiones con la seleecionara por defecto
	function listarGestiones2(){
		//gestion actual
		$gestionActual=$_SESSION['idgestion'];
		$lista = $this->gestion->listar ();
		$gestiones=array();
		$i=0;
		while($g = $lista->fetch(PDO::FETCH_OBJ)){
			$gestiones[$i]['idGestion']=$g->idGestion;
			$gestiones[$i]['gestion']=$g->gestion;
			$gestiones[$i]['semestre']=$g->semestre;
			$gestiones[$i]['jefeDivision']=$g->jefeDivision;
			$gestiones[$i]['jefeCuerpo']=$g->jefeCuerpo;
			if($g->idGestion==$gestionActual){
			$gestiones[$i]['activo']="1";
				}
			else {
			$gestiones[$i]['activo']="0";
			}
			$i++;		
		}
	echo json_encode ( $gestiones );
	}
//activar nueva gestion
public function activargestion(){
	print_r($_POST);
$_SESSION['idgestion']=$_POST['idGestion'];
$_SESSION['gestion']=$_POST['gestion'];
$_SESSION['semestre']=$_POST['semestre'];
if($path=$this->existeFichero('slickgrid/cambiargestion.php')){
			include $path;
		}
}
	
	
	
	
	
	
	
	function bienvenida() {
		if ($path = $this->existeFichero ( 'bienvenida.php' )) {
			include $path;
		}
	}
function cambiarPassword() {		
		if($path=$this->existeFichero('usuarios/cambiarPassword.php')){
			include $path;
		}
	}
	public function cambiarPass(){
		$idUsuario=$_SESSION['idUsuario'];
		$pass=$_POST['pass'];
		$pass1=$_POST['pass1'];
		$verifica=$this->usuario->verificarPass($idUsuario,$pass);
		if($verifica->fetch(PDO::FETCH_COLUMN)){
			echo $this->usuario->cambiarPass($idUsuario,$pass1);
		}
		else
		echo "Contraseña Actual Incorrecta";
	}
	//editar configuracion del usuario
	function editarConfig() {
		$this->config = $this->usuario->config ( $_SESSION ['idUsuario'] );
		if (sizeof ( $c = $this->config->fetchAll () ) > 0) {
			require 'models/themesModel.php';
			$oTheme = new themesModel ();
			$themes = $oTheme->listar (); //lista de todos los temas
			if ($path = $this->existeFichero ( 'editarConfig.php' )) {
				include $path;
			}
		}	
	}
	//guardamos la configuracion elejida por el usuairo
	function guardarConfig() {
		$t = $_POST ['theme'];
		if ($this->usuario->guardarConfig ( $_POST ['paterno'], $_POST ['materno'], $_POST ['nombres'], $_POST ['theme'], $_POST ['usuario'] )) {
			$theme = $this->usuario->nameTheme ( $t );
			if (sizeof ( $c = $theme->fetchAll () ) > 0) {
				//Iniciamos Variables de Session
				$_SESSION ['theme'] = $c [0] ['theme'];
			}
		
		}
		header ( "Location: main.php?controller=usuario&action=editarConfig" );
	}
	//lista usuarios 		
	public function usuarios_json() {
		$lista = $this->usuario->listarUsuarios ();		
		$c = $lista->fetchAll ();
		echo json_encode ( $c );
	}
	public function listarUsuarios() {
		if ($path = $this->existeFichero ( "slickgrid/adminUsuarios.php" )) {
			include ($path);
		}
	}
	//creamos nuevo usuario
	public function nuevoUsuario() {
				if ($path = $this->existeFichero ( 'usuarios/nuevoUsuario.php' )) {
					include $path;
		}
	}
	//creamos usuario
	public function crearUsuario() {
		$datos=array(
		'usuario'=>$_POST['username'],
		'password'=>$_POST['pas1'],
		'paterno'=>$_POST['ap'],
		'materno'=>$_POST['am'],
		'nombres'=>$_POST['nom'],
		'prioridad'=>$_POST['prio'],
		'idEntidad'=>$_POST['entidad'],
		'cargo'=>$_POST['cargo'],
		'interno'=>$_POST['interno'],
		'telefono'=>$_POST['tel'],
		'cedula'=>$_POST['ci'],
		'email'=>$_POST['email'],
		'genero'=>$_POST['sexo'],
		'idTheme'=>1
		);
	
	echo $this->usuario->crearUsuario($datos);
	}
	
}