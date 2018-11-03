<?php
	session_start();
	error_reporting(E_ALL & ~E_NOTICE & ~8192);

	@$ngayden = $_POST['ngayden']; //echo $ngayden;exit();
	@$ngaydi = $_POST['ngaydi'];
	@$sophong = $_POST['sophong'];
	@$nguoilon = $_POST['nguoilon'];
	@$treem = $_POST['treem'];
		
	$_SESSION['ngayden'] = $ngayden;
	$_SESSION['ngaydi'] = $ngaydi;
	$_SESSION['sophong'] = $sophong;
	$_SESSION['nguoilon'] = $nguoilon;
	$_SESSION['treem'] = $treem;

	//echo $_SESSION['ngayden'];
		
?>