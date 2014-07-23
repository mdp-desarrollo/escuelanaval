<?php
class adminModel extends ModelBase {
public function selecAll($tabla){
	$sql="SELECT * FROM ".$tabla;
	return $this->select($sql);
}

}
?>