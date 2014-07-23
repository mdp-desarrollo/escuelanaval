<?php
class faltasModel extends ModelBase {
	
	public function listar() {
		
		$vsql = "SELECT paterno,materno,nombres FROM cadetes ORDER BY paterno";
		$listado = $this->select ( $vsql );
		return $listado;		
	}
	//lista de cadetes + curso 
	public function listar_json(){
	$sql="SELECT f.idFalta,f.falta,t.clase,t.puntosDemerito,t.tss,t.tte
	      FROM faltas f,tipoFaltas t
		  WHERE f.idTipoFalta=t.idTipoFalta
		  ORDER BY t.idTipoFalta";
         return $this->select ($sql);		 
	}
	public function listar_sancionantes_json(){
	  $sql="SELECT sancionante,COUNT(*) as mayor
	      	FROM faltasCometidas
		  	GROUP BY sancionante
			ORDER BY mayor
			LIMIT 100";
         return $this->select ($sql);		 
	}
	function cambiar(){
		$sql="SELECT f.idFalta,f.falta
		      FROM faltas f";
		$result=$this->select ($sql);
		$faltas=array();
		 	while ( $f = $result->fetch ( PDO::FETCH_OBJ ) ) {
		 	$data=array(
	    	'falta'=>$this->mm($f->falta)
			);
			$this->update( 'faltas', $data, 'idFalta='.$f->idFalta);
		 	}		
		}
		function mm($s){
			return ucwords(strtoupper($s));
		}
		
		function registrarFalta($idc,$gestion,$fecha,$parte,$falta,$rein,$clase,$san,$puntosD,$tte,$tss,$asli,$ased,$ascs,$assed,$pvac){
			$datos=array(
			'idGestion'=>$gestion,
			'idRegistro'=>$idc,
			'fechaFalta'=>$fecha,
			'idFalta'=>$falta,
			'sancionante'=>$san,
			'numeroParte'=>$parte,
			'reincidencia'=>$rein,
			'partesDemerito'=>$puntosD,
			'tss'=>$tss,
			'tte'=>$tte,
			'tssc'=>0,
			'ttec'=>0,
			'asli'=>$asli,
			'ased'=>$ased,
			'ascs'=>$ascs,
			'assd'=>$assed,
			'pvac'=>$pvac,
			'eliminado'=>0
			);
			return  $this->insert( 'faltascometidas', $datos );		
				
		}
		//Editar una Falta cometida por el caballero cadette
		function editarFalta($idf,$idc,$gestion,$fecha,$parte,$falta,$rein,$clase,$san,$puntosD,$tte,$tss){
			$datos=array(
			'idGestion'=>$gestion,
			'idRegistro'=>$idc,
			'fechaFalta'=>$fecha,
			'idFalta'=>$falta,
			'sancionante'=>$san,
			'numeroParte'=>$parte,
			'reincidencia'=>$rein,
			'partesDemerito'=>$puntosD,
			'tss'=>$tss,
			'tte'=>$tte,
			'tssc'=>0,
			'ttec'=>0
			);

			return  $this->update( 'faltascometidas', $datos,'idFaltaCometida='.$idf);		
				
		}
		public function eliminarFaltaCometida($idfc){
			$datos=array('eliminado'=>1);
			return $this->update('faltascometidas',$datos,'idFaltaCometida='.$idfc);
		}
		public function registrarTSS($tssc,$idfc){
			$datos=array('tssc'=>$tssc);
			return $this->update('faltascometidas',$datos,'idFaltaCometida='.$idfc);
			}
		public function registrarTTE($ttec,$idfc){
			$datos=array('ttec'=>$ttec);
			return $this->update('faltascometidas',$datos,'idFaltaCometida='.$idfc);
			}
	function limpiarCadena($s){
	$s=str_replace("Á","&Aacute;",$s);
	$s=str_replace("á","&aacute;",$s);
	$s=str_replace("É","&Eacute;",$s);
	$s=str_replace("é","&eacute;",$s);
	$s=str_replace("Í","&Iacute;",$s);
	$s=str_replace("í","&iacute;",$s);
	$s=str_replace("Ó","",$s);
	$s=str_replace("ó","&oacute;",$s);
	$s=str_replace("Ú","&Uacute;",$s);
	$s=str_replace("ú","&uacute;",$s);
	$s=str_replace("Ñ","&Ntilde;",$s);
	$s=str_replace("ñ","&ntilde;",$s);
	$s=str_replace("Ü","&Uuml;",$s);
	$s=str_replace("ü","&uuml;",$s);
	

	$s=str_replace("Ü","&Uuml;",$s);	
    return $s;
}
}
?>