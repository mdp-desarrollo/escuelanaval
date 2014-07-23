<?php
class ControllerBase {
	public function existeFichero($fichero) {
		$config = Config::singleton ();
		$path = $config->get ( 'viewsFolder' ) . $fichero;
		//Si no existe el fichero en cuestion, tiramos un 404
		if (file_exists ( $path ) == false) {
			return false;
		}
		return $path;
	}
	//function con la cual mostramos la cabecera de la pagina
	public function header($js = array(), $css = array(),$titulo="") {
		echo "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">
<html xmlns=\"http://www.w3.org/1999/xhtml\">";
	echo "<head>";
	echo "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />";
	echo "<title>$titulo</title>"; //titulo
	$theme=$_SESSION['theme'];
	echo "<link type=\"text/css\" href=\"views/css/themes/$theme/jquery-ui-1.8.1.custom.css\"	rel=\"stylesheet\" />";
	echo "<link type=\"text/css\" href=\"views/css/style.css\"	rel=\"stylesheet\" />";
	//Incluimos por defecto la libreria jQuery y JqueryUI
	echo "<script type=\"javascript\" src=\"views/js/jquery-1.4.2.min.js\"></script>";
	echo "<script type=\"javascript\" src=\"views/js/jquery-ui-1.8.1.custom.min.js\"></script>";
	//incluimos los estilos css para la pagina
	if (sizeof ( $css ) > 0) {
			foreach ( $css as $k => $v ) {
				
				echo "<script type=\"javascript\" src=\"views/js/" . $v . "\" ></script><br>";
			}
		}
	//Ahora incluimos las demas librerias  js
		if (sizeof ( $js ) > 0) {
			foreach ( $js as $k => $v ) {
				
				echo "<script type=\"javascript\" src=\"views/js/" . $v . "\" ></script><br>";
			}
		}
	
		echo "</head>";
		echo "<body>";
	
	}
	public function footer() {
		echo "</body></html>";
	}
	function limpiarCadena($s){
	$s=str_replace("Ñ","&Ntilde;",$s);
	$s=str_replace("Ó","&Oacute;",$s);
	$s=str_replace("ó","&oacute;",$s);
	$s=str_replace("í","&iacute;",$s);
	$s=str_replace("Í","&Iacute;",$s);
	$s=str_replace("É","&Eacute;",$s);
	$s=str_replace("Á","&Aacute;",$s);
	$s=str_replace("á","&aacute;",$s);
	$s=str_replace("Ü","&Uuml;",$s);	
    return $s;
} 
}
?>