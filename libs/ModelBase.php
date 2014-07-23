<?php
abstract class ModelBase {
	protected $db;
	
	public function __construct() {
		$this->db = SPDO::singleton ();
	}
	//metodo para 
	public function select($sql = false) {
		if ($sql) {
			$consulta = $this->db->prepare ( $sql );
			$consulta->execute ();
			return $consulta;
		} else {
			die ( 'No existe sentencia a ejecutar' );
			return false;
		}
	
	}
	//	metodo para evitar inyection sql
	public function getRow($sql = false, $arr = array()) {
		if ($sql && $arr) {
			$consulta = $this->db->prepare ( $sql );
			$consulta->execute ( $arr );
			return $consulta;
		} else {
			die ( 'No existe sentencia a ejecutar' );
			return false;
		}	
	}
	public function delete($tabla = false, $condicion = false) {
		if (! (($tabla == false) or ($condicion == false))) {
			$elimina = $this->db->prepare ( "DELETE FROM " . $tabla . " WHERE " . $condicion );
			$elimina->execute ();
			return true;
		} else {
			die ( 'Los Parametros no son correctos' );
			return false;
		}
	}
	
	public function update($tabla = false, $data = false, $condicion = false) {
		if (! (($tabla == false) or ($data == false))) {
			$update = "UPDATE " . $tabla . " SET ";
			foreach ( $data as $campo => $valor ) {
				$update .= $campo . "=";
				$update .= (is_numeric ( $valor ) && (intval ( $valor ) == $valor)) ? $valor . "," : "'$valor',";
			}
			//quito la ultima coma ingresada   
			$update = substr ( $update, 0, - 1 );
			if ($condicion) {
				$update .= " WHERE " . $condicion;
			}
			$actualiza = $this->db->prepare ( $update );
			$actualiza->execute ();
			return true;
		} else {
			die ( 'Los Parametros no son correctos' );
			return false;
		}
	}
	public function insert($tabla = false, $data = false) {
		if (! (($tabla == false) or ($data == false))) {
			$vcampo = '';
			$vvalor = '';
			$insertar = "INSERT INTO " . $tabla;
			foreach ( $data as $campo => $valor ) {
				$vcampo .= $campo . ",";
				$vvalor .= (is_numeric ( $valor ) && (intval ( $valor ) == $valor)) ? $valor . "," : "'$valor',";
			}
			//quito la ultima coma ingresada   
			$vcampo = substr ( $vcampo, 0, - 1 );
			$vvalor = substr ( $vvalor, 0, - 1 );
			$insertar .= " (" . $vcampo . ") VALUES (" . $vvalor . ")";
			
			$actualiza = $this->db->prepare ( $insertar );
			$actualiza->execute ();
			//devuelve el ultimo item insertado
			$ultimo = $this->db->lastInsertId ();
			return $ultimo;
		} else {
			die ( 'Los Parametros no son correctos' );
			return false;
		}
	}
	
	protected function _begin() {
		return $this->db->beginTransaction ();
	}
	
	protected function _commit() {
		return $this->db->commit ();
	}
	
	protected function _rollback() {
		return $this->db->rollback ();
	}
	
	function error() {
		$err = $this->db->errorInfo ();
		return $this->db->getAttribute ( PDO::ATTR_DRIVER_NAME ) . '(PDO) error. SQLSTATE: ' . $err [0] . ' ; Driver error [' . $err [1] . ']: ' . $err [2];
	}
	
	public function cerrarDB() {
		$this->db = null;
	}
}
?>