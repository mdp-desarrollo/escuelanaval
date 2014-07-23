<?php
class regproyectoController extends ControllerBase
{
	private $rProyecto_Model;
	
	public function __construct()
	{
		require 'models/regproyectoModel.php';
		$this->rProyecto_Model = new regproyectoModel();
	}
	
	public function listarTodo()
	{		

		$listado = $this->rProyecto_Model->listadoTotal();
		
		require 'models/entidadModel.php';
		$oEntidad = new entidadModel();
		$listadoEntidad = $oEntidad->listadoTotal();
		
		if ($path = $this->existeFichero('regproyecto.php')){
			include($path);
		}
		
	}
	

	
	public function editar()
	{		
		/*$modificar=1;
		$vid=$_GET['pvid'];
		$listado = $this->ga_model->getRegistroId($vid);
		
		require 'models/EstRegistrosModel.php';
		$items_estado = new EstRegistrosModel();
		$list_estado = $items_estado->listadoTotal();
		
		//desplegar en pantalla
		$titulo='Gestión Anual - Editar Registro';
		$stilo=array ('views/css/stl_index','views/css/stl_items');
		$script_js=array ('views/scripts/validar_frm');
		echo $this->htmlIni($titulo, $stilo, $script_js);
		echo $this->supPagina();
		echo $this->marcoCuerpoSup($_SESSION['snombre'], true);
		echo $this->menuPagina('SPO');
		echo $this->tituloPag($titulo);
		if ($path = $this->existeFichero('gestionanual_frm.php')){
			include($path);
		}
		echo $this->marcoCuerpoInf();
		echo $this->htmlFin();*/
	}
	
	public function actualizarItem()
	{		
		$id_ga=$_POST['fid_ga'];
		$descripcion=$_POST['fdescripcion'];
		$indicadores=$_POST['findicadores'];
		$resultados=$_POST['fresultados'];
		$id_er=$_POST['fid_er'];
		$gestion=$_POST['fgestion'];
		
		$listado = $this->ga_model->updateItem($id_ga, $descripcion, $indicadores, $resultados, $id_er, $gestion);
		
		$this->listarTodo();

	}
	
	public function ingresarItem()
	{		
		$vproyCodigo=$_POST['txtproyCodigo'];
		$vproyNombre=$_POST['txtproyNombre'];
		$vproyFinanciamiento=$_POST['txtproyFinanciamiento'];
		$vproyTipoCambio=$_POST['txtproyTipoCambio'];
		$vproyMeta=$_POST['txtproyMeta'];
		
		$listado = $this->rProyecto_Model->insertItem($vproyCodigo, $vproyNombre, $vproyFinanciamiento, $vproyTipoCambio, $vproyMeta);
		
		$this->listarTodo();

	}
}
?>