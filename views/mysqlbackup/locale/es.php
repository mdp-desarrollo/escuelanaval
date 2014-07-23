<?php

/**
 * MySQL Backup Pro traducci�n al castellano
 * 
 * @package GONX
 * @author Ben Yacoub Hatem <hatem@php.net>
 * @copyright Copyright (c) 2004
 * @version $Id$ - 08/04/2004 16:20:30 - en.php
 * @access public
 * @traduccion - Jose L. Calle 12/04/2004
 **/
 
// Application title
$GONX["title"] = "&nbsp;&nbsp;MySQL Backup";


$GONX["deleteconfirm"] = 'Esta usted seguro de borrar el archivo ?\nClick en Aceptar para confimar.';

$GONX["header"] = '<html>
<head>
<title>'.$GONX["title"].'</title>
<style type="text/css" media="screen">@import "style.css";</style>
<script language="JavaScript" type="text/javascript">
<!--
function ConfirmDelete() {
	return confirm("'.$GONX["deleteconfirm"].'");
}
//-->
</script>
</head>
<body>
';

// Home page content
$GONX['homepage'] = "<br/>
			Base de datos en uso: <b>".$GonxAdmin["dbname"]."</b>
			";
			
$GONX["installed"] = " est&aacute; instalado";
$GONX["notinstalled"] = " no est&aacute; instalado";
$GONX["compression"] = "M&oacute;dulos de compresi&oacute;n PHP";
$GONX["autherror"] = " Por favor, introduce un usuario y contrase&ntilde;a para acceder";

$GONX["home"] = "Inicio";
$GONX["create"] = "Crear Backup";
$GONX["list"] = "Listar/Importar backup";
$GONX["optimize"] = "Optimizar";
$GONX["monitor"] = "Monitor";
$GONX["logout"] = "Salir";
			
$GONX["backup"] = "Backup de";
$GONX["iscorrectcreat"] = "ha sido correctamente creado en";
$GONX["iscorrectimport"] = "ha sido corectamente importado a la base de datos";
$GONX["selectbackupfile"] = "&nbsp;&nbsp;&nbsp;&nbsp;Selecciona de los ficheros de backup disponibles, cuales quieres importar";
$GONX["importbackupfile"] = "O b&uacute;scalos aqu&iacute;";
$GONX["delete"] = "Eliminar";
$GONX["nobckupfile"] = "No hay ficheros de backup disponibles. Haz click en <a href=\"?go=create\" class=tab-g>Crear Backup</a> para crear una copia de seguridad de tu DB";
$GONX["importbackup"] = "Importar fichero de backup";
$GONX["importbackupdump"] = "Use MySQL Dump";
$GONX["configure"] = "Configurar";
$GONX["configureapp"] = "Configura tu aplicaci&oacute;n </b><i>(Chmod 0777 init.php antes de usar esta funci&oacute;n)</i>";
$GONX["totalbackupsize"] = "Tama&ntilde;o total del directorio Backups";
$GONX["chgdisplayorder"] = "Cambiar order ";
$GONX["next"] = "Siguiente";
$GONX["prev"] = "Anterior";

$GONX["structonly"] = "Structure only";
$GONX["checkall"] = "Check All";
$GONX["uncheckall"] = "Uncheck All";
$GONX["tablesmenuhelp"] = "<u>Help</u>  : If you see <label>labels</label> it mean that there are changes in that tables.";
$GONX["backupholedb"] = "Click aqui para crear un backup de toda la base de datos :";
$GONX["selecttables"] = "O seleccione solo las tablas de las que quiere realizar el backup:";

$GONX["ignoredtables"] = "Ignorar tabla";
$GONX["reservedwords"] = "Reserved mysql word";

?>