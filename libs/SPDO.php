<?php
class SPDO extends PDO 
{
	private static $instance = null;

	public function __construct() 
	{
		$config = Config::singleton();
		switch ($config->get('dbtipo')){
			case 'dbmysql':
				parent::__construct('mysql:host=' . $config->get('dbhost') . ';dbname=' . $config->get('dbname'), $config->get('dbuser'), $config->get('dbpass'));
			break;
			case 'dbmssql':
				parent::__construct('mssql:host=' . $config->get('dbhost') . ';dbname=' . $config->get('dbname'), $config->get('dbuser'), $config->get('dbpass'));
			break;
			case 'dbaccess':
				$dbh = new PDO("odbc:Driver={Microsoft Access Driver (*.mdb)};Dbq=C:\accounts.mdb;Uid=Admin");
			break;
			case 'dboracle':
				//$dbh = new PDO("OCI:", "username", "password")        
				//$dbh = new PDO("OCI:dbname=accounts;charset=UTF-8", "username", "password");  //CON UTF
			break;
		}
	}

	public static function singleton() 
	{
		if( self::$instance == null ) 
		{
			self::$instance = new self();
		}
		return self::$instance;
	}
}

?>