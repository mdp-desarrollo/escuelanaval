<?php
class ValidacionModel extends ModelBase
{

	public function getUsVerifica($us, $pass)
	{		
		$vsql="SELECT id_res, nombre, apellidos FROM responsables WHERE usuario like '$us' AND contrasenia like '$pass' AND activo = 1";
		$listado = $this->select ($vsql);
		
		return $listado;
	}
}
?>