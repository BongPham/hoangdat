<?php
	error_reporting(0);
	session_start();
	$session=session_id();
	if(!isset($_SESSION['lang']))
	{
	$_SESSION['lang']='vi';
	}
	$lang=$_SESSION['lang'];
	
	@define ( '_lib' , '../libraries/');
	@define ( '_source' , '../sources/');
    
	include_once _lib."config.php";
	include_once _lib."constant.php";;
	include_once _lib."functions.php";
	include_once _lib."functions_giohang.php";
	include_once _lib."class.database.php";
	include_once _source."lang_$lang.php";
	
	$d = new database($config['database']);
	
	$gia = $_POST['id_gia'];
	$id_sanpham = $_POST['id_sanpham'];

	$d->reset();
	$sql = "select khuyenmai_vi, giadungtich_vi from #_product where id='".$id_sanpham."' ";
	$d->query($sql);
	$giadungtich = $d->fetch_array();

	$giadungtich_vi=explode("|",$giadungtich['giadungtich_vi']);

	echo $giadungtich_vi[$gia]. ' VND';
?>
