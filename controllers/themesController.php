<?php
class themesController extends ControllerBase{
	private $theme;
	function __contruct(){
		require 'models/themesModel.php';
		$this->theme=new themesModel();
	}
	function listThemes	(){
	$temas=$this->theme->listar();
	}
}
?>
	