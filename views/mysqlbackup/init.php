<?php

$GonxAdmin["dbhost"] = "localhost";
$GonxAdmin["dbname"] = "dbnaval";
$GonxAdmin["dbuser"] = "root";
$GonxAdmin["dbpass"] = "";
$GonxAdmin["dbtype"] = "mysql";
$GonxAdmin["compression"] = array("bz2","zlib");
$GonxAdmin["compression_default"] = "zlib";
$GonxAdmin["login"] = "admin";
$GonxAdmin["pass"] = "r0salinda";
$GonxAdmin["locale"] = "es";
$GonxAdmin["pagedisplay"] = 10;
$GonxAdmin["mysqldump"] = "C:/xampp/mysql/bin/mysqldump.exe";


require_once("libs/db.class.php");
require_once("libs/gonxtabs.class.php");
require_once("libs/backup.class.php");
require_once("libs/locale.class.php");	// Localisation class


?>