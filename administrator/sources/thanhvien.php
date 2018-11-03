<?php	if(!defined('_source')) die("Error");
$act = (isset($_REQUEST['act'])) ? addslashes($_REQUEST['act']) : "";



switch($act){
	case "man":
		get_mails();
		$template = "thanhvien/items";
		break;
	case "add":

		$template = "thanhvien/item_add";
		break;
	
	case "edit":
		get_mail();
		$template = "thanhvien/item_add";
		break;	
		
	case "send":
		send();
		break;
	
	case "save":
		save_mail();
		break;	
	
	case "delete":
		delete();
		break;	

		
	default:
		$template = "index";
}

function get_mails(){
	global $d, $items, $paging,$page;

	$per_page = 20; // Set how many records do you want to display per page.
	$startpoint = ($page * $per_page) - $per_page;
	$limit = ' limit '.$startpoint.','.$per_page;

	$where = " #_thanhvien where id<>0 ";
	if($_GET["keyword"]!=''){
		$key = $_GET["keyword"];
		$where .=" and (hoten like '%$key%' or email like '%$key%' or dienthoai like '%$key%' ) ";
	}
	if($_GET["loaitv"]!=''){
		$loaitv = intval($_GET["loaitv"]);
		$row_loaitv = get_loaitv($loaitv);
		$where .=" and (diemtichluy>=".intval($row_loaitv["giatu"])." and diemtichluy<=".intval($row_loaitv["giaden"]).")";
	}
	
	$where .=" order by id desc";
	$sql = "select * from $where $limit";
	$d->query($sql);
	$items = $d->result_array();

	$url = "index.php?com=thanhvien&act=man";
	$paging = pagination($where,$per_page,$page,$url);

	/*$sql = "select * from #_thanhvien order by id desc";
	$d->query($sql);
	$items = $d->result_array();*/
}

function get_mail(){
	global $d, $item;
	$id = isset($_GET['id']) ? themdau($_GET['id']) : "";
	if(!$id)
		transfer("Không nhận được dữ liệu", "index.php?com=thanhvien&act=man");
	
	$sql = "select * from #_thanhvien where id='".$id."'";
	$d->query($sql);
	if($d->num_rows()==0) transfer("Dữ liệu không có thực", "index.php?com=thanhvien&act=man");
	$item = $d->fetch_array();
}

function save_mail(){
	global $d;
	if(empty($_POST)) transfer("Không nhận được dữ liệu", "index.php?com=thanhvien&act=man");
	$id = isset($_POST['id']) ? themdau($_POST['id']) : "";
	if($id){
		/*$sql="select id,password,email from #_thanhvien where id=".$id;
		$d->query($sql);
		$row = $d->fetch_array();*/
		//
		$sql="select email from #_thanhvien where (email='".$_POST["email"]."' ) and id<>$id ";
		$d->query($sql);
		$row = $d->fetch_array();

		if($row!=null)	transfer("Email Đã Được Đăng Ký", "index.php?com=thanhvien&act=man");

		$data['hoten'] = $_POST['hoten'];
		$data['trangthai'] = isset($_POST['trangthai']) ? 1 : 0;
		$data['email'] = $_POST['email'];
		if($_POST['password']!=''){
			$data['password'] = md5($_POST['password']);	
		}
		$data['diachi'] = $_POST['diachi'];
		$data['ngaysinh'] = $_POST['ngaysinh'];
		$data['dienthoai'] = $_POST['dienthoai'];
		$data['noidung'] = $_POST['noidung'];
		
		

		$d->setTable('thanhvien');
		$d->setWhere('id', $id);
		if($d->update($data))
				redirect("index.php?com=thanhvien&act=man");
		else
			transfer("Cập nhật dữ liệu bị lỗi", "index.php?com=thanhvien&act=man");
	}else{
		$sql="select email from #_thanhvien where email='".$_POST["email"]."' ";
		$d->query($sql);
		$row = $d->fetch_array();
		if($row!=null)	transfer("Email Đã Được Đăng Ký", "index.php?com=thanhvien&act=man");
		if ($_POST["password"]!=$_POST["repassword"]) {
			transfer("Nhập lại mật khẩu", "index.php?com=thanhvien&act=man");
		}
		$data['hoten'] = $_POST['hoten'];
		$data['email'] = $_POST['email'];
		$data['password'] = md5($_POST['password']);
		$data['diachi'] = $_POST['diachi'];
		$data['ngaysinh'] = $_POST['ngaysinh'];
		$data['dienthoai'] = $_POST['dienthoai'];
		$data['noidung'] = $_POST['noidung'];
		$data['stt'] = $_POST['stt'];
		$data['trangthai'] = isset($_POST['trangthai']) ? 1 : 0;
		$data['ngaytao'] = time();

		
		$d->setTable('thanhvien');
		if($d->insert($data))
			redirect("index.php?com=thanhvien&act=man");
		else
			transfer("Lưu dữ liệu bị lỗi", "index.php?com=thanhvien&act=man");
	}
}


