<?php
class cadeteModel extends ModelBase {
	
	public function listar() {
		
		$vsql = "SELECT idCadete,paterno,materno,nombres FROM cadetes ORDER BY paterno";
		$listado = $this->select ( $vsql );
		return $listado;		
	}
	//lista de cadetes + curso que no estten en consejo Disciplinario
	public function listar_json($idg){
	$sql="SELECT c.idCadete,c.paterno,c.materno,c.nombres,c.codigo,u.curso2,u.curso,c.fotografia
	      FROM cadetes c, registroCadetes r, gestion g, cursos u
		  WHERE r.idGestion=g.idGestion and c.idCadete=r.idCadete and u.idCurso=r.idCurso AND r.consejoDisciplinario='0'
		  AND r.idGestion='$idg'
		  ORDER BY c.paterno";
         return $this->select ($sql);		 
	}
	public function listaCadeteFaltas(){
		$sql="SELECT c.idCadete,CONCAT(c.paterno,' ',c.materno,' ',c.nombres) as nombre,c.codigo,u.curso2,u.curso, SUM(f.tss)- SUM(f.tssc) as tss, SUM(f.tte)- SUM(f.ttec) as tte
	      FROM cadetes c, registroCadetes r, gestion g, cursos u,faltascometidas f
		  WHERE r.idGestion=g.idGestion and c.idCadete=r.idCadete and u.idCurso=r.idCurso AND r.consejoDisciplinario='0'
		  
		 GROUP BY r.idRegistro";
		return $this->select($sql);
		
	}	
	//cadetes de una gestion y curso dados
	public function cadetesGestion($g,$c){
		$sql="SELECT c.idCadete,CONCAT(c.paterno,' ',c.materno,' ',c.nombres) as nombre
		FROM cadetes c, registroCadetes r
		WHERE r.idCadete=c.idCadete AND r.idCurso='$c' AND r.idGestion='$g'";
		return $this->select($sql);
	}
	//infromacion general del cadete en cuestio
	public function informacion($id,$gestion){
		$sql="SELECT c.idCadete,c.paterno,c.materno,c.nombres,c.codigo,u.curso2,g.gestion,g.semestre,r.coeficiente,r.puntosSemestre,c.fotografia
	      FROM cadetes c, registroCadetes r, gestion g, cursos u, gestionActual a
		  WHERE r.idGestion=g.idGestion and c.idCadete=r.idCadete and u.idCurso=r.idCurso AND c.idCadete = '$id' AND a.idGestion=g.idGestion AND a.idGestionActual='$gestion'";
         return $this->select ($sql);
		}
	public function faltasActuales($idc,$gestion){
		$sql="SELECT o.idFaltaCometida,f.idFalta, o.fechaFalta,f.falta, c.clase, o.sancionante,o.numeroParte,o.reincidencia,o.partesDemerito,o.tss,o.tte,o.ttec,o.tssc
		      FROM faltasCometidas o, faltas f, tipoFaltas c
			  WHERE o.idFalta=f.idFalta AND o.idRegistro='$idc' AND idGestion='$gestion' AND c.idTipoFalta=f.idTipoFalta AND o.eliminado=0";
		return $this->select ($sql);
		}
	
	
	//Ver reincidencia
	function verReincidencia($idc,$idg,$idf){
		$sql="SELECT COUNT(f.reincidencia) AS res,t.rMaxima,t.puntosDemerito,t.tss,t.tte,t.observaciones
              FROM faltascometidas f, tipofaltas t, faltas s 
              WHERE f.idFalta = '$idf' AND f.idRegistro = '$idc' AND f.idGestion = '$idg'
              		AND f.idFalta=s.idFalta AND t.idTipoFalta=s.idTipoFalta AND f.eliminado=0
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
	//enviar a al caballero cadete a consejo disciplinario
	function aConsejoDisciplinario($data,$idr){
		if($this->insert('consejoDisciplinario',$data)){
			$datos=array('consejoDisciplinario'=>'1');
			return $this->update('registrocadetes',$datos,'idRegistro='.$idr);
		}
	}
	//listar cadetes que se encuentren en consejo disciplinario
	function lista_consejoDisciplinario(){
			$sql="SELECT c.idCadete,c.paterno,c.materno,c.nombres,c.codigo,u.curso2,u.curso,f.idFalta,f.falta,t.clase,d.fechaIngreso,d.idRegistro,d.idConsejo,d.numero,d.gestion
	      FROM cadetes c, registroCadetes r, gestion g, cursos u,consejoDisciplinario d, faltas f,tipoFaltas t
		  WHERE r.idGestion=g.idGestion and c.idCadete=r.idCadete and u.idCurso=r.idCurso 
		  		AND r.idRegistro=d.idRegistro AND f.idFalta=d.idFalta AND t.idTipoFalta=f.idTipoFalta AND d.baja='0'
		  ORDER BY c.paterno";
         return $this->select ($sql);
	}
	//quitar del consejo disciplinario
	function quitarConsejo($idC){
		return $this->delete('consejoDisciplinario',"idConsejo=".$idC);
	}
	//dar de alta del consejo disciplinario
	function darAlta($idr){
			$datos=array('consejoDisciplinario'=>'0');
			return $this->update('registrocadetes',$datos,'idRegistro='.$idr);
	}
	//dar de baja a un cadete
	function darBaja($idc,$idr,$obs,$gestion){
	$datos=array(
	'idConsejo'=>$idc,
	'idRegistro'=>$idr,
	'idGestion'=>$gestion,
	'fechaBaja'=>date("Y-m-d"),
	'observaciones'=>$obs
	);	
	return $this->insert('bajasdisciplinarias',$datos);
	}
	function retirarConsejo($idc){
			$datos=array('baja'=>1);
			return $this->update('consejodisciplinario',$datos,'idConsejo='.$idc);
	}
	function bajasDisciplinarias(){
		$sql="SELECT idBaja, c.codigo,CONCAT(c.paterno,' ',c.materno,' ',c.nombres) as nombre,  cu.curso2,f.falta,t.clase,b.fechaBaja,g.gestion,g.semestre,d.numero,d.gestion as gestion1,d.fechaIngreso, b.observaciones
FROM cadetes c, registrocadetes r, bajasdisciplinarias b, consejodisciplinario d, faltas f, cursos cu, tipofaltas t, gestion g
WHERE c.idCadete=r.idCadete AND b.idRegistro=r.idRegistro AND d.idConsejo=b.idConsejo AND f.idFalta=d.idFalta AND t.idTipoFalta=f.idTipoFalta
AND cu.idCurso=r.idCurso AND d.idRegistro=r.idRegistro AND g.idGestion=b.idGestion";
		return $this->select($sql);
	}
        
        public function update($id,$codigo,$paterno,$materno,$nombres) {
		
		$usql = "UPDATE cadetes SET codigo='$codigo', paterno = '$paterno', materno = '$materno', nombres='$nombres' WHERE idCadete='$id'";
		$update = $this->select ( $usql );
		return $update;		
	}
        
        public function add($codigo,$paterno,$materno,$nombres) {
		$usql = "UPDATE cadetes SET codigo='$codigo', paterno = '$paterno', materno = '$materno', nombres='$nombres' WHERE idCadete='$id'";
		$update = $this->select ( $usql );
		return $update;		
	}
}
?>