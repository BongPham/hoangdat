<?php	if(!defined('_source')) die("Error");
if(isset($_SESSION['login_web'])){
	unset($_SESSION['login_web']);
    transfer("Bạn đã đăng xuất thành công", "http://".$config_url."/index.html");			
}else{
	transfer("Bạn đã chưa đăng nhập","http://".$config_url."/dang-nhap.html",false);
}
?>