<?php
	session_start();
	//kiểm tra capcha
	if (isset($_POST["captcha"])) {
		if ($_POST['captcha'] == $_SESSION["captcha"]) {echo true;}else{echo false;}
	}else
	echo false;
?>
