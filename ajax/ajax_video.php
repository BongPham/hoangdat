<?php
	session_start();
	error_reporting(E_ALL & ~E_NOTICE & ~8192);
	
	@define ( '_lib' , '../libraries/');
    
	include_once _lib."config.php";
	include_once _lib."constant.php";
	include_once _lib."functions.php";
	include_once _lib."functions_giohang.php";
	include_once _lib."class.database.php";
    
	$d = new database($config['database']);
		
	@$giatri = $_POST['giatri'];
		

	$d->reset();
    $sql= "select ten_vi,links,id from table_video where hienthi=1 and type='video'and id='".@$giatri."'";
    $d->query($sql);
    $video = $d->fetch_array();
    //echo $sql;exit();
?>
<iframe width="600" height="435" src="https://www.youtube.com/embed/<?=youtobi($video["links"])?>" frameborder="0" allowfullscreen></iframe>