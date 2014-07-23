<?php
class regproyectoModel extends ModelBase
{
	
	public function listadoTotal()
	{		

		$vsql="SELECT * FROM proyecto ORDER BY proyNombre";
		$listado = $this->select ($vsql);
		
		return $listado;
	}
	
	public function getRegistroId($vid)
	{		

		$vsql="SELECT * FROM ganual WHERE id_ga=".$vid;
		$listado = $this->select ($vsql);
		
		return $listado;
	}
	
	public function updateItem($vid_ga, $dvescripcion, $vindicadores, $vresultados, $vid_er, $vgestion)
	{		
		
		$data=array(
		'descripcion'=>$dvescripcion,
		'indicadores'=>$vindicadores,
		'resultados'=>$vresultados,
		'id_er'=>$vid_er,
		'fecha_mod'=>date("Y-m-d"),
		'gestion'=>$vgestion
		);
		
		$this->update( 'ganual', $data, 'id_ga='.$vid_ga);
		
		return true;
	}
	
	public function insertItem($vproyCodigo, $vproyNombre, $vproyFinanciamiento, $vproyTipoCambio, $vproyMeta)
	{		
		
		$data=array(
		'proyCodigo'=>$vproyCodigo,
		'proyNombre'=>$vproyNombre,
		'proyFinanciamiento'=>$vproyFinanciamiento,
		'proyTipoCambio'=>$vproyTipoCambio,
		'proyMeta'=>$vproyMeta
		);
		
		$this->insert( 'proyecto', $data );
		
		return true;
	}
	
}
?>