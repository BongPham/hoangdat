<?php

	$d->reset();
	$sql="select id,ten_$lang,tenkhongdau from #_product_list where hienthi=1 and type='product' order by stt asc ";
	$d->query($sql);
	$ds_phong=$d->result_array();

	$d->reset();
	$sql="select id,ten_$lang from #_baiviet where hienthi=1 and type='quoctich' order by stt asc ";
	$d->query($sql);
	$ds_quoctich=$d->result_array();

	$d->reset();
	$sql="select * from #_setting ";
	$d->query($sql);
	$company_contact=$d->fetch_array();


if(!empty($_POST)){


    $ngayden=$_POST['ngayden'];
    $ngaydi=$_POST['ngaydi'];
    $thoigian=$_POST['thoigian'];
    $sokhach=$_POST['sokhach'];
    $sotreem=$_POST['sotreem'];

    $loaiphong=$_POST['loaiphong'];
    $sophong=$_POST['sophong'];

    $tenbook=$_POST['tenbook'];
    $diachi=$_POST['diachi'];
    $emailbook=$_POST['emailbook'];
    $dienthoaibook=$_POST['dienthoaibook'];
    $fax=$_POST['fax'];
    $quoctich=$_POST['quoctich'];
    $noidung=$_POST['noidung'];

  
   if(isset($_POST))
   {
		include_once "phpMailer/class.phpmailer.php";	
		$mail = new PHPMailer();
		$mail->IsSMTP(); // Gọi đến class xử lý SMTP
		$mail->Host       = $config_ip; // tên SMTP server
		$mail->SMTPAuth   = true;                  // Sử dụng đăng nhập vào account
		$mail->Username   = $config_email; // SMTP account username
		$mail->Password   = $config_pass;  

		//Thiet lap thong tin nguoi gui va email nguoi gui
		$mail->SetFrom($config_email,$row_setting['ten_'.$lang]);
		
		$mail->AddAddress($row_setting['email'],$row_setting['ten_'.$lang]);
		$mail->AddAddress($emailbook, $tenbook);
		
		/*=====================================
		 * THIET LAP NOI DUNG EMAIL
 		*=====================================*/

		//Thiết lập tiêu đề
		$mail->Subject    = '['.$row_setting['ten_'.$lang].']';
		$mail->IsHTML(true);
		//Thiết lập định dạng font chữ
		$mail->CharSet = "utf-8";	
		$body = '<table border="0" width="100%">';
		$body .= '
				<tr>
					<th align="left" colspan="2">
					<table width="100%">
					<tr>
					<td><font size="4">'._thongtinbookingtuwebsite.' <a href="http://www.'.$config_url.'">www.'.$config_url.'</a></font> 
					</td>
					<td align="right";><img src="http://www.'.$config_url.'/'._upload_hinhanh_l.$banner_top[0]['photo'].'" ></td>
					</tr>
					</table>
					
					</th>
				</tr>

				<tr>
					<th width="30%" align="left">'._hoten.':</th>
					<td>&nbsp; '.$_POST['tenbook'].'</td>
				</tr>
				
				<tr>
					<th align="left">Email :</th>
					<td>&nbsp; '.$_POST['emailbook'].'</td>
			    </tr>

				<tr>
					<th align="left">'._dienthoai.':</th>
					<td>&nbsp; '.$_POST['dienthoaibook'].'</td>
			    </tr>

				<tr>
					<th align="left">'._ngayden.':</th>
					<td>&nbsp; '.$_POST['ngayden'].'</td>
			    </tr>

			    <tr>
					<th align="left">'._ngaydi.':</th>
					<td>&nbsp; '.$_POST['ngaydi'].'</td>
			    </tr>

			    <tr>
					<th align="left">'._songuoilon.':</th>
					<td>&nbsp; '.$_POST['sokhach'].'</td>
			    </tr>

			    <tr>
					<th align="left">'._sotreem.':</th>
					<td>&nbsp; '.$_POST['sotreem'].'</td>
			    </tr>

			    <tr>
					<th align="left">'._loaiphong.':</th>
					<td>&nbsp; '.$_POST['loaiphong'].'</td>
			    </tr>

			    <tr>
					<th align="left">'._yeucauthem.':</th>
					<td>&nbsp; '.$_POST['noidung'].'</td>
			    </tr>
				
				<tr>
					<th align="left" colspan="2">&nbsp;</th>
			    </tr>
				';
  
        
			
			
					   $body.='</table></td></tr>';
            }
			else{
				//$body.='<tr bgColor="#FFFFFF"><td>There are no items in your shopping cart!</td>';
			}
       $body.=' </table><span class="cat"></span>
		</td>
  </tr>';
  $body.='
  <tr>
					<th align="left" colspan="2">&nbsp;</th>
			    </tr>
  <tr><td colspan="2" align="left">
              <p><h2>'.$company_contact['ten_'.$lang].'</h2></p>
			  <p>Địa chỉ : '.$company_contact['diachi_'.$lang].'</p>
			  <p>Điện thoại : '.$company_contact['hotline'].'</p>
			  <p>Email : '.$company_contact['email'].'</p>
			  <p>Website : <a href="">'.$company_contact['ten_'.$lang].'</a></p>
			  <p style="font-style:italic;">Vui lòng không trả lời thư này.</p>
              <td> <tr>'; 
			  
			  
  
			$body .= '</table>';
			
			$ngaydangky=time();
			
			$sql = "INSERT INTO  table_booking (ngayden,ngaydi,songuoi,sotreem,ten,email,dienthoai,fax,diachi,loaiphong,quoctich,noidung,ngaytao)  VALUES ('$ngayden','$ngaydi','$sokhach','$sotreem','$tenbook','$emailbook','$dienthoaibook','$fax','$diachi','$loaiphong','$quoctich','$noidung','$ngaydangky')";
			mysql_query($sql);

			$id_order = mysql_insert_id();

			$max=count($_SESSION['cart']);
		
			$mail->Body = $body;
			if($mail->Send())
				transfer("Booking Thành Công ! ", "trang-chu.html");		
			else transfer("Xin lỗi quý khách.<br>Hệ thống bị lỗi, xin quý khách thử lại.", "dat-phong.html",false);
		
}
		$title_bar .= _booking;
?>