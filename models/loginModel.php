<?php
class loginModel extends ModelBase {
	
	public function logearse($user,$pass) {
		
		$sql = "SELECT u.idUsuario,u.usuario,u.paterno,u.materno,u.nombres,t.theme 
		        FROM usuarios u, themes t 
		        WHERE u.usuario = ? and u.password = ? and u.idTheme=t.idTheme";
		$arr=array($user,$pass);		
		return $this->getRow ( $sql,$arr);		
	}
	function gestionActual(){
		$sql="SELECT g.idGestion, g.gestion, g.semestre,g.jefeDivision,g.jefeCuerpo
		      FROM gestionActual a, gestion g
			  WHERE a.idGestion=g.idGestion AND idGestionActual='1'";
		return $this->select ($sql);
		
		}
	public function getRegistroId($vid) {
		
		$vsql = "SELECT * FROM ganual WHERE id_ga=" . $vid;
		$listado = $this->select ( $vsql );
		
		return $listado;
	}
	
	public function updateItem($vid_ga, $dvescripcion, $vindicadores, $vresultados, $vid_er, $vgestion) {
		
		$data = array ('descripcion' => $dvescripcion, 'indicadores' => $vindicadores, 'resultados' => $vresultados, 'id_er' => $vid_er, 'fecha_mod' => date ( "Y-m-d" ), 'gestion' => $vgestion );
		
		$this->update ( 'ganual', $data, 'id_ga=' . $vid_ga );
		
		return true;
	}
	
	public function insertItem($vproyCodigo, $vproyNombre, $vproyFinanciamiento, $vproyTipoCambio, $vproyMeta) {
		
		$data = array ('proyCodigo' => $vproyCodigo, 'proyNombre' => $vproyNombre, 'proyFinanciamiento' => $vproyFinanciamiento, 'proyTipoCambio' => $vproyTipoCambio, 'proyMeta' => $vproyMeta );
		
		$this->insert ( 'proyecto', $data );
		
		return true;
	}

}
?>