function delete(){
	global $d;
	if(isset($_GET['id'])){
		$id =  themdau($_GET['id']);
		$sql = "delete from #_thanhvien where id='".$id."'";
		if($d->query($sql))
			redirect("index.php?com=thanhvien&act=man");
		else
			transfer("Xóa dữ liệu bị lỗi", "index.php?com=thanhvien&act=man");
	}else if (isset($_GET['listid'])==true){
		$listid = explode(",",$_GET['listid']); 
		for ($i=0 ; $i<count($listid) ; $i++){
			$idTin=$listid[$i]; 
			$id =  themdau($idTin);		
			$sql = "delete from #_thanhvien where id='".$id."'";
			if($d->query($sql)){
				transfer("Xóa dữ liệu bị lỗi", "index.php?com=thanhvien&act=man&curPage=".$_REQUEST['curPage']);
			
			}
		}
		redirect("index.php?com=thanhvien&act=man&curPage=".$_REQUEST['curPage']);
	} transfer("Không nhận được dữ liệu", "index.php?com=thanhvien&act=man");
	
		
}


function send(){
	global $d,$config_ip,$config_email,$config_pass;
	$file_name= images_name($_FILES['file']['name']);
	if(empty($_POST)) transfer("Không nhận được dữ liệu", "index.php?com=thanhvien&act=man");
	
	if($file = upload_image("file", 'doc|docx|pdf|rar|zip|ppt|pptx|DOC|DOCX|PDF|RAR|ZIP|PPT|PPTX|xls|jpg|png|gif|JPG|PNG|GIF', _upload_hinhanh,$file_name)){
		$data['file'] = $file;
	}
	$d->setTable('setting');
	$d->select();
	$company_mail = $d->fetch_array();
	
	if(isset($_POST['listid'])){
		include_once "../libraries/phpMailer/class.phpmailer.php";	
		$mail = new PHPMailer();
		$mail->IsSMTP(); // Gọi đến class xử lý SMTP
		$mail->Host       = $config_ip; // tên SMTP server
		$mail->SMTPAuth   = true;                  // Sử dụng đăng nhập vào account
		$mail->Username   = $config_email; // SMTP account username
		$mail->Password   = $config_pass;  

		//Thiet lap thong tin nguoi gui va email nguoi gui
		$mail->SetFrom($config_email,$_POST['ten_vi']);

		$listid = explode(",",$_POST['listid']); 
		for ($i=0 ; $i<count($listid) ; $i++){
			$idTin=$listid[$i]; 
			$id =  themdau($idTin);		
			$d->reset();
			$sql = "select email from #_thanhvien where id='".$id."'";
			$d->query($sql);
			if($d->num_rows()>0){
			while($row = $d->fetch_array()){
			$mail->AddAddress($row['email'], $company_mail['ten_vi']);
			}
			}
		}
		/*=====================================
		 * THIET LAP NOI DUNG EMAIL
 		*=====================================*/

		//Thiết lập tiêu đề
		$mail->Subject    = '['.$_POST['ten_vi'].']';
		$mail->IsHTML(true);
		//Thiết lập định dạng font chữ
		$mail->CharSet = "utf-8";	
		$body = $_POST['noidung_vi'];
		
		$mail->Body = $body;
		if($data['file']){
			$mail->AddAttachment(_upload_hinhanh.$data['file']);
		}
		if($mail->Send())
		transfer("Thông tin đã được gửi đi.", "index.php?com=thanhvien&act=man");
		else
		transfer("Hệ thống bị lỗi, xin thử lại sau.", "index.php?com=thanhvien&act=man");
	
	}
	
}

?>