<?php if(!defined('_source')) die("Error");
	include_once 'plugin/dkdn_custom/lang_'.$lang.'.php';
	include_once 'plugin/dkdn_custom/function_dkdn.php';
	$title= $title_cat = _doimatkhau;
	if(!isset($_SESSION['login_web']) || $_SESSION['login_web']["email"]==''){
		//chưa đăng nhập
		transfer(_chuadangnhap,"http://".$config_url."/dang-nhap.html",false);
	}
	if(!empty($_POST)) {
		$email = $_SESSION['login_web']["email"];
		$error = true;
		$error2 = true;
		//Kiểm tra các trường không được rỗng
		if(str_notnull($password = str_security($_POST["password"]),_matkhau))
			if(str_notnull($password2 = str_security($_POST["password2"]),_matkhau))
				if(str_notnull($re_password = str_security($_POST["re_password"]),_matkhau))
					$error = true;
				else $error = false;
			else $error = false;
		else $error = false;
		#===========================================================
		//Kiểm tra điều kiện
		if($error){
			
			//các trường đã đủ
			if($_SESSION["captcha"]==$_POST["captcha"])
				if(!check_email($email)){
					//lấy thông tin
					$info_tv = get_info_tv($email);
					if($info_tv["password"]==md5($password))
						if($_POST["password2"] == $_POST["re_password"])
							$error2 = true;
						else{
							//nhập lại mk sai
							$error2 = false;
							alert(_nhaplaimatkhau._sai);
						}
					else{
						//sai mật khẩu
						alert(_sai._matkhau);
						$error2 = false;
					}
				}else{
					//email ko tồn tại
					$error2 = false; 
					alert(_usernamenull);
				}
			else{
				//sai captcha
				$error2 = false; 
				alert(_captcha." "._sai);
			}	
		}
		#===========================================================
		//Không Có Lỗi
		if($error && $error2){
			$_SESSION["captcha"] ='';
			$info_tv = get_info_tv($email);
			$sql="update #_thanhvien set password='".md5($_POST["password2"])."' where id=".$info_tv["id"];
			if($d->query($sql)){
				//đổi mật khẩu thành công
				transfer(_doimkthanhcong,"http://".$config_url."/dang-nhap.html");
			}else{
				//đổi mật khẩu thất bại
				alert(_luudatafalse);
			}
		}
	}

?>