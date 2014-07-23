<?php
//salida para json

//funccion que limita a 30 palabras*/
 function limitWords ($aText, $wordCountLimit)
   {
      if (strlen($aText) > 0)
      {
         $tagStrippedText = strip_tags($aText);
         if (str_word_count($tagStrippedText) <= $wordCountLimit)
         {
            return $tagStrippedText;
         }
         return implode(' ', array_slice(explode(' ', $tagStrippedText, $wordCountLimit), 0, ($wordCountLimit - 1))) . '...';
      }
      return '';
   }
function limpiar($s){
	$s=str_replace("�","&Ntilde;",$s);
	$s=str_replace("�","&Oacute;",$s);
	$s=str_replace("�","&oacute;",$s);
	$s=str_replace("�","&iacute;",$s);
	$s=str_replace("�","&Iacute;",$s);
	$s=str_replace("�","&Eacute;",$s);
	$s=str_replace("�","&Aacute;",$s);
	$s=str_replace("�","&aacute;",$s);
	$s=str_replace("�","&Uuml;",$s);
	
return $s;
}   
require_once'conexion.php';
$result=$db->get_results("SELECT idCadete,codigo,paterno,materno,nombres FROM cadetes ORDER BY paterno");
if(sizeof($result)>0){
$i=0;
$cadetes=array();
foreach ($result as $r)
   {
    $cadetes[$i]["id"]=$r->idCadete;
    $cadetes[$i]["nombre"]=limpiar($r->paterno." ".$r->materno." ".$r->nombres);
    $cadetes[$i]["codigo"]=$r->codigo;
	$i++;
	
   }
//print_r($cadetes);
//$result=array($result);
echo json_encode($cadetes);
}
?>