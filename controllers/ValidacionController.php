<?php
class ValidacionController extends ControllerBase
{
	
	public function validar()
	{		
		$vtxtus=$_POST['txtus'];
		$vtxtpass=$_POST['txtpass'];
		
		require 'models/ValidacionModel.php';
		$items = new ValidacionModel();
		
		$listado = $items->getUsVerifica($vtxtus, $vtxtpass);
		if($item = $listado->fetch()){
			$_SESSION['scod']=$item[0];
			$_SESSION['snombre']=$item[1]." ".$item[2];
			/*$_SESSION['snivel']=$row["nivel"];
			if($_SESSION['snivel']==1){
				header("Location: menuini.php?".session_id());
			}*/
			header("Location: index.php?controlador=GestionAnual&accion=listar");
		}else{
			header("Location: index.php");
		}
	}
	
	public function cerrar()
	{		
		session_destroy();
		header("Location: index.php");
	}
}
?>