<?php
	session_start();
	error_reporting(E_ALL & ~E_NOTICE & ~8192);
	
	@define ( '_lib' , '../libraries/');
    
	include_once _lib."config.php";
	include_once _lib."constant.php";;
	include_once _lib."functions_giohang.php";
	include_once _lib."class.database.php";
    
	$d = new database($config['database']);
		
	@$pid = $_POST['pid'];
	@$giadungtich = $_POST['giadungtich'];
	@$dungtich = $_POST['dungtich'];
	@$giadungtich = $_POST['giadungtich'];
	if($_POST['soluong']>0){
		@$soluong = $_POST['soluong'];
	}else {
		@$soluong = 1;
	}
     
    $result_giohang = addtocart($pid,$soluong,$dungtich,$giadungtich);
    // $result_giohang = addtocart1($pid,$soluong,$dungtich,$giadungtich);

    $count = count($_SESSION['cart']);
	
	$result = array('result_giohang' => $result_giohang,'count' => $count);

	echo json_encode($result);
?>