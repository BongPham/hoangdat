<?php if(!defined('_source')) die("Error");
	include_once 'plugin/dkdn_custom/lang_'.$lang.'.php';
	include_once 'plugin/dkdn_custom/function_dkdn.php';
	$url_here = getCurrentPageURL();
	$title= $title_cat = _dangkythanhvien;
	if(!empty($_POST)) {
		$error = true;
		$error2 = true;
		//Kiểm tra các trường không được rỗng
		if(str_notnull(str_security($_POST["captcha"]),_captcha)) 
			if(str_notnull($password = str_security($_POST["password"]),_matkhau)) 
				if(str_notnull($email = str_security($_POST["email"]),"Email"))
					if(str_notnull($hoten = str_security($_POST["hoten"]),_hoten))
						$error = true;
					else $error = false;
				else $error = false;
			else $error = false;
		else $error = false;
		#===========================================================
		//Kiểm tra tồn tại...
		if($error){
			//các trường đã đủ
			if($_POST["dongy"]=="1")
				if($_SESSION["captcha"]==$_POST["captcha"])
					if(check_email($email)) 
						if($password == $_POST["re_password"])
							$error2 = true;
						else{
							//nhập lại mk sai
							$error2 = false;
							alert(_nhaplaimatkhau._sai);
						}
					else{ 
						//email đã tồn tại
						$error2 = false;
						alert("Email "._datontai);
					} 
				else{
					//sai captcha
					$error2 = false; 
					alert(_captcha." "._sai);
				}
			else{
				$error2 = false; 
				alert("Chưa đồng ý với điều khoản đăng ký!");
			}
		}
		#===========================================================
		//Không Có Lỗi
		if($error && $error2){
			$_SESSION["captcha"] ='';
			//data save
			$data['keycode'] = $maso = ChuoiNgauNhien(20);
			$data['password'] = md5($password);
			$data['email'] = $email;
			$data['hoten'] = $hoten;
			$data['ngaysinh'] = $_POST['ngaysinh'];
			$data['diachi'] = $_POST['diachi'];
			$data['dienthoai'] = $_POST['dienthoai'];
			$data['noidung'] =  $_POST['noidung'];
			
			$data['trangthai'] = 0;
			$data['ngaytao'] = time();
			$d->setTable('thanhvien');
			#=====================================================send Mail
			include_once _lib."phpMailer/class.phpmailer.php";
			$mail = new PHPMailer();
			$mail->IsSMTP();
			$mail->SMTPAuth   = true;    
			$mail->Host       = $config_ip; // tên SMTP server
			$mail->Username   = $config_email; // SMTP account username
			$mail->Password   = $config_pass;  //Pass SMTP
			//Thông tin người gửi
			$mail->SetFrom($config_email,$row_setting['ten_vi']);
			//Thiết lập thông tin người nhận
			$mail->AddAddress($email,$hoten);
			//Thiết lập email Reply
			$mail->AddReplyTo($row_setting['email'],$row_setting['ten_vi']);
			//Thiết lập tiêu đề
			$mail->Subject    = "Xác Nhận Tài Khoản từ website ".$row_setting["ten_vi"]."  -  ".$row_setting["website"];
			$mail->IsHTML(true);
			//Thiết lập định dạng font chữ
			$mail->CharSet = "utf-8";	
			$body = '<table style="text-align:left;">';
			$body .= '
				<tr>
					<td colspan="2">&nbsp;</td>
				</tr>
				<tr>
					<td colspan="2">'.$row_setting["ten_vi"].' chào bạn! .</td>
				</tr>
				<tr>
					<td colspan="2">Cảm ơn bạn đã đăng ký thành viên trên '.$row_setting["website"].' . </td>
				</tr>
				<td colspan="2">
				<p>Xin vui lòng Xác nhận tài khoản bằng cách bấm vào liên kết sau để kích hoạt tài khoản:</p> 
				<a href="http://'.$config_url.'/index.php?com=kich-hoat-mail&keycode='.$maso.'&email='.$_POST['email'].'">
					<span style="color: #fff;font-size: 18px;padding: 0px 15px;background: blue;line-height: 35px;clear: both;display: inline-block;border-radius: 5px;">
				    KÍCH HOẠT TÀI KHOẢN</span>
				</a></td>
				<tr>
					<th>Email :</th><td>'.$_POST['email'].'</td>
				</tr>
				<tr>
					<th>Mật khẩu : </th><td>'.$_POST['password'].'</td>
				</tr>';
				$body .= '</table>';
				$mail->Body = $body;
			if($mail->Send()){
				if($d->insert($data)){
					#=============================
					transfer("Bạn đã đăng ký thành công <br/> Hãy truy cập email bạn đăng ký để kích hoạt tài khoản", "http://".$config_url."/dang-nhap.html");
				}
				else
					transfer(_luudatafalse, "http://".$config_url."/dang-ky.html");
			}
			else
				transfer("Đăng ký thất bại! vui lòng thử lại!", "http://".$config_url."/dang-ky.html");
			}		
		}	
?>