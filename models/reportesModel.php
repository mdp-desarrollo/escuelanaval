<?php
class reportesModel extends ModelBase {
	//turnos sin salida
	public function tss($c){
		$sql="SELECT CONCAT(a.paterno,' ',a.materno,' ',a.nombres) as nombre, SUM(f.tss)- SUM(f.tssc) as tss
			FROM registrocadetes r, gestionactual g, cadetes a, faltascometidas f
			WHERE r.idCadete=a.idCadete AND r.idCurso='$c' AND f.idGestion=g.idGestion AND f.idRegistro=r.idRegistro AND f.tss>0 AND f.eliminado='0'
			GROUP BY r.idRegistro";
		return $this->select ($sql);
	}
	//Trabajos tiempo extra
	public function tte($c){
		$sql="SELECT CONCAT(a.paterno,' ',a.materno,' ',a.nombres) as nombre, SUM(f.tte)- SUM(f.ttec) as tte
			FROM registrocadetes r, gestionactual g, cadetes a, faltascometidas f
			WHERE r.idCadete=a.idCadete AND r.idCurso='$c' AND f.idGestion=g.idGestion AND f.idRegistro=r.idRegistro AND f.tte>0 AND f.eliminado='0'
			GROUP BY r.idRegistro";
		return $this->select ($sql);
	} 
	
	public function listar() {
		
		$vsql = "SELECT paterno,materno,nombres FROM cadetes ORDER BY paterno";
		$listado = $this->select ( $vsql );
		return $listado;		
	}
	//lista de cadetes + curso 
	public function listar_json(){
	$sql="SELECT c.idCadete,c.paterno,c.materno,c.nombres,c.codigo,u.curso
	      FROM cadetes c, registroCadetes r, gestion g, cursos u
		  WHERE r.idGestion=g.idGestion and c.idCadete=r.idCadete and u.idCurso=r.idCurso
		  ORDER BY c.paterno";
         return $this->select ($sql);		 
	}
		
	//infromacion general del cadete en cuestio
	public function informacion($id,$gestion){
		$sql="SELECT c.idCadete,c.paterno,c.materno,c.nombres,c.codigo,u.curso2,g.gestion,g.semestre,r.coeficiente,r.puntosSemestre
	      FROM cadetes c, registroCadetes r, gestion g, cursos u, gestionActual a
		  WHERE r.idGestion=g.idGestion and c.idCadete=r.idCadete and u.idCurso=r.idCurso AND c.idCadete = '$id' AND a.idGestion=g.idGestion AND a.idGestionActual='$gestion'";
         return $this->select ($sql);
		}
	public function faltasActuales($idc,$gestion){
		$sql="SELECT o.idFaltaCometida, o.fechaFalta,f.falta, c.clase, o.sancionante,o.numeroParte,o.reincidencia,o.partesDemerito,o.tss,o.tte,o.ttec,o.tssc
		      FROM faltasCometidas o, faltas f, tipoFaltas c
			  WHERE o.idFalta=f.idFalta AND o.idRegistro='$idc' AND idGestion='$gestion' AND c.idTipoFalta=f.idTipoFalta";
		return $this->select ($sql);
		}
	
	
	//Ver reincidencia
	function verReincidencia($idc,$idg,$idf){
		$sql="SELECT COUNT(f.reincidencia) AS res,t.rMaxima,t.puntosDemerito,t.tss,t.tte,t.observaciones
              FROM faltascometidas f, tipofaltas t, faltas s 
              WHERE f.idFalta = '$idf' AND f.idRegistro = '$idc' AND f.idGestion = '$idg'
              		AND f.idFalta=s.idFalta AND t.idTipoFalta=s.idTipoFalta
			  GROUP BY  f.idFalta";
	    return 	$this->select ($sql);		
		}
		
	public function faltasCometidas(){
		$sql="SELECT c.idCadete,c.codigo,c.paterno,c.nombres,u.curso";
		
		}

	function verPuntos($p){
		$sql="SELECT num,puntosDemerito,tte,tss,aSimpleLI,aSimpleED,aSeveroCS,aSeveroSD,perdidaVacacion
		      FROM puntosarrestos
			  WHERE puntosDemerito='$p'";
		return $this->select ($sql);
	
	}
	function verPuntosR($n){
		$sql="SELECT num,puntosDemerito,tte,tss,aSimpleLI,aSimpleED,aSeveroCS,aSeveroSD,perdidaVacacion
		      FROM puntosarrestos
			  WHERE num='$n'";
		return $this->select ($sql);
	
	}
	function Puntos($f,$r){
		$sql="SELECT s.puntosDemerito,s.tte,s.tss
			FROM sanciones s, tipofaltas t,faltas f
			WHERE s.idTipoFalta=t.idTipoFalta AND f.idTipoFalta=s.idTipoFalta AND f.idFalta='$f' AND s.reincidencia='$r'";
		return $this->select ($sql);	
	}
}
?>