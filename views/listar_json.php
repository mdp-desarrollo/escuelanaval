<?php
	function limpiar($s){
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
$i=0;
$cadetes=array();
/* foreach ($lista as $row) {  
     echo $row['idCadete'] . "n";  
     echo $row['paterno'] . "n";  
     echo $row['materno'] . "n";  
 }
 */
while ( $c = $lista->fetch ( PDO::FETCH_OBJ ) ) {
    $cadetes[$i]["id"]=$c->idCadete;
    $cadetes[$i]["nombre"]=limpiar($c->paterno." ".$c->materno." ".$c->nombres);
    $cadetes[$i]["codigo"]=$c->codigo;
	$cadetes[$i]["curso"]=$c->idCurso;
	$i++;
}
//print_r($cadetes);
//$result=array($result);
echo json_encode($cadetes);
?>