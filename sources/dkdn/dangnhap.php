<?php 
	include_once 'plugin/dkdn_custom/lang_'.$lang.'.php';
	include_once 'plugin/dkdn_custom/function_dkdn.php';
	unset($_SESSION['login_web']);
	$title= $title_cat=_dangnhap;
	$email = $_POST['email'];
	$password = $_POST['password'];
	//url comeback
	if($_SESSION['comeback']!=""){
		$url_login = $_SESSION['comeback'];
	}else{
		$url_login = "http://".$config_url."/index.html";
	}
	if(!empty($_POST)) {
		$error = true;
		$error2 = true;
		//Kiểm tra các trường không được rỗng
		if(str_notnull($email = str_security($_POST["email"]),_tendn))
			if(str_notnull($password = str_security($_POST["password"]),_matkhau))
				$error = true;
			else $error = false;
		else $error = false;
		
		#===========================================================
		if($error){
			//các trường đã đủ
				if(!check_email($email)){
					//lấy thông tin
					$info_tv = get_info_tv($email);
					if($info_tv["password"]== md5($password))
						if($info_tv["trangthai"]==1)
							$error2 = true;
						else{
							//tk chưa kích hoạt
							transfer(_activefalse,"http://".$config_url."/index.php?com=kich-hoat-tai-khoan&email=".$email."",false);
						}
					else{
						//sai mật khẩu
						alert(_sai._matkhau);
						$error2 = false;
					}
				}else{
					//Email ko tồn tại
					$error2 = false; 
					alert(_usernamenull);
				}
		}	

		#===========================================================
		if($error && $error2){
			$_SESSION["captcha"] ='';
			$info_tv = get_info_tv($email);
			//đăng nhập thành công
			$_SESSION['login_web'] = array();
			$_SESSION['login_web']['hoten'] = $info_tv["hoten"];
			$_SESSION['login_web']['email'] = $info_tv["email"];
			$_SESSION['login_web']['id'] = $info_tv["id"];
			//save cookie ghi nhớ lần sau
			if(isset($_POST['ghinho'])){
				setcookie("email".$config_url,$email,time() + 3600000);
				setcookie("pass".$config_url,$password,time() + 3600000);
			}else{
				setcookie("email".$config_url,$email,time() - 3600000);
				setcookie("pass".$config_url,$password,time() - 3600000);
			}
			//comeback
			transfer(_dangnhaptc,$url_login);
		}
	}
	//dang nhap bang cookie
	if(isset($_COOKIE["email".$config_url])){
		$cookie_us=$_COOKIE["email".$config_url];
		$cookie_ps = $_COOKIE["pass".$config_url];
	}

?>