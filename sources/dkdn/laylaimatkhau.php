<?php if(!defined('_source')) die("Error");
	include_once 'plugin/dkdn_custom/lang_'.$lang.'.php';
	include_once 'plugin/dkdn_custom/function_dkdn.php';
	$title= $title_cat = _doimatkhau;
	$keycode = $_GET["keycode"];
	$email = $_GET["email"];
	if($keycode !="" && $email!="" ){
		//kiem tra mã kích hoạt
		if(!check_email($email)){
			$d->query("select id,keycode from #_thanhvien where email='$email' ");
			$info_tv = $d->fetch_array();
			//sai mã kích hoạt
			if($info_tv["keycode"]==$keycode){
				$_SESSION["khoiphucmk"] = array();
				$_SESSION["khoiphucmk"]["keycode"] = $keycode ;
				$_SESSION["khoiphucmk"]["email"] = $email ;
				header('Location: '."http://".$config_url."/lay-lai-mat-khau.html");	
			}else{
				transfer(_keycodefalse,"http://".$config_url."/index.html",false);
			}
		}else{
			//email ko tồn tại
			transfer(_usernamenull,"http://".$config_url."/index.html",false);
		}
	}else{
		if(!empty($_POST)) {
			$error = true;
			$error2 = true;
			//Kiểm tra các trường không được rỗng
			if(isset($_SESSION["khoiphucmk"]["keycode"]))
				if(str_notnull($password2 = str_security($_POST["password2"]),_matkhau))
					if(str_notnull($re_password = str_security($_POST["re_password"]),_matkhau))
						$error = true;
					else $error = false;
				else $error = false;
			else{
				transfer("Error Link!","http://".$config_url."/index.html",false);
			}
			$email = $_SESSION['khoiphucmk']["email"];
			$keycode = $_SESSION['khoiphucmk']["keycode"];
			#===========================================================
			//Kiểm tra điều kiện
			if($error){
				//các trường đã đủ
				if($_SESSION["captcha"]==$_POST["captcha"])
					if(!check_email($email)){
						//lấy thông tin
						$info_tv = get_info_tv($email);
						if($info_tv["keycode"] == $keycode)
							$error2 = true; 
						else{
							//keycode ko tồn tại
							transfer(_keycodefalse,"http://".$config_url."/index.html",false);
						}
					}else{
						//email ko tồn tại
						transfer(_usernamenull,"http://".$config_url."/index.html",false);
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
				$sql="update #_thanhvien set password='".md5($_POST["password2"])."',keycode='' where id=".$info_tv["id"];
				if($d->query($sql)){
					//đổi mật khẩu thành công
					transfer(_doimkthanhcong,"http://".$config_url."/dang-nhap.html");
				}else{
					//đổi mật khẩu thất bại
					alert(_luudatafalse);
				}
			}
		}
	}

?>