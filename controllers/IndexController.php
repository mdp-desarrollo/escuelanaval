<?php
class IndexController extends ControllerBase {
	//metodo index
	public function index() {
		require 'models/IndexModel.php';
		$items = new IndexModel ();
		if ($path == $this->existeFichero ( "index.php" )) {
			include ($path);
		}
	}
}
?>