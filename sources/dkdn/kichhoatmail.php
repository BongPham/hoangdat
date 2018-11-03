<?php	if(!defined('_source')) die("Error");
	include_once 'plugin/dkdn_custom/lang_'.$lang.'.php';
	$keycode = $_GET["keycode"];
	$email = $_GET["email"];
	if($keycode !="" && $email!="" ){
		$d>reset();
		$sql = "select id,keycode,trangthai from #_thanhvien where email= '".$email."'";
		$d->query($sql);
		$thanhvien_rs = $d->fetch_array();
		if(count($thanhvien_rs)>0){
			if($thanhvien_rs["keycode"]==$keycode){
				$sql = "update #_thanhvien set trangthai=1,keycode='' where id=".$thanhvien_rs["id"];
				$d->query($sql);
				transfer(_kichhoattc,"http://".$config_url."/dang-nhap.html");
			}else{
				transfer(_keycodefalse, "http://".$config_url."/index.html");
			}
		}else{
			transfer(_usernamenull, "http://".$config_url."/index.html");
		}
    	
	}else{
		transfer(_linkkeycodefalse,"http://".$config_url."/index.html",false);
	}

?>