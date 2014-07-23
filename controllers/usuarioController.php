<?php
class usuarioController extends ControllerBase {
	private $usuario;
	private $config;
	//contructor de la clase
	public function __construct() {
		require 'models/usuarioModel.php';
		$this->usuario = new usuarioModel ();
	}
	
	public function index() {
		$listaCadetes = $this->cadete->listar ();
		if ($path = $this->existeFichero ( "cadete.php" )) {
			include ($path);
		}
	}
	//identificarse
	public function identificarse() {
		$usuario=strip_tags($_POST ['usuario']);
		$password=strip_tags($_POST ['password']);
		$user = $this->usuario->logearse ( $usuario, $password);
		//si hay una consulta devuelta mayor a 0
		if (sizeof ( $c = $user->fetchAll () ) > 0) {
			//Iniciamos Variables de Session
			session_start ();
			$_SESSION ['usuario'] = $c [0] ['usuario'];
			$_SESSION ['idUsuario'] = $c [0] ['idUsuario'];
			$_SESSION ['nombre'] = ucwords ( $c [0] ['nombres'] . " " . $c [0] ['paterno'] . " " . $c [0] ['materno'] );
			$_SESSION ['prioridad'] = $c [0] ['prioridad'];
			$_SESSION ['theme'] = $c [0] ['theme'];
			$gestion = $this->usuario->gestionActual ()->fetchAll ( PDO::FETCH_OBJ );
			foreach ( $gestion as $g ) {
				$_SESSION ['idgestion'] = $g->idGestion;
				$_SESSION ['gestion'] = $g->gestion;
				$_SESSION ['semestre'] = $g->semestre;
				$_SESSION ['jefeDivision'] = $g->jefeDivision;
				$_SESSION ['jefeCuerpo'] = $g->jefeCuerpo;
			}
			echo 1;
		} else {
			echo 0;
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
            $usuairo = $_POST['username'];
		$datos=array(
		'usuario'=>$_POST['username'],
		'password'=>$_POST['pas1'],
		'paterno'=>$_POST['ap'],
		'materno'=>$_POST['am'],
		'nombres'=>$_POST['nom'],
		'prioridad'=>$_POST['prio'],
		'cargo'=>$_POST['cargo'],
		'idTheme'=>1
		);
	echo $this->usuario->crearUsuario($datos);
	// $flag = $this->usuario->crearUsuario($datos);
 //        if($flag){
	// 	if ($path = $this->existeFichero ( "slickgrid/adminUsuario.php" )) {
	// 		include ($path);
	// 	}
	// 	}
	// 	else{
	// 		echo "Ocurrio un error al realizar la accion requerida";
	// 	}
	}
        
        
//        public function registrarFalta(){
//		$idc=$_POST['idc'];
//	if($this->falta->registrarFalta($_POST['idc'],$_POST['gestion'],$this->formatFecha($_POST['fecha']),$_POST['parte'],$_POST['idf'],$_POST['reincidencias'],$_POST['clase'],$_POST['tags'],$_POST['puntosD'],$_POST['tte'],$_POST['tss'],$_POST['asli'],$_POST['ased'],$_POST['ascs'],$_POST['assd'],$_POST['pvac'])>0){
//		header("Location: main.php?controller=cadete&action=descripcion&idc=$idc");
//		
//		}		
//	}

        
        
	function editarConfigGestion() {			
			$gestion = $this->usuario->gestionActual ()->fetchAll ( PDO::FETCH_OBJ );				
			if ($path = $this->existeFichero ( 'slickgrid/cambiargestion.php' )) {
				include $path;
			}	
	}

	//Modificado por Freddy
	// Eliminar Usuario
	public function eliminarUsuario(){
		$idUsuario=$_POST['idUsuario'];
		$flag=false;
		$flag=$this->usuario->eliminarUsuario($idUsuario);
		if($flag){
		if ($path = $this->existeFichero ( "slickgrid/adminUsuarios.php" )) {
			include ($path);
		}
		}
		else{
			echo "Ocurrio un error al realizar la accion requerida";
		}
	}

}