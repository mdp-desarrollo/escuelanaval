<?php
class FrontController
{
	static function main()
	{
			require 'libs/Config.php'; //Configuracion
			require 'libs/SPDO.php'; //PDO con singleton
			require 'libs/ControllerBase.php'; //Clase modelo base
			require 'libs/ModelBase.php'; //Clase modelo base
			require 'libs/Parametros.php'; //Parametros de acceso.
			
			if(! empty($_GET['controller']))
				  $controllerName = $_GET['controller'] . 'Controller';
			else
				  $controllerName = "usuarioController";
				  //$controllerName = "MenuController";
			if(! empty($_GET['action']))
				  $actionName = $_GET['action'];
			else
				  $actionName = "bienvenida";				  			
				  
			$controllerPath = $config->get('controllersFolder') . $controllerName . '.php';
			if(is_file($controllerPath))
				  require $controllerPath;
			else
				  die('controller no encontrado - 404 not found');
			
			//Si no existe la clase que buscamos y su accion, tiramos un error 404
			if (is_callable(array($controllerName, $actionName)) == false) 
			{
				trigger_error ($controllerName . '->' . $actionName . '` no existe', E_USER_NOTICE);
				return false;
			}
			
			//Creamos una instancia del controlador y llamamos a la accion
			$controller = new $controllerName();
			$controller->$actionName();

		
		
	}
}
?>