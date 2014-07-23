<?php
class themesModel extends ModelBase{
	function listar(){
		$sql="SELECT idTheme, theme
		      FROM themes
			  ORDER BY theme";
	return $this->select ($sql);
	}
}