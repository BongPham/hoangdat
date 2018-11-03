<?php if(!defined('_source')) die("Error");
	include_once 'plugin/dkdn_custom/lang_'.$lang.'.php';
	include_once 'plugin/dkdn_custom/function_dkdn.php';
	$title = $title_cat = _quenmatkhau;
	if(!empty($_POST)){
		$error = true;
		$error2 = true;
		//Kiểm tra các trường không được rỗng
		if(str_notnull(str_security($_POST["captcha"]),_captcha))
			if(str_notnull($email = str_security($email = $_POST["email"]),"Email"))
				$error = true;
			else $error = false;
		else $error = false;
		#===========================================================
		//Kiểm tra tồn tại...
		if($error){
			if($_SESSION["captcha"]==$_POST["captcha"])
				if(!check_email($email))
					$error2 = true;
				else{ 
					//email không đã tồn tại
					$error2 = false;
					alert("Email "._datontai);
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
			//lấy email
			$d->query("select email from #_thanhvien where email='".$email."'");
			$info_tv = $d->fetch_array();
			//mã kích hoạt
			$keycode=ChuoiNgauNhien(10);
			$sql="update #_thanhvien set keycode='$keycode' where email='".$email."'";
			if($d->query($sql)){
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
				$mail->Subject    = "Lấy lại mật khẩu từ website website ".$row_setting["ten_vi"]."  -  ".$row_setting["website"];
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
						<td colspan="2">Bạn hoặc ai đó đã gửi yêu cầu lấy lại mật khẩu của mình tại website '.$row_setting["website"].' . </td>
					</tr>
					<td colspan="2">
					<p>Xin vui lòng Xác nhận quên mật khẩu bằng cách bấm vào liên kết sau để đổi mật khẩu:</p> 
					<a href="http://'.$config_url.'/index.php?com=lay-lai-mat-khau&keycode='.$keycode.'&email='.$info_tv['email'].'">
						<span style="color: #fff;font-size: 18px;padding: 0px 15px;background: blue;line-height: 35px;clear: both;display: inline-block;border-radius: 5px;">
					    ĐỔI MẬT KHẨU</span>
					</a></td>
					';
					$body .= '</table>';
					$mail->Body = $body;
					if($mail->Send()){
						transfer(_guithanhcongkttk, "http://".$config_url."/index.html");
					}else{
						transfer(_luudatafalse, "http://".$config_url."/quen-mat-khau.html",false);
					}
			}else{
				alert(_luudatafalse);
			}
		}
	   
	}	
?>