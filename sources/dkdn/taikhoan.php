<?php if(!defined('_source')) die("Error");
	include_once 'plugin/dkdn_custom/lang_'.$lang.'.php';
	include_once 'plugin/dkdn_custom/function_dkdn.php';
	$title= $title_cat = _thongtintk;
	if(!isset($_SESSION['login_web'])){
		//chưa đăng nhập
		transfer(_chuadangnhap,"http://".$config_url."/dang-nhap.html",false);
	}
	//lấy thông tin thành viên
	$email = $_SESSION['login_web']["email"];
	if (!empty($_POST)) {
		$error = true;
		$error2 = true;
		//Kiểm tra các trường không được rỗng
		if(str_notnull(str_security($_POST["captcha"]),_captcha)) 
			if(str_notnull($password = str_security($_POST["password"]),_matkhau))
				if(str_notnull($hoten = str_security($_POST["hoten"]),_hoten))
					$error = true;
				else $error = false;
			else $error = false;
		else $error = false;
		#===========================================================
		//Kiểm tra điều kiện
		if($error){
			if($_SESSION["captcha"]==$_POST["captcha"]){
				$info_tv = get_info_tv($email);
				if($info_tv["password"] == md5($password))
					$error2 = true;
				else{
					//sai mật khẩu
					alert(_sai._matkhau);
					$error2 = false;
				}
			}else{
				//sai captcha
				$error2 = false; 
				alert(_captcha." "._sai);
			}	
		}
		#===========================================================
		if($error && $error2){
			$_SESSION["captcha"] ='';
			//data save
			$info_tv = get_info_tv($email);
			$data['hoten'] = $hoten;
			$data['ngaysinh'] = $_POST['ngaysinh'];
			$data['diachi'] = $_POST['diachi'];
			$data['dienthoai'] = $_POST['dienthoai'];
			$data['noidung'] = $_POST['noidung'];
			$data['ngaysua'] = time();
			$d->setTable('thanhvien');
			$d->setWhere("id",$info_tv["id"]);
			if($d->update($data)){
				$_SESSION['login_web']["email"] = $email;
				transfer(_capnhattc,"http://".$config_url."/tai-khoan.html");
			}
			else{
				alert(_luudatafalse);
			}
		}
		
	}
	$info_tv = get_info_tv($_SESSION['login_web']["email"]);
	
?>