<?php
class adminController extends ControllerBase {
	private static $instance = null;
	private $admin;
	private $config;
	public function __construct() {
		require 'models/adminModel.php';
		$this->admin = new adminModel ();
		$this->config = Config::singleton ();
	}
	public function listar_backups(){
		if ($path = $this->existeFichero ( "slickgrid/backups.php" ))
			include ($path);
	}
	public function listar_backups_json() {
		$carpeta = $this->config->get ( 'dirBackup' );
		$backup = array ();
		//Comprobamos que la carpeta existe
		if (is_dir ( $carpeta )) {
			//Escaneamos la carpeta usando scandir
			$scanarray = scandir ( $carpeta );
			$scanarray=array_reverse($scanarray);
			$j = 0;
			for($i = 0; $i < count ( $scanarray ); $i ++) {
				
				//Eliminamos  "." and ".." del listado de ficheros
				if ($scanarray [$i] != "." && $scanarray [$i] != "..") {
					//No mostramos los subdirectorios
					if (is_file ( $carpeta . "/" . $scanarray [$i] )) {
						
						//Verificamos que la extension se encuentre en $tipos
						$thepath = pathinfo ( $carpeta . "/" . $scanarray [$i] );
						if ($thepath ['extension'] == 'sql' || $thepath ['extension'] == 'gzip') {
							$backup [$j] ["nombre"] = $scanarray [$i];
							$backup [$j] ["fecha"] = date ("Y-m-d H:i:s", filemtime($carpeta . "/" . $scanarray [$i]));
							$backup [$j] ["extension"] = $thepath ['extension'];
							$backup [$j] ["size"] = $this->formato_tam ( filesize ( $carpeta . "/" . $scanarray [$i] ) );							
							$j++;
						}
						
					}
				}
				
			}

			echo json_encode ( $backup );
		} else {
			echo "La carpeta no existe";
		}
	}
	//calcula el tamaño del archivo
	function formato_tam($size, $precision = 0) {
		$sizes = array ('Tb', 'Gb', 'Mb', 'Kb', 'bytes' );
		$total = count ( $sizes );
		while ( $total -- && $size > 1024 )
			$size /= 1024;
		return round ( $size, $precision ) . " " . $sizes [$total];
	}
	//Realizar un backup de una base de datos mysql
	function backup_tables() {		
		//variables
		$host = $this->config->get ( 'dbhost' );
		$user = $this->config->get ( 'dbuser' );
		$pass = $this->config->get ( 'dbpass' );
		$name = $this->config->get ( 'dbname' );
		$tables = '*'; // (*) todas las tablas
		$carpeta = $this->config->get ( 'dirBackup' ).$name;	
		$link = mysql_connect ( $host, $user, $pass );
		mysql_select_db ( $name, $link );
		//get all of the tables		
		if ($tables == '*') {
			$tables = array ();
			$result = mysql_query ( 'SHOW TABLES' );
			while ( $row = mysql_fetch_row ( $result ) ) {
				$tables [] = $row [0];
			}
		} else {
			$tables = is_array ( $tables ) ? $tables : explode ( ',', $tables );
		}
		//cycle through		
		foreach ( $tables as $table ) {
			$result = mysql_query ( 'SELECT * FROM ' . $table );
			$num_fields = mysql_num_fields ( $result );
			$return .= 'DROP TABLE ' . $table . ';';
			$row2 = mysql_fetch_row ( mysql_query ( 'SHOW CREATE TABLE ' . $table ) );
			$return .= "\n\n" . $row2 [1] . ";\n\n";
			for($i = 0; $i < $num_fields; $i ++) {
				while ( $row = mysql_fetch_row ( $result ) ) {
					$return .= 'INSERT INTO ' . $table . ' VALUES(';
					for($j = 0; $j < $num_fields; $j ++) {
						$row [$j] = addslashes ( $row [$j] );
						$row [$j] = ereg_replace ( "\n", "\\n", $row [$j] );
						if (isset ( $row [$j] )) {
							$return .= '"' . $row [$j] . '"';
						} else {
							$return .= '""';
						}
						if ($j < ($num_fields - 1)) {
							$return .= ',';
						}
					}
					$return .= ");\n";
				}
			}
			$return .= "\n\n\n";
		}
		//guarda el archivo
		$handle = fopen (  $carpeta. time () . '-' . (md5 ( implode ( ',', $tables ) )) . '.sql', 'w+' );
		fwrite ( $handle, $return );
		fclose ( $handle );
	}
	public function campos(){
		$tabla=$this->admin->selecAll('themes');
		$names= $tabla->fetch(PDO::FETCH_NAMED);
		foreach($names as $k => $v){
			echo $k;
		}
	}
	public static function singleton() {
		if (self::$instance == null) {
			self::$instance = new self ();
		}
		return self::$instance;
	}

}
?>