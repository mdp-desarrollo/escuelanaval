<?php
class gestionModel extends ModelBase
{
	
	public function listar()
	{		
		$sql="SELECT *
			 FROM gestion
		     ORDER BY gestion DESC";
		return $this->select ($sql);
		
	}
	public function gestionActual(){
		$sql="SELECT *
			  FROM gestionactual
			  WHERE idGestionActual=1";
		return $this->select ($sql);
	}
	public function config($id){
		$sql="SELECT u.idUsuario,u.paterno,u.materno,u.nombres,t.idTheme,t.theme 
		      FROM usuarios u, themes t 
		      WHERE idUsuario = ? and u.idTheme=t.idTheme";
		return $this->getRow($sql,array($id));
		
	}
	//guardamos configuracion actual para el usuario
	public function guardarConfig($paterno,$materno,$nombres,$theme,$usuario){		
		$datos=array(
		'paterno'=>$paterno,
		'materno'=>$materno,
		'nombres'=>$nombres,
		'idTheme'=>$theme
		);
	return $this->update( 'usuarios', $datos, 'idUsuario='.$usuario);
		}
	public function nameTheme($t){
		$sql="SELECT theme
		      FROM themes
			  WHERE idTheme=?";
		return $this->getRow ( $sql,array($t));
		}
	public function listarUsuarios(){
	$sql="SELECT u.idUsuario, CONCAT(u.paterno,' ',u.materno,' ',u.nombres) as nombre,u.usuario,u.prioridad,u.cargo
		  FROM usuarios u";
		 return $this->select ($sql);
	}
	public function crearUsuario($datos){
		return $this->insert('usuarios',$datos);		
	}	
	
	public function verificarPass($u,$p){
		$sql="SELECT usuario FROM usuarios WHERE idUsuario='$u' AND password='$p'";
		return $this->select ($sql);
	}
	public function cambiarPass($u,$p){
		$datos=array(
		'password'=>$p
		);
		return $this->update('usuarios',$datos,"idUsuario=".$u);
	}
	
}
?>