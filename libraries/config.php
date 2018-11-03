<?php 

	 
	if(!defined('_lib')) die("Error");
	function nettuts_error_handler($number, $message, $file, $line, $vars)
	{
		if ( ($number !== E_NOTICE) && ($number < 2048) ) {
			include 'templates/error_tpl.php';
			die();
		}
	}
	//set_error_handler('nettuts_error_handler');
	//error_reporting(0);

	date_default_timezone_set('Asia/Ho_Chi_Minh');

	$config_url=$_SERVER["SERVER_NAME"].'/visior';
	$config['debug']=1;    #Bật chế độ debug dành cho developer
	$config['lang']="vi";
	// $config_email="contact@demo109.ninavietnam.org";
	// $config_pass="vietnam";
	// $config_ip="210.2.64.70";
	$config_email="admin@visior.vn";
	$config_pass="123qwe!@#";
	$config_ip="103.15.48.16";

	$config['database']['servername'] = 'localhost';
	$config['database']['username'] = 'root';
	$config['database']['password'] = '';
	$config['database']['database'] = 'visior';
	$config['database']['refix'] = 'table_';

?>