<?php
$config = Config::singleton ();

$config->set ( 'controllersFolder', 'controllers/' );
$config->set ( 'modelsFolder', 'models/' );
$config->set ( 'viewsFolder', 'views/' );

$config->set ( 'dbhost', 'localhost' );
$config->set ( 'dbname', 'bdnaval' );
$config->set ( 'dbuser', 'root' );
//$config->set('dbuser', 'sa'); //Esto para SQLSERVER
$config->set ( 'dbpass', '' );

$config->set ( 'dbtipo', 'dbmysql' ); //MySQL
//$config->set('dbtipo', 'dbmssql');	//SqlServer
//$config->set('dbtipo', 'dbaccess');	//Access
//$config->set('dbtipo', 'dboracle');	//Oracle

//Carpeta de Backups
$config->set ( 'dirBackup', 'views/backups/' );

?